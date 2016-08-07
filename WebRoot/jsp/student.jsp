<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>管理员界面</title>
<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet">
<link href="../css/admin1.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<SCRIPT language=javascript>
	function expand(el) {
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none') {
			childObj.style.display = 'block';
		} else {
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</head>

<body>
	<div class="container-fluid">
		<div class="container">

			<div class="row bg">
				<div class="col-md-2 col-xs-3 text-while">思博课网站管理</div>
				<div class="col-md-7 col-xs-6 text-while">
					<!-- <a style="color: #fff" href="" target=main>修改口令</a>
             &nbsp;&nbsp;  -->
					<a style="color: #fff"
						onclick="if (confirm('确定要退出吗？')) return true; else return false;"
						href="../main.htm" target=_top>退出系统</a>
				</div>
				<div class="col-md-3 col-xs-3 bg2"></div>
			</div>

			<div class="row">
				<div class="col-md-2 col-xs-2">
					<table class=" table admin_table_1">
						<tr>
							<td valign=top align=middle>
								<table cellspacing=0 cellpadding=0 width="100%" border=0>
									<tr>
										<td height=10></td>
									</tr>
								</table>

								<table class="admin_table">

									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(1) href="javascript:void(0);">成员管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>

								<table id=child1 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>

										<td><a class=menuchild href="user.do?flag=1" target=main>老师管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="user.do?flag=2"
											target="main">学生管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>


								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent href="../list.html" target="main">荣誉管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>

								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent href="../list2.html" target="main">作品管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>

								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(4) href="javascript:void(0);">业务管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
								<table id=child4 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="applyAffair.do?flag=0" target=main>业务申请管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="applyAffair.do?flag=1" target=main>业务处理管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="dealAT.do" target=main>业务类型管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>
								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(5) href="javascript:void(0);">报名管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
								<table id=child5 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="#" target=main>报名申请管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="#" target=main>报名处理管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>

							</td>
						</tr>
					</table>
				</div>
				<div class="col-md-10 col-xs-10">

					<div class=" row text-right" style="margin-top:10px;">
						<div class="col-md-12 col-xs-12">
							<form action="search.do" method="post" class="form-inline">
								<div class="form-group">
									<label for="exampleInputName2">用户搜索</label> <input type="text"
										name="membername" class="form-control" id="exampleInputName2"
										placeholder="姓名">
								</div>
								<input type="submit" name="submit" class="btn btn-default" />
							</form>
						</div>
					</div>

					<div class="row admin_black admin_spacing">
						<div class="col-md-2 col-xs-5">管理人员基本信息表</div>
						<div class="col-md-7 hidden-xs"></div>
						<div class="col-md-3 col-xs-7">
							<span> <a class="add" href="#"> <img
									src="../image/add.gif" width="10" height="10" /> 添加
							</a> &nbsp; <a href="javascript:deleteMember()"> <img
									src="../image/del.gif" width="10" height="10" /> 删除
							</a> &nbsp;&nbsp;

							</span>

						</div>
					</div>
					<div id="tableBox">
						<div class="admin_roll">
							<form action="deleteMember.do" method="post" name="myform"
								id="myform">
								<table class="table" id="tabBox">
									<tr>
										<td></td>
										<td>姓名</td>
										<td>性别</td>
										<td>院系</td>
										<td>年级</td>
										<td colspan="2">基本操作</td>
									</tr>
									<c:forEach items='${students}' var="student">
										<tr>
											<td><label><input type="checkbox" name="student"
													value="${student.loginid}" id="student" class="ck" /></label></td>

											<td>${student.name}</td>
											<td>${student.sex}</td>
											<td>${student.college}</td>
											<td>${student.grade}</td>
											<td colspan="2"><a
												href="detail.do?id=${student.loginid}&flag=2">查看详情</a> <a
												class="edit" id=${student.loginid
												}
												style="margin-left:20px;" data-toggle="modal"
												data-target=".bs-example-modal-lg" href="#"> <img
													src="../image/edit.gif" width="10" height="10" /> 编辑
											</a></td>
										</tr>
									</c:forEach>
								</table>
							</form>
						</div>
						<div class="text-right" style="margin-right:60px;">
							<label><input type="checkbox" name="0" class="ck-all" />全选</label>
							<label><input type="checkbox" name="0" class="ck-re" />反选</label>
						</div>
					</div>

					<!--add-section-start  -->

					<div class="modal-content text-center admin_hide" id="addMember">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								onclick="fun(this)">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">添加成员</h4>
						</div>
						<form action="add.do" method="post" enctype="multipart/form-data"
							name="myForm2" id="myForm2">
							<div class="container table-responsive">
								<table>
									<tr style="padding-top:20px;">
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">登录名</label></td>
										<td style="text-align:left;"><input type="text"
											name="loginid" class="form-control" id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">密码</label></td>
										<td style="text-align:left;"><input type="text"
											name="pwd" class="form-control" id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">管理员</label></td>
										<td style="text-align:left;"><input name="admin"
											value="1" type="radio"> <label for="q2_1">是</label> <input
											name="admin" value="2" type="radio" checked="checked">
											<label for="q2_2">否</label></td>


									</tr>

									<tr style="margin-top:20px;">
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">姓名</label></td>
										<td style="text-align:left;"><input type="text"
											name="name" class="form-control" id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">性别</label></td>
										<td style="text-align:left;"><input name="sex" value="1"
											type="radio" checked="checked"> <label for="q2_1">男</label>
											<input name="sex" value="2" type="radio"> <label
											for="q2_2">女</label></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">出生日期</label></td>
										<td style="text-align:left;"><input type="text"
											name="birth_date" class="form-control" id="exampleInputName2"></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">学院</label></td>
										<td style="text-align:left;"><select name="college"
											style="width:195px;">
												<option>请选择</option>
												<c:forEach items='${colleges}' var="college">
													<option values="${college.name }">${college.name }</option>
												</c:forEach>
										</select></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">年级</label></td>
										<td style="text-align:left;"><input type="text"
											name="grade" class="form-control" id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">专业</label></td>
										<td style="text-align:left;"><input type="text"
											name="major" class="form-control" id="exampleInputName2"></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">QQ</label></td>
										<td style="text-align:left;"><input type="text" name="qq"
											class="form-control" id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">电话</label></td>
										<td style="text-align:left;"><input type="text"
											name="phone" class="form-control" id="exampleInputName2"></td>
										<td colspan="2"></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">组别</label></td>
										<td clospan="5"><c:forEach items='${groups}' var="group">
												<label class="checkbox-inline"> <input
													value="${group.gid}" type="checkbox" name="group"
													id="inlineCheckbox1" value="option1" /> <label>${group.name}
												</label>
												</label>
											</c:forEach></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">就业</label></td>
										<td colspan="5"><textarea type="text"
												class="form-control" name="job" id="exampleInputName2"
												style="width:650px;"></textarea></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">地址</label></td>
										<td colspan="5"><textarea type="text"
												class="form-control" name="address" id="exampleInputName2"
												style="width:650px;"></textarea></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">介绍</label></td>
										<td colspan="5"><textarea type="text" rows="3"
												class="form-control" name="introduction"
												id="exampleInputName2" style="width:650px;"></textarea></td>
									</tr>
								</table>
							</div>

							<center>
								<table style="color:#000; margin-top:10px;">
									<tr>
										<td>照片</td>
										<td><img id="imgPre" src="" width="100px" height="120px"
											style="display: block;" /> <input type="file" name="imgOne"
											id="imgOne" onchange="preImg(this.id,'imgPre');" /></td>
									</tr>
									
								</table>
							</center>
						</form>
						<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal"
							onclick="add()">添加</button>
					</div>
					</div>
					
				

				<!--add-section-end  -->

				<!--edit-section-start  -->

				<c:forEach items='${students}' var="student">
					<div class="modal-content text-center admin_hide"
						id="${student.loginid}ta">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								id="${student.loginid}t"">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">编辑成员信息</h4>
						</div>
						<form action="updateStu.do" method="post" enctype="multipart/form-data"
							name="myForm2" id="myForm${student.loginid}">
							<div class="container table-responsive">
								<table>
									<tr style="padding-top:20px;">
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">登录名</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.loginid}" name="loginid"
											class="form-control" id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">密码</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.password}" name="pwd" class="form-control"
											id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">管理员</label></td>
										<td style="text-align:left;"><input name="admin"
											value="1" type="radio" ${student.adminid==1?"checked" : ""} />
											<label for="q2_1">是</label> <input name="admin" value="2"
											type="radio" ${student.adminid==2?"checked" : ""} /> <label
											for="q2_2">否</label></td>
									</tr>

									<tr style="margin-top:20px;">
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">姓名</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.name}" name="name" class="form-control"
											id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">性别</label></td>
										<td style="text-align:left;"><input name="sex" value="1"
											${student.sex=="男"?"checked" : ""} type="radio"> <label
											for="q2_1">男</label> <input name="sex" value="2"
											${student.sex=="女"?"checked" : ""} type="radio"> <label
											for="q2_2">女</label></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">出生日期</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.date}" name="birth_date"
											class="form-control" id="exampleInputName2"></td>

									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">学院</label></td>
										<td style="text-align:left;"><select name="college"
											style="width:195px;">
												<option>请选择</option>
												<c:forEach items='${colleges}' var="college">
													<option values="${college.name }"
														${student.college==college.name?"selected":""}>${college.name }</option>
												</c:forEach>
										</select></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">年级</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.grade }" name="grade" class="form-control"
											id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">专业</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.major}" name="major" class="form-control"
											id="exampleInputName2"></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">QQ</label></td>
										<td style="text-align:left;"><input type="text" name="qq"
											value="${student.qq }" class="form-control"
											id="exampleInputName2"></td>
										<td style="width:80px;text-align:center;margin-left:30px;"><label
											for="exampleInputName2">电话</label></td>
										<td style="text-align:left;"><input type="text"
											value="${student.phone }" name="phone" class="form-control"
											id="exampleInputName2"></td>
										<td colspan="2"></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:40px;"><label
											for="exampleInputName2">组别</label></td>
										<td clospan="5"><c:forEach items='${membergroups}' var="mg">
										<c:if test="${mg.loginid==student.loginid }"> 
												<label class="checkbox-inline"> 
												<input	value="${mg.gid}" type="checkbox" name="group"
											checked	id="inlineCheckbox1" value="option1" />
											    <label>${mg.name}
												</label>
												</label>
												</c:if>
											</c:forEach></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">就业</label></td>
										<td colspan="5"><textarea type="text"
												class="form-control" name="job" id="exampleInputName2"
												style="width:650px;"> ${student.job }</textarea></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">地址</label></td>
										<td colspan="5"><textarea type="text"
												class="form-control" name="address" id="exampleInputName2"
												style="width:650px;"> ${student.address }</textarea></td>
									</tr>

									<tr>
										<td style="width:80px;text-align:center;line-height:100px;"><label
											for="exampleInputName2">介绍</label></td>
										<td colspan="5"><textarea type="text" rows="3"
												class="form-control" name="introduction"
												id="exampleInputName2" style="width:650px;">${student.introduction }</textarea></td>
									</tr>
								</table>
							</div>

							<center>
								<table style="color:#000; margin-top:10px;">
									<tr>
										<td>照片</td>
										<td><img src="${student.img}" id="imgPre" width="100px"
											height="120px" style="display: block;" /> <input type="file"
											name="imgOne" id="imgOne"
											onchange="preImg(this.id,'imgPre');" /></td>
									</tr>
								
								</table>
							</center>
						</form>
						<div class="modal-footer">
						 <button type="button" class="btn btn-primary update"
												id="${student.loginid}"	data-dismiss="modal">确定</button>
					</div>
			</div>
			</c:forEach>
			<!--edit-section-end -->
			<script type="text/javascript">
				function deleteMember() {

					$('#myform').submit();

				}
				$(".edit").bind("click", function() {
					var id = this.id + "ta";
					document.getElementById(id).style.display = "block";
				})

				$(".add")
						.bind(
								"click",
								function() {
									document.getElementById("addMember").style.display = "block";
								})

				function fun(obj) {
					var div = document.getElementById("addMember");
					div.style.display = "none";
					$("input").val("");
				}

				function add() {
					$('#myForm2').submit();

				}

				$(".close").bind("click", function() {
					var id = this.id + "a";
					document.getElementById(id).style.display = "none";
				})

				$(".update").bind("click", function() {
					var id = "#myForm" + this.id; 
					$(id).submit();
				})
			</script>
			<script>
				var tabBox = document.getElementById("tabBox"),
				//tab = tabBox.getElementsByClassName("tab"),
				tab = [ 0, 1, 2, 3 ], tabShow = tabBox
						.getElementsByClassName("tab-show");

				function Index1(val) {
					for (var i = 0; i < tab.length; i++) {
						if (tab[i] == val) {
							return i
						}
					}
				}

				allCkBox(); //js全选反选调用
				allCkBox("tableBox2"); //可以重复使用哦，传个外层 id 进去就可以了

				function allCkBox(id) {
					//声明各种变量
					var tableBox = document.getElementById(id || "tableBox"), table = tableBox
							.getElementsByTagName("table")[0], ck = tableBox
							.getElementsByClassName("ck"), tableFoot = tableBox
							.getElementsByClassName("table-foot")[0], ckAll = tableBox
							.getElementsByClassName("ck-all")[0], ckRe = tableBox
							.getElementsByClassName("ck-re")[0];

					//js全选
					ckAll.onchange = function() {
						allCk(this.checked);
					};

					//js反选
					ckRe.onchange = function() {
						reCk();
					};

					//全选函数
					function allCk(bool) {
						for (var i = 0; i < ck.length; i++) {
							ck[i].checked = bool;
						}
					}

					//反选函数 by:<a href="http://www.51xued iannao.com/">懒人建站</a>
					function reCk() {
						for (var i = 0; i < ck.length; i++) {
							ck[i].checked ? ck[i].checked = false
									: ck[i].checked = true;
						}
					}

				}
			</script>
		</div>
	</div>
	</div>
	</div>
</body>
</html>
