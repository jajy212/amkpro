package com.thinkgem.jeesite.modules.cms.web;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
import com.thinkgem.jeesite.modules.cms.service.FileTplService;
import com.thinkgem.jeesite.modules.cms.service.SiteService;

@Controller
public class ManagerAction  extends BaseController{
	
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleDataService articleDataService;
	@Autowired
	private CategoryService categoryService;
    @Autowired
   	private FileTplService fileTplService;
    @Autowired
   	private SiteService siteService;

	
	@RequestMapping("/front/index")
	public String amkindex(ModelMap model){
		List<Category> cateList = categoryService.findAmkCate();
		model.addAttribute("cateList", cateList);
		return "/front/index";
	}
	
	@RequestMapping("/front/about")
	public String about(ModelMap model){
		//Article article = articleService.get("07518be2642d4a5588b7fe50ad272bea");
		//ArticleData articleData = articleDataService.get("07518be2642d4a5588b7fe50ad272bea");
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
		//model.addAttribute("article", article);
		model.put("article", article);
		//model.put("articleData", articleData);
		
		return "/front/about";
	}
	
	@RequestMapping("/front/download")
	public String download(ModelMap model){
		return "/front/download";
	}
	@RequestMapping("/front/downfile")
	public void downfile(@RequestParam(required=false) String param,HttpServletRequest request, HttpServletResponse response) throws Exception{
		if(!"".equals(param)){
			String filepath = Global.getConfig("filepath");
			String newName = Global.getConfig("filename."+param);
			File file = new File(filepath+param);
			FileUtils.downFile(file, request, response,newName);
		}
	}
	
	@RequestMapping("/front/faq")
	public String faq(ModelMap model){
		return "/front/faq";
	}
	
	@RequestMapping("/front/item")
	public String item(ModelMap model,@RequestParam(required=false) String param){
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
		
		
		return "/front/item";
	}
	
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
		
		return "/front/news";
	}
	
	@RequestMapping("/front/detail")
	public String newsdetail(ModelMap model,@RequestParam(required=false) String param){
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
		
		
		return "/front/newsdetail";
	}
	
	
	@RequestMapping("/front/products")
	public String products(ModelMap model,@RequestParam(required=false) String param){
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
		System.out.println("id is "+id);
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
		
		return "/front/products";
	}
	
	@RequestMapping("/front/service")
	public String service(ModelMap model){
		return "/front/service";
	}
}
