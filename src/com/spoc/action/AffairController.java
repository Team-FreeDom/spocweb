package com.spoc.action;
import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spoc.po.Affair;
import com.spoc.po.Affair_category;
import com.spoc.service.AffairService;
import com.spoc.service.Charge_categoryService;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spoc.po.Affair;
import com.spoc.po.Affair_category;
import com.spoc.service.AffairService;
import com.spoc.service.Affair_categoryService;



@Controller("AffairControlle")
@RequestMapping("/jsp")
public class AffairController
{
	@Autowired
	 private AffairService affairService;
	@Autowired
	private Charge_categoryService charge_categoyService ;
	@SuppressWarnings("unused")
	private ServletContext servletContext;
	@Autowired
	private Affair_categoryService affair_categoryService;
	@RequestMapping("/lianxi.do")
	public String userAffair(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String content=request.getParameter("content");
		String type[]=request.getParameterValues("news");
		String str="";
		if(type!=null)
		{
			for(int i=0;i<type.length;i++)
			{
				str+=type[i]+" ";	
			}
		}
		Affair affair=new Affair(name,phone,content,str);
		affairService.add(affair);
		return "index";
	}
	@RequestMapping("/lianxijsp.do")
	public ModelAndView getInfo(ModelMap map) 
	{
		List<Affair_category> Charge=charge_categoyService.getCharge();
		
		map.addAttribute("Charge", Charge);
		return new ModelAndView("affair");
	}
	public void setServletContext(ServletContext context) {
		this.servletContext  = context;
	}
	
	@RequestMapping(value="/upload.do", method = RequestMethod.POST)
	public String handleUploadData(String name,@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request)
	{
		if (!file.isEmpty()) {
			   String path = request.getServletContext().getRealPath("/")+"test";  //获取WebRoot/test存储路径
			   System.out.println(path);
			   String fileName = file.getOriginalFilename();
			   String fileType = fileName.substring(fileName.lastIndexOf("."));
			   //System.out.println(fileType); 
			   File file2 = new File(path,new Date().getTime() + fileType); //新建一个文件
			   try {
				    file.getFileItem().write(file2); //将上传的文件写入新建的文件中
			   } 
			   catch (Exception e) 
			   {
				    e.printStackTrace();
			   }
			   return "lianxijsp.do";
			}
		   else
			{
				return "redirect:upload_error.jsp";
			}
	}
	@RequestMapping("/dealAT.do") 
	public String dealAffairType(HttpServletRequest request, ModelMap map)
	{
		map.addAttribute("affairtypes", affair_categoryService.getAffairCa());
		return "dealAffairType";
	}
	
	@RequestMapping("/searchType.do")
	public String searchType(HttpServletRequest request, ModelMap map)
	{
		String affairtype=request.getParameter("affairtype");
		List<Affair_category> list=new ArrayList<Affair_category>();
		Affair_category ac=affair_categoryService.getAffairType(affairtype);
		list.add(ac);
		map.addAttribute("affairtypes",list );
		return "dealAffairType";
	}
	
	@RequestMapping("/addType.do")
	public String addType(HttpServletRequest request, ModelMap map)
	{
		String name=request.getParameter("name");
		int flag=Integer.valueOf(request.getParameter("flag"));
		
		affair_categoryService.doAffairType(name, flag);
		return "forward:dealAT.do";
	}
	
	@RequestMapping("/deleteType.do") 
	public String deleteType(HttpServletRequest request, ModelMap map)
	{
		String[] check = request.getParameterValues("type");
		affair_categoryService.deleteType(check);
		return "forward:dealAT.do";
	}
	
	@RequestMapping("/updateType.do") 
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
		int flag=Integer.valueOf(request.getParameter("flag"));
		map.addAttribute("affairs", list);
		if(flag==0)
		{
		return "applyAffair";
		}else
		{
			return "affairHistory";
		}
		
	}
	
	@RequestMapping("/read.do")
	public String read(HttpServletRequest request, ModelMap map)
	{
		HttpSession session=request.getSession();
		session.setAttribute("user", "ffff");//假设有用户登录，并存在此session对象
		int aff_id=Integer.valueOf(request.getParameter("aff_id"));
		String loginid=(String) session.getAttribute("user");
		affairService.updateAffair(aff_id, loginid);
		return "forward:applyAffair.do?flag=0";
	}
	
	
	@RequestMapping("/deleteAffair.do")
	public String deleteAffair(HttpServletRequest request, ModelMap map)
	{
		String[] check = request.getParameterValues("affair");
		affairService.deleteAffair(check);
		return "forward:applyAffair.do?flag=1";
	}
}
