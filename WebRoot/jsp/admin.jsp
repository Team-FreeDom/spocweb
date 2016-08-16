<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>管理员界面</title>
<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet">
<link href="../css/admin1.css" type="text/css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
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
             <a style="color: #fff" onclick="if (confirm('确定要退出吗？')) return true; else return false;" href="../main.htm" target=_top>退出系统</a> 
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
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent onclick=expand(1)  href="javascript:void(0);">成员管理</a></td>
                         </tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                       </table>
                       
                        <table id=child1 style="display: none" class="text-left admin_table">
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            
                            <td><a class=menuchild href="user.do?flag=1">老师管理</a></td>
                          </tr>
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            <td><a class=menuchild  href="user.do?flag=2">学生管理</a></td>
                          </tr>
                          <tr height=4>
                            <td colspan=2></td>
                          </tr>
                        </table>
                        
                        
                        <table class="admin_table">
                          <tr height=22>
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent  href="#">荣誉管理</a></td></tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                        </table>
                        
                        <table class="admin_table">
                          <tr height=22>
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent href="#">作品管理</a></td>
                          </tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                        </table>
                        
                        <table class="admin_table">
                          <tr height=22>
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent onclick=expand(4) href="javascript:void(0);">业务管理</a></td>
                          </tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                        </table>
                        <table id=child4 style="display: none"class="text-left admin_table">
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            <td><a class=menuchild  href="applyAffair.do?flag=0">业务申请管理</a></td>
                          </tr>
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            <td><a class=menuchild  href="applyAffair.do?flag=1">业务处理管理</a></td>
                          </tr>
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            <td><a class=menuchild  href="dealAT.do">业务类型管理</a></td>
                          </tr>
                          <tr height=4>
                            <td colspan=2></td>
                          </tr>
                        </table>
                        <table class="admin_table">
                          <tr height=22>
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent onclick=expand(5) href="javascript:void(0);">报名管理</a></td>
                          </tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                        </table>
                        <table id=child5 style="display: none"  class="text-left admin_table">
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            <td><a class=menuchild href="#">报名申请管理</a></td>
                          </tr>
                          <tr height=20>
                            <td width=30><img  src="../image/menu_icon.gif" ></td>
                            <td><a class=menuchild  href="#">报名处理管理</a></td>
                          </tr>
                          <tr height=4>
                            <td colspan=2></td>
                          </tr>
                        </table>
                      <table class="admin_table">
                          <tr height=22>
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent  href="#">服务管理</a></td></tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                        </table>
                  <table class="admin_table">
                          <tr height=22>
                            <td style="padding-left: 30px" background=../image/menu_bt.jpg><a class=menuparent  href="#">收费管理</a></td></tr>
                          <tr height=4>
                            <td></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>	
                  
            </div>
            <div class="col-md-10 col-xs-10">
                     
                        <div class=" row text-right" style="margin-top:10px;">
                        	<div class="col-md-12 col-xs-12">
                                <form class="form-inline">
                                    <div class="form-group">
                                        <label for="exampleInputName2">用户搜索</label>
                                        <input type="text" class="form-control" id="exampleInputName2" placeholder="姓名">
                                    </div>
                                    <button type="submit" class="btn btn-default">搜索</button>
                                </form>
                            </div>
                        </div>
                        
                        <div class="row admin_black admin_spacing">
                            <div class="col-md-2 col-xs-5">管理人员基本信息表</div>
                            <div class="col-md-7 hidden-xs"></div>
                            <div class="col-md-3 col-xs-7">
                                <span>
                                    <a  data-toggle="modal" data-target=".bs-example-modal-lg" href="#">
                                    <img src="../image/add.gif" width="10" height="10" /> 添加</a>   &nbsp;
                                    <a  data-toggle="modal" data-target=".bs-example-modal-lg" href="#">
                                    <img src="../image/del.gif" width="10" height="10" /> 删除</a>    &nbsp;&nbsp;
                                    <a  data-toggle="modal" data-target=".bs-example-modal-lg" href="#">
                                    <img src="../image/edit.gif" width="10" height="10" /> 编辑</a>   &nbsp;
                                </span>
                                
                                
                                <!-- Large modal -->
                                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                                  <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                          </div>
                                          <div class="modal-body">
                                            <h1 style="color:#000;">具体内容暂定</h1>
                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button></div>
                                    </div>
                                  </div>
                                </div>
                                <!-- Large modal -->
                                
                                
                            </div>
                        </div>
                        <div id="tableBox">
                            <div class="admin_roll">
                                <table class="table" id="tabBox">
                                    <tr>
                                        <td></td>
                                        <td>用户名</td>
                                        <td>用户角色</td>
                                        <td>联系方式</td>
                                        <td>组别</td>
                                        <td>基本操作</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" name="1" class="ck"/></label></td>
                                        <td>admin</td>
                                        <td>系统管理员</td>
                                        <td>xxXXXXXXXXX</td>
                                        <td>程序组</td>
                                        <td>查看详情</td>
                                    </tr>
                                </table>
                        </div>
                            <div class="text-right" style="margin-right:60px;">
                                <label><input type="checkbox" name="0" class="ck-all"/>全选</label>
                                <label><input type="checkbox" name="0" class="ck-re"/>反选</label>
                            </div>
                        </div>
                        <script>
                        
                            var tabBox = document.getElementById("tabBox"),
                                //tab = tabBox.getElementsByClassName("tab"),
                                tab = [0,1,2,3],
                                tabShow = tabBox.getElementsByClassName("tab-show");
                        
                            function Index1(val){
                                for(var i =0; i<tab.length;i++){
                                    if(tab[i] == val){
                                        return i
                                    }
                                }
                            }
                        
                        
                            allCkBox(); //js全选反选调用
                            allCkBox("tableBox2"); //可以重复使用哦，传个外层 id 进去就可以了
                        
                            function allCkBox(id){
                                //声明各种变量
                                var tableBox = document.getElementById(id||"tableBox"),
                                    table = tableBox.getElementsByTagName("table")[0],
                                    ck = tableBox.getElementsByClassName("ck"),
                                    tableFoot = tableBox.getElementsByClassName("table-foot")[0],
                                    ckAll = tableBox.getElementsByClassName("ck-all")[0],
                                    ckRe = tableBox.getElementsByClassName("ck-re")[0];
                        
                                //js全选
                                ckAll.onchange = function(){
                                    allCk(this.checked);
                                };
                        
                                //js反选
                                ckRe.onchange = function(){
                                    reCk();
                                };
                        
                                //全选函数
                                function allCk(bool){
                                    for(var i =0; i<ck.length;i++){
                                        ck[i].checked = bool;
                                    }
                                }
                        
                                //反选函数 by:<a href="http://www.51xuediannao.com/">懒人建站</a>
                                function reCk(){
                                    for(var i =0; i<ck.length;i++){
                                        ck[i].checked ? ck[i].checked = false : ck[i].checked = true;
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
