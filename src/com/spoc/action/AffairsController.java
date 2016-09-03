package com.spoc.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spoc.po.Group_manage;
import com.spoc.po.Honor;
import com.spoc.po.product;
import com.spoc.service.productservice;
import com.spoc.po.Affairs;
import com.spoc.service.Affair_categoryService;
import com.spoc.service.AffairsService;
import com.spoc.service.Group_manageService;
import com.spoc.service.HonorService;
import com.spoc.service.productservice;
import com.spoc.po.product;

@Controller("affairsController")
@RequestMapping("/jsp")
public class AffairsController {

	@Autowired
	private AffairsService affairsService;
	@Autowired
	private Affair_categoryService affair_categoryService;
        @Autowired
	private HonorService honorService;
    @Autowired
    private productservice proservice;
    @Autowired
    private Group_manageService group_manageService;
	
	@RequestMapping("/affair.do")
	public String getAffairs(HttpServletRequest request,ModelMap map) throws Exception
	{
                List<Honor> honor=honorService.getHonor();
                HttpSession session = request.getSession();
	        session.setAttribute("gethonor", honor);
		map.addAttribute("gethonor", honor);
		
		String name=request.getParameter("name");
		if(name==null)
		{
			name="微课慕课";
		}else{
		name=new String(name.getBytes("iso8859-1"),"utf-8");
		}
		List<Affairs> list=affairsService.getAffairs(name);
		List<product> products=proservice.getpath();
		List<Group_manage> gm=group_manageService.getGroup();
		map.addAttribute("groups", gm);
		map.addAttribute("product", products);
		map.addAttribute("affairs", list);
		map.addAttribute("affair_category",affair_categoryService.getAffairCa());
		return "index";
	}
	
	
}
