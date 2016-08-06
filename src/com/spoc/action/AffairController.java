package com.spoc.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spoc.po.Affair;
import com.spoc.po.Affair_category;
import com.spoc.service.AffairService;
import com.spoc.service.Affair_categoryService;

@Controller("affairController")
@RequestMapping("/jsp")
public class AffairController {

	@Autowired
	private Affair_categoryService affair_categoryService;
	@Autowired
	private AffairService affairService;
	
	@RequestMapping("/dealAT.do") //转向业务类型管理页面
	public String dealAffairType(HttpServletRequest request, ModelMap map)
	{
		map.addAttribute("affairtypes", affair_categoryService.getAffairCa());
		return "dealAffairType";
	}
	
	@RequestMapping("/searchType.do") //转向业务类型管理页面
	public String searchType(HttpServletRequest request, ModelMap map)
	{
		String affairtype=request.getParameter("affairtype");
		List<Affair_category> list=new ArrayList<Affair_category>();
		Affair_category ac=affair_categoryService.getAffairType(affairtype);
		list.add(ac);
		map.addAttribute("affairtypes",list );
		return "dealAffairType";
	}
	
	@RequestMapping("/addType.do") //转向业务类型管理页面
	public String addType(HttpServletRequest request, ModelMap map)
	{
		String name=request.getParameter("name");
		int flag=Integer.valueOf(request.getParameter("flag"));
		
		affair_categoryService.doAffairType(name, flag);
		return "forward:dealAT.do";
	}
	
	@RequestMapping("/deleteType.do") //转向业务类型管理页面
	public String deleteType(HttpServletRequest request, ModelMap map)
	{
		String[] check = request.getParameterValues("type");
		affair_categoryService.deleteType(check);
		return "forward:dealAT.do";
	}
	
	@RequestMapping("/updateType.do") //转向业务类型管理页面
	public String updateType(HttpServletRequest request, ModelMap map)
	{
		int acid=Integer.valueOf(request.getParameter("acid"));
		String name=request.getParameter("typeName");
		int flag=Integer.valueOf(request.getParameter("flag"));
		Affair_category ac=new Affair_category(acid,name,flag);
		affair_categoryService.updateType(ac);
		return "forward:dealAT.do";
	}
	
	@RequestMapping("/applyAffair.do")
	public String applyAffair(HttpServletRequest request, ModelMap map)
	{
		List<Affair> list=affairService.getAffairs();
		map.addAttribute("affairs", list);
		return "applyAffair";
		
	}
}
