<%@ page language="java" import="java.util.*,com.spoc.po.Affair_category" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>业务申请</title>
	<!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../up_file/default.css" rel="stylesheet">
    <link href="../up_file/fileinput.css" media="all" rel="stylesheet">
    <link href="../css/list_style.css" rel="stylesheet">
    <script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
    <script src="../up_file/fileinput.js"></script>
    <script src="../up_file/fileinput_locale_zh.js"></script>
    
</head>
<body>
<div class="container-fluid bg">
<div class="container bg1">
	<center>
            <div class="bg3">
            <form action="lianxi.do" method="post">
            	<div class="text-center"><img src="../image/1_02.gif"></div>
            	<div class="list_top">联系人姓名</div>
                <div>
                	<textarea name="name" class="underline textarea_style"></textarea>
                </div>
            
                <div class="list_top">联系人手机</div>
                <div>
                	<textarea name="phone"  class="underline textarea_style"></textarea>
                </div>
                <div class="list_top">业务类别</div>
                 <div class="list_top1">
                	<ul class="list-unstyled" id="list_top1" >
                	   <c:forEach items='${Charge}' var="news"  begin="0" end="5">
			              <li>
                         <input value="${news.name}" name="news" type="checkbox" >
                          <label  >${news.name} </label>
                        </li>
			             </c:forEach>          	                       
                    </ul>
                  
                </div>
                <div class="list_top" style="clear:both">具体内容</div>
                <div>
                	<textarea name="content" class="underline textarea_style1"></textarea>
                </div>
                
                <div class="list_top">
                	<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">添加附件</button>
                	<button type="submit" name="submit" class="btn btn-danger" style="margin-left:45%;">提交业务</button>
                </div>
                </form>
            </div>
      </center>
</div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">附件提交</h4>
      </div>
      <div class="modal-body">
            <div class="htmleaf-container">
                <form action="upload.do" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input id="file-4" type="file" class="file"  name="file">
                       <!--<input type="submit" value="上传">-->
                    </div>
                </form>
             </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    		
            
            
           
 			<script>
                	$("#file-4").fileinput({
						uploadExtraData: {kvId: '10'}
					});
					$(".btn-warning").on('click', function() {
						if ($('#file-4').attr('disabled')) {
							$('#file-4').fileinput('enable');
						} else {
							$('#file-4').fileinput('disable');
						}
					});    
					$(".btn-info").on('click', function() {
						$('#file-4').fileinput('refresh', {previewClass:'bg-info'});
					});
					   $(document).ready(function() {
						$("#test-upload").fileinput({
							'showPreview' : false,
							'allowedFileExtensions' : ['jpg', 'png','gif'],
							'elErrorContainer': '#errorBlock'
						});
					});
                </script>   	 		
   
</body>
</html>

