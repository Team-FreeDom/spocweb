package com.spoc.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spoc.po.Affairs;
import com.spoc.service.Affair_categoryService;
import com.spoc.service.AffairsService;

@Controller("affairsController")
@RequestMapping("/jsp")
public class AffairsController {

	@Autowired
	private AffairsService affairsService;
	@Autowired
	private Affair_categoryService affair_categoryService;
	
	@RequestMapping("/affair.do")
	public String getAffairs(HttpServletRequest request,ModelMap map) throws Exception
	{
		
		String name=request.getParameter("name");
		if(name==null)
		{
			name="΢��Ľ��";
		}else{
		name=new String(name.getBytes("iso8859-1"),"utf-8");
		}
		List<Affairs> list=affairsService.getAffairs(name);
		map.addAttribute("affairs", list);
		map.addAttribute("affair_category",affair_categoryService.getAffairCa());
		return "index";
	}
	
	
}
