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
										<td><a class=menuchild href="applyAffair.do" target=main>业务申请管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="#" target=main>业务处理管理</a></td>
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
										<td><a class=menuchild href="applyAffair.do" target=main>报名申请管理</a></td>
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


					<div class="row admin_black admin_spacing">
						<div class="col-md-2 col-xs-5">业务处理</div>
						<div class="col-md-7 hidden-xs"></div>
					</div>
					<div id="tableBox">
						<div class="admin_roll">
							<form action="deleteType.do" method="post">
								<table class="table" id="tabBox">
									<tr>

										<td>业务类别</td>
										<td>联系人姓名</td>
										<td>联系人电话</td>
										<td colspan="2">基本操作</td>
									</tr>
									<c:forEach items='${affairs}' var="affair">
									<c:if test="${affair.flag==0}">
										<tr>

											<td>${affair.type}</td>
											<td>${affair.name}</td>
											<td>${affair.phone}</td>
											<td colspan="2"><a href="">查看详情</a> <a
												style="margin-left:20px;" data-toggle="modal"
												data-target=".bs-example-modal-lg" href="#"> <button type="button" class="btn btn-primary "
								 data-dismiss="modal">审阅完成</button>
											</a></td>
										</tr>
										</c:if>
									</c:forEach>
								</table>
							</form>
						</div>

					</div>

					<!--add-section-start  -->

					<div class="modal-content text-center admin_hide" id="addMember">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								onclick="fun(this)">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">添加业务类别</h4>
						</div>
						<form action="addType.do" method="post" name="myForm2"
							id="myForm2">
							<div class="container table-responsive">
								<table>
									<tr style="padding-top:20px;">
										<td style="width:80px;text-align:center;line-height:100px;">
											<label for="exampleInputName2">类别名称</label>
										</td>
										<td style="text-align:left;"><input type="text"
											name="name" class="form-control" id="exampleInputName2">
										</td>
										<td style="width:80px;text-align:center;margin-left:150px;">
											<label for="exampleInputName2">投入开发</label>
										</td>
										<td style="text-align:left;"><input name="flag" value="1"
											type="radio"> <label for="q2_1">是</label> <input
											name="flag" value="0" type="radio" /> <label for="q2_2">否</label></td>
									</tr>
								</table>
							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal" onclick="add()">添加</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal" onclick="fun(this)">Close</button>
						</div>
					</div>



					<!--add-section-end  -->

					<!--edit-section-start  -->

					<c:forEach items='${affairtypes}' var="affairtype">
						<div class="modal-content text-center admin_hide"
							id="${affairtype.acid}ta">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									id="${affairtype.acid}t"">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">编辑成员信息</h4>
							</div>
							<form action="updateType.do" method="post"
								enctype="multipart/form-data" name="myForm2"
								id="myForm${affairtype.acid}">
								<div class="container table-responsive">
									<table>
										<tr style="padding-top:20px;">
											<td style="width:80px;text-align:center;line-height:100px;">
												<label for="exampleInputName2">类别名称</label>
											</td>
											<td style="text-align:left;"><input type="text"
												readOnly="true" name="typeName" class="form-control"
												id="exampleInputName2" value="${affairtype.name}"></td>
											<td style="width:80px;text-align:center;margin-left:150px;">
												<label for="exampleInputName2">投入开发</label>
											</td>
											<td style="text-align:left;"><input name="flag"
												value="1" ${affairtype.flag==1?"checked":""} type="radio">
												<label for="q2_1">是</label> <input
												${affairtype.flag==0?"checked":""} name="flag" value="0"
												type="radio" /> <label for="q2_2">否</label></td>
										</tr>
										<tr>
											<td><input type="text" name="acid"
												value="${affairtype.acid}" hidden="hidden" /></td>
										</tr>
									</table>
								</div>
							</form>
							<div class="modal-footer">

								<button type="button" class="btn btn-primary update"
									id="${affairtype.acid}" data-dismiss="modal">确定</button>
							</div>
						</div>

					</c:forEach>
				</div>
				<!--edit-section-end -->
				<script type="text/javascript">
					function deleteType() {

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
						var tableBox = document
								.getElementById(id || "tableBox"), table = tableBox
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
