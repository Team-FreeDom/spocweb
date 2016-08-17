package com.spoc.action;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javassist.expr.NewArray;

import javax.servlet.http.HttpServletRequest;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spoc.po.College;
import com.spoc.po.Group_manage;
import com.spoc.po.Member;
import com.spoc.po.Member_group;
import com.spoc.po.Member_group_view;
import com.spoc.service.CollegeService;
import com.spoc.service.Group_manageService;
import com.spoc.service.MemberService;
import com.spoc.service.Member_groupService;
import com.spoc.service.Member_group_viewService;

@Controller("memberController")
@RequestMapping("/jsp")
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private CollegeService collegeService;
	@Autowired
	private Group_manageService group_manageService;
	@Autowired
	private Member_group_viewService member_group_viewService;
	@Autowired
	private Member_groupService member_groupService;

	@RequestMapping("/user.do")
	public String displayUsers(HttpServletRequest request, ModelMap map) {
		List<College> colleges = collegeService.getCollege();
		List<Group_manage> groups = group_manageService.getGroup();
		int flag = Integer.parseInt(request.getParameter("flag"));
		if (flag == 2) {
			map.addAttribute("students", memberService.getStudents());
			map.addAttribute("colleges", colleges);
			map.addAttribute("groups", groups);
			map.addAttribute("membergroups",
					member_group_viewService.getMemberGroups());
			return "student";
		} else {
			map.addAttribute("teachers", memberService.getTeachers());
			map.addAttribute("colleges", colleges);
			return "teacher";
		}

	}

	@RequestMapping("/search.do")
	public String searchMember_student(HttpServletRequest request, ModelMap map) {
		String name = request.getParameter("membername");
		List<Member> members = memberService.getMember(name,2);
		map.addAttribute("students", members);

		return "forward:user.do?flag=2";

	}
	
	@RequestMapping("/search1.do")
	public String searchMember_teacher(HttpServletRequest request, ModelMap map) {
		String name = request.getParameter("membername");
		List<Member> members = memberService.getMember(name,1);
		map.addAttribute("teachers", members);

		return "teacher";

	}

	@RequestMapping("/deleteMember.do")
	public String deleteMember(HttpServletRequest request, ModelMap map) {
		String[] check = request.getParameterValues("student");
		memberService.deleteMembers(check);
		return "forward:user.do?flag=2";
	}

	@RequestMapping("/deleteMember1.do")
	public String deleteMember1(HttpServletRequest request, ModelMap map) {
		String[] check = request.getParameterValues("teacher");
		memberService.deleteMembers(check);
		return "forward:user.do?flag=1";
	}
	
	@RequestMapping("/detail.do")
	public String memberDetail(HttpServletRequest request, ModelMap map) {
		String loginid = request.getParameter("id");
		int flag=Integer.valueOf(request.getParameter("flag"));
		Member member = memberService.getUniqueMember(loginid);
		if(flag==2)
		{
		String group = member_group_viewService.getMemberGroup(loginid);
		map.addAttribute("member", member);
		map.addAttribute("group", group);
		return "detailMemberStu";
		}else{
			map.addAttribute("member", member);
			return "detailMemberT";
		}
	}

	@RequestMapping(value = "/add.do", method = RequestMethod.POST)
	public String addMember(HttpServletRequest request, ModelMap map)
			throws Exception {
		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 得到上传的文件
		MultipartFile mFile = multipartRequest.getFile("imgOne");
		// 得到上传服务器的路径
		String path = request.getSession().getServletContext()
				.getRealPath("/infor/selfie/");
		// 得到上传的文件的文件名
		String fileName = mFile.getOriginalFilename();
		System.out.println(fileName);
		String fileType = fileName.substring(fileName.lastIndexOf("."));
		String filename = new Date().getTime() + fileType;
		InputStream inputStream = mFile.getInputStream();
		byte[] b = new byte[1048576];
		int length = inputStream.read(b);
		path += "\\" + filename;
		// 文件流写到服务器端
		FileOutputStream outputStream = new FileOutputStream(path);
		outputStream.write(b, 0, length);
		inputStream.close();
		outputStream.close();
		filename = "../infor/selfie/" + filename;

		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		int sexValue = Integer.parseInt(sex);
		sex = sexValue == 1 ? "男" : "女";
		String birth_date = request.getParameter("birth_date");
		String major = request.getParameter("major");
		String grade = request.getParameter("grade");
		String qq = request.getParameter("qq");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String introduction = request.getParameter("introduction");
		String job = request.getParameter("job");
		String college = request.getParameter("college");
		String[] group = request.getParameterValues("group");
		String pwd = request.getParameter("pwd");
		String loginid = request.getParameter("loginid");
		int admin=Integer.valueOf(request.getParameter("admin"));
		Member member = new Member(loginid, pwd, name, sex, filename,
				birth_date, college, grade, major, qq, phone, address,
				introduction, job, 2, admin);
		memberService.addMember(member);
		member_groupService.addMemberGroup(group, loginid);
		return "forward:user.do?flag=2";
	}

	@RequestMapping(value = "/add1.do", method = RequestMethod.POST)
	public String addMemberT(HttpServletRequest request, ModelMap map)
			throws Exception {
		
		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径

				MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
				// 得到上传的文件
				MultipartFile mFile = multipartRequest.getFile("imgOne");
				// 得到上传服务器的路径
				String path = request.getSession().getServletContext()
						.getRealPath("/infor/selfie/");
				// 得到上传的文件的文件名
				String fileName = mFile.getOriginalFilename();
				System.out.println(fileName);
				String fileType = fileName.substring(fileName.lastIndexOf("."));
				String filename = new Date().getTime() + fileType;
				InputStream inputStream = mFile.getInputStream();
				byte[] b = new byte[1048576];
				int length = inputStream.read(b);
				path += "\\" + filename;
				// 文件流写到服务器端
				FileOutputStream outputStream = new FileOutputStream(path);
				outputStream.write(b, 0, length);
				inputStream.close();
				outputStream.close();
				filename = "../infor/selfie/" + filename;

				String name = request.getParameter("name");
				String sex = request.getParameter("sex");
				int sexValue = Integer.parseInt(sex);
				sex = sexValue == 1 ? "��" : "Ů";
				String birth_date = request.getParameter("birth_date");	
				String qq = request.getParameter("qq");
				String phone = request.getParameter("phone");
				String address = request.getParameter("address");
				String job = request.getParameter("job");
				String college = request.getParameter("college");
				String pwd = request.getParameter("pwd");
				String loginid = request.getParameter("loginid");
				int admin=Integer.valueOf(request.getParameter("admin"));
				Member member=new Member(loginid, pwd, name, sex, filename,
						birth_date, college,  qq, phone, address,
						 job, 1, admin);
				memberService.addMember(member);
				return "forward:user.do?flag=1";
	}
	
	
	@RequestMapping(value = "/updateT.do", method = RequestMethod.POST)
	public String updateMemberT(HttpServletRequest request, ModelMap map)
			throws Exception {
		Member member=null;
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		int sexValue = Integer.parseInt(sex);
		sex = sexValue == 1 ? "��" : "Ů";
		String birth_date = request.getParameter("birth_date");	
		String qq = request.getParameter("qq");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String job = request.getParameter("job");
		String college = request.getParameter("college");
		String pwd = request.getParameter("pwd");
		String loginid = request.getParameter("loginid");
		int admin=Integer.valueOf(request.getParameter("admin"));
		//String file=request.getParameter("imgOne");
		
		
		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径      
        
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 得到上传的文件
		MultipartFile mFile = multipartRequest.getFile("imgOne");
		// 得到上传服务器的路径
		String path = request.getSession().getServletContext()
				.getRealPath("/infor/selfie/");
		// 得到上传的文件的文件名
		String fileName = mFile.getOriginalFilename();
		System.out.println(fileName);
		 if(!fileName.isEmpty())
		  {
			 
		String fileType = fileName.substring(fileName.lastIndexOf("."));
		String filename = new Date().getTime() + fileType;
		InputStream inputStream = mFile.getInputStream();
		byte[] b = new byte[1048576];
		int length = inputStream.read(b);
		path += "\\" + filename;
		// 文件流写到服务器端
		FileOutputStream outputStream = new FileOutputStream(path);
		outputStream.write(b, 0, length);
		inputStream.close();
		outputStream.close();
		filename = "../infor/selfie/" + filename;
		
		 member=new Member(loginid, pwd, name, sex, filename,
				birth_date, college,  qq, phone, address,
				 job, 1, admin);
		 memberService.updateMember(member);
	  }else
	  {
		  System.out.println(pwd);
		   member=new Member(loginid, pwd, name, sex,
					birth_date, college,  qq, phone, address,
					 job, 1, admin);
		   memberService.updateMember2(member);
	  }

		
		
		return "forward:user.do?flag=1";
	}
	
	@RequestMapping(value = "/updateStu.do", method = RequestMethod.POST)
	
	public String updateMemberStu(HttpServletRequest request, ModelMap map)
			throws Exception {
		Member member=null;
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		int sexValue = Integer.parseInt(sex);
		sex = sexValue ==  1 ? "男" : "女";
		String birth_date = request.getParameter("birth_date");
		String major = request.getParameter("major");
		String grade = request.getParameter("grade");
		String qq = request.getParameter("qq");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String introduction = request.getParameter("introduction");
		String job = request.getParameter("job");
		String college = request.getParameter("college");
		String[] group = request.getParameterValues("group");
		String pwd = request.getParameter("pwd");
		String loginid = request.getParameter("loginid");
		int admin=Integer.valueOf(request.getParameter("admin"));
		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 得到上传的文件
		MultipartFile mFile = multipartRequest.getFile("imgOne");
		System.out.println(mFile);
		// 得到上传服务器的路径
		String path = request.getSession().getServletContext()
				.getRealPath("/infor/selfie/");
		// 得到上传的文件的文件名
		String fileName = mFile.getOriginalFilename();
		System.out.println(fileName);
		
		 if(!fileName.isEmpty())
		  {
		String fileType = fileName.substring(fileName.lastIndexOf("."));
		String filename = new Date().getTime() + fileType;
		InputStream inputStream = mFile.getInputStream();
		byte[] b = new byte[1048576];
		int length = inputStream.read(b);
		path += "\\" + filename;
		// 文件流写到服务器端
		FileOutputStream outputStream = new FileOutputStream(path);
		outputStream.write(b, 0, length);
		inputStream.close();
		outputStream.close();
		filename = "../infor/selfie/" + filename;

		
		 member = new Member(loginid, pwd, name, sex, filename,
				birth_date, college, grade, major, qq, phone, address,
				introduction, job, 2, admin);
		 memberService.updateMember(member);
		  }else
		  {
			member=new Member(loginid, pwd, name, sex,
					birth_date, college, grade, major, qq, phone, address,
					introduction, job, 2, admin);  
			 memberService.updateMember2(member);
		  }
		 
		
		 member_groupService.updateMemberGroup(group, loginid);
		
		return "admin";
	}

}
