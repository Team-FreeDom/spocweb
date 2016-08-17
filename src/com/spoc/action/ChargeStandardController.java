package com.spoc.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spoc.po.Charge_Standard;
import com.spoc.po.Type_category;
import com.spoc.service.Affair_categoryService;
import com.spoc.service.ChargeStandardService;
import com.spoc.service.TypeCategoryService;

@Controller("chargeStandardController")
@RequestMapping("/jsp")
public class ChargeStandardController {

	@Autowired
	private ChargeStandardService chargeStandardService;
	@Autowired
	private Affair_categoryService affair_categoryService;
	@Autowired
	private TypeCategoryService typeCategoryService;
	
	@RequestMapping("/chargeStandard.do")  //ת��chargeStandard.jsp��׼������
	public String chargeStandard(HttpServletRequest request, ModelMap map)
	{
		List<Charge_Standard> list=chargeStandardService.getTypes();
		map.addAttribute("chargeStandards", list);
		map.addAttribute("typeCategorys", typeCategoryService.getTypes());
		map.addAttribute("affairCategorys", affair_categoryService.getAffairCa());
		return "chargeStandard";
	}
	
	@RequestMapping("/addChargeStandard.do") //����һ���շѱ�׼
	public String addChargeStandard(HttpServletRequest request, ModelMap map)
	{
		int acid=Integer.valueOf(request.getParameter("affair"));
		int tcid=Integer.valueOf(request.getParameter("type"));
		String basic=request.getParameter("basic");
		String advance=request.getParameter("advance");
		String careless=request.getParameter("careless");
		Charge_Standard cs=new Charge_Standard(basic,advance,careless,acid,tcid);
		chargeStandardService.addChargeStandard(cs);
		return "forward:chargeStandard.do";
	}
	
	@RequestMapping("/deleteChargeStandard.do") //ɾ������Ա��ѡ�����Ӧ���շѼ�¼
	public String deleteChargeStandard(HttpServletRequest request)
	{
		String[] check=request.getParameterValues("type");
		chargeStandardService.deleteChargeStandard(check);
		return "forward:chargeStandard.do";
	}
	
	@RequestMapping("/updateChargeStandard.do")
	public String updateChargeStandard(HttpServletRequest request)
	{
		int csid=Integer.valueOf(request.getParameter("csid"));
		int acid=Integer.valueOf(request.getParameter("affair"));
		int tcid=Integer.valueOf(request.getParameter("type"));
		String basic=request.getParameter("basic");
		String advance=request.getParameter("advance");
		String careless=request.getParameter("careless");
		Charge_Standard cs=new Charge_Standard(csid,basic,advance,careless,acid,tcid);
		chargeStandardService.update(cs);
		return "forward:chargeStandard.do";
	}
}
