package com.thinkgem.jeesite.modules.cms.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.FileUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Article;
import com.thinkgem.jeesite.modules.cms.entity.ArticleData;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.service.ArticleDataService;
import com.thinkgem.jeesite.modules.cms.service.ArticleService;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;

@Controller
public class ManagerAction  extends BaseController{
	
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleDataService articleDataService;
	@Autowired
	private CategoryService categoryService;
    
    private String getCookieLocale(HttpServletRequest request){
    	
    	String langType = "zh_CN";
    	Cookie[] cookies = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			if("locale".equals(cookies[i].getName())){
				langType = cookies[i].getValue();
				break;
			}
		}
		return langType;
    }

	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/index")
	public String amkindex(ModelMap model,Article article,HttpServletRequest request, HttpServletResponse response, @RequestParam(value="locale", defaultValue="zh_CN") String langType ){
		
		if(langType.equals("en")){
            Locale locale = new Locale("en","locale"); 
            (new CookieLocaleResolver()).setLocale (request, response, locale);
        }else{
        	Locale locale = new Locale("zh", "CN","locale"); 
            (new CookieLocaleResolver()).setLocale (request, response, locale);
        }
		 //从后台代码获取国际化信息
       // RequestContext requestContext = new RequestContext(request);
       // model.addAttribute("money", requestContext.getMessage("money"));
       // model.addAttribute("date", requestContext.getMessage("date"));
		
		
		List<Category> cateList = categoryService.findAmkCate();//查询目录
		String id = "";
		//匹配参数对应的id
		for(Category e : cateList){
			if(StringUtils.isNotEmpty(e.getKeywords()) && "index".equals(e.getKeywords())){
				id = e.getId();
				break;
			}
		}
		List<Article> list = articleService.findByCateId(id);
		model.addAttribute("list",list);
		model.put("langType", langType);
		return "/front/index";
	}
	
	/**
	 * 产品
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/products")
	public String products(ModelMap model,@RequestParam(required=false) String param,HttpServletRequest request){
		List<Category> cateList = categoryService.findAmkCate();//查询目录
		String id = "";
		//匹配参数对应的id
		for(Category e : cateList){
			if(StringUtils.isNotEmpty(e.getKeywords()) && e.getKeywords().equals(param)){
				id = e.getId();
				break;
			}
		}
		//找不到对应的类别，直接返回空页面
		if("".equals(id)){
			return "/front/products";
		}
		String menuName = Global.getConfig("menuname."+param);
		
		List<Article> articleList = articleService.findByCateId(id);//查找同一类别下的文章
		List<List<Article>> allList = new ArrayList<List<Article>>();
		List<Article> list = null;
		
		for(int i=0;i<articleList.size();i++){
			if(i==0 || i%2 ==0){
				list = new ArrayList<Article>();
				allList.add(list);
			}
			Article a = articleList.get(i);
			list.add(a);
		}
		//ArticleData articleData = articleDataService.get();
		model.put("article", allList);
		//model.put("articleData", articleData);
		model.put("menuName", menuName);
		model.put("langType", getCookieLocale(request));
		return "/front/products";
	}
	
	/**
	 * 产品详情
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/item")
	public String item(ModelMap model,@RequestParam(required=false) String param,HttpServletRequest request){
		System.out.println("article id is =="+param);
		if(StringUtils.isNotBlank(param)){
			Article article = articleService.get(param);
			ArticleData articleData = articleDataService.get(param);
			model.addAttribute("article", article);
			for(String img :article.getImageArr()){
				System.out.println(img);
			}
			model.addAttribute("articleData", articleData);
		}
		model.put("langType", getCookieLocale(request));
		return "/front/item";
	}
	
	/**
	 * 解决方案
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/service")
	public String service(ModelMap model,HttpServletRequest request){
		return "/front/service";
	}
	
	
	/**
	 * 资料下载页面
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/download")
	public String download(ModelMap model,HttpServletRequest request){
		List<Category> cateList = categoryService.findAmkCate();//查询目录
		String id = "";
		//匹配参数对应的id
		for(Category e : cateList){
			if(StringUtils.isNotEmpty(e.getKeywords()) && "download".equals(e.getKeywords())){
				id = e.getId();
				break;
			}
		}
		List<Article> list = articleService.findByCateId(id);
		model.put("list", list);
		model.put("langType", getCookieLocale(request));
		return "/front/download";
	}
	/**
	 * 文件下载
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/downfile")
	public void downfile(@RequestParam(required=false) String param,HttpServletRequest request, HttpServletResponse response) throws Exception{
		if(!"".equals(param)){
			String filepath = Global.getConfig("filepath");
			String newName = Global.getConfig("filename."+param);
			File file = new File(filepath+param);
			if(!"".equals(newName)){
				FileUtils.downFile(file, request, response,newName);
			}else{
				FileUtils.downFile(file, request, response);
			}
		}
	}
	/**
	 * 技术支持
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/faq")
	public String faq(ModelMap model,HttpServletRequest request){
		model.put("langType", getCookieLocale(request));
		return "/front/faq";
	}

	/**
	 * 新闻动态
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/news")
	public String news(Article article, HttpServletRequest request, HttpServletResponse response, ModelMap model){
		//Article article = new Article();
		Category category = new Category();
		List<Category> cateList = categoryService.findAmkCate();//查询目录
		String id = "";
		//匹配参数对应的id
		for(Category e : cateList){
			if(StringUtils.isNotEmpty(e.getKeywords()) && "news".equals(e.getKeywords())){
				id = e.getId();
				break;
			}
		}
		category.setId(id);
		article.setCategory(category);
		Page<Article> page = articleService.findPage(new Page<Article>(request,response), article);
		
		//List<Article> articleList = articleService.findByCateId(id);//查找同一类别下的文章
		model.addAttribute("page", page);
		model.put("langType", getCookieLocale(request));
		return "/front/news";
	}
	/**
	 * 新闻详情
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/detail")
	public String newsdetail(ModelMap model,@RequestParam(required=false) String param,HttpServletRequest request){
		System.out.println("article id is =="+param);
		if(StringUtils.isNotBlank(param)){
			Article article = articleService.get(param);
			ArticleData articleData = articleDataService.get(param);
			model.addAttribute("article", article);
			for(String img :article.getImageArr()){
				System.out.println(img);
			}
			model.addAttribute("articleData", articleData);
		}
		model.put("langType", getCookieLocale(request));
		return "/front/newsdetail";
	}
	
	/**
	 * 关于我们
	 * @param model
	 * @return
	 */
	@RequestMapping("/front/about")
	public String about(ModelMap model,HttpServletRequest request){
		Article article = new Article();
		List<Category> cateList = categoryService.findAmkCate();//查询目录
		String id = "";
		//匹配参数对应的id
		for(Category e : cateList){
			if(StringUtils.isNotEmpty(e.getKeywords()) && "about".equals(e.getKeywords())){
				id = e.getId();
				break;
			}
		}
		List<Article> articleList = articleService.findByCateId(id);//查找同一类别下的文章
		if(articleList.size() > 0){
			article = articleList.get(0);
		}
		model.put("article", article);
		model.put("articleData", articleDataService.get(article.getId()));
		model.put("langType", getCookieLocale(request));
		return "/front/about";
	}
	
}
