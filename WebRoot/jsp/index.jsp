<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>思博课</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- fullPage core CSS -->
    <link rel="stylesheet" type="text/css" href="../fullPage/jquery.fullPage.css" />
    <!-- video-js core CSS -->
	<link href="../video/video-js.min.css" rel="stylesheet">
    <!-- Custom styles for this websit -->
    <link href="../css/main.css" rel="stylesheet">
    <!--work display core css-->
	<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="../css/demo.css" />
	<link rel="stylesheet" type="text/css" href="../css/component.css" />
    
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
     <!--[if lt IE 8]>
      <script src="http://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
     <![endif]-->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../fullPage/jquery.fullPage.min.js"></script>
    <script src="../video/video.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../js/ie10-viewport-bug-workaround.js"></script>  
    
    <!--work display JS-->
    <script src="../js/modernizr.custom.js"></script>
    <script src="../js/imagesloaded.pkgd.min.js"></script>
	<script src="../js/masonry.pkgd.min.js"></script>
	<script src="../js/dynamics.min.js"></script>
	<script src="../js/classie.js"></script>
	<script src="../js/main.js"></script>  
  </head>

  <body>

    <nav class="navbar navbar-fixed-top navbar-default" id="topbar">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">菜单</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" id="logo"><img src="../image/1_02.gif"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right" id="menu">
            <li data-menuanchor="firstPage" class="active"><a href="#firstPage">首页</a></li>
            <li data-menuanchor="secondPage"><a href="#secondPage">团队荣誉</a></li>
            <li data-menuanchor="3rdPage"><a href="#3rdPage">作品展示</a></li>
            <li data-menuanchor="4thpage"><a href="#4thpage">业务范围</a></li>
            <li data-menuanchor="lastPage"><a href="#lastPage">联系我们</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal1">管理入口</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <div id="fullpage">
      <div class="section">
         <div class="orange_lab big_lab" id="page1-1">
            <div class="container">
              <div class="row">
                <div class="col-md-5 col-xs-12 col-md-offset-1">   
                     <video id="example_video_1" class="video-js vjs-skin-hotdog-stand vjs-big-play-centered " poster="http://video-js.zencoder.com/oceans-clip.png">
                        <source id ='v1' src="http://vjs.zencdn.net/v/oceans.mp4" type='video/mp4' />
                        <source src="http://vjs.zencdn.net/v/oceans.webm" type='video/webm' />
                        <source src="http://vjs.zencdn.net/v/oceans.ogv" type='video/ogg' />
                        <track kind="captions" src="demo.captions.vtt" srclang="zh" label="china"></track>
                        <track kind="subtitles" src="demo.captions.vtt" srclang="zh" label="china"></track>
                     </video>                  
                </div><!-- /.col-md-6 -->
                <div class="col-md-1 col-xs-0"></div>
                <div class="col-md-5 col-xs-12">
                  <ul id="unheight" class="cut">
                    <li>我们能做视频，能拍微电影，能做我们想做的</li>
                    <li>我们能拍广告，能拍微课，能帮别人打开心灵之窗</li>
                    <li>我们能做APP，能将你的创意完美实现</li>
                  </ul>
                  <a type="button" href="applyjsp.do" target="_blank" class="btn btn-danger btn-lg" style="width:200px; font-size:24px">加入我们</a>
                </div><!-- /.col-md-6 -->
              </div><!-- /.row -->
            </div><!-- /.container -->        
        </div><!-- /.orange_lab -->
        <div class="white_lab" id="page1-2">
            <div class="container">
				<div class="row">
                	<div class="col-md-5 col-md-offset-1 hidden-xs"> 
                    	<dt style="margin-left:5px"><img src="../image/logo_03.gif"><font>创业型团队</font></dt>
                        <dl>兴趣自由发展，迭代创新观念</dl>
                    </div>
                    <div class="col-md-5 col-md-offset-1 hidden-xs">
                    	<dt><font style="margin-right:5px">学习型团队</font><img src="../image/logo_10.gif"></dt>
                        <dl>多专业相融合，突破技术瓶颈</dl>
                    </div>
            	</div>
            
            </div>
        </div><!-- /.white_lab -->
      </div><!--/section1 -->

      <div class="section">  
    
    	<div class="orange_lab" id="page2-1" style="padding:2% 0 5% 0;">
           <div class="container">
           
              <h1 class="commonTitle text-center">
              <span>荣誉榜</span>
              </h1>
           
              <div class="row">
                    <div id="full" class="carousel slide">
                      <div class="carousel-inner">
                        <ul class="row item active">
                          <li class="col-xs-3 col-md-3">
                            <a href="#"><img src="../image/1.jpg" class="img-responsive img-thumbnail"></a>
                          </li>
                          <li class="col-xs-3 col-md-3">
                            <img src="../image/2.jpg" class="img-responsive img-thumbnail">
                          </li>
                          <li class="col-xs-3 col-md-3">
                            <img src="../image/3.jpg" class="img-responsive img-thumbnail">
                          </li>
                          <li class="col-xs-3 col-md-3">
                            <img src="../image/3.jpg" class="img-responsive img-thumbnail">
                          </li>                   
                        </ul>
                        <ul class="row item">
                          <li class="col-xs-3">
                            <img src="../image/4.jpg" class="img-responsive img-thumbnail">
                          </li>
                          <li class="col-xs-3">
                            <img src="../image/5.jpg" class="img-responsive img-thumbnail">
                          </li>
                          <li class="col-xs-3">
                            <img src="../image/1.jpg" class="img-responsive img-thumbnail">
                          </li>
                          <li class="col-xs-3">
                            <img src="../image/1.jpg" class="img-responsive img-thumbnail">
                          </li>
                        </ul>
                      </div><!--/carousel-inner -->       
                    </div><!--/carousel slide -->
               </div><!--/row --> 
           </div><!--/container -->  
         </div><!--/orange_lab -->
         
         
         <div class="container" id="turn_picture">
         	
         	<ul class="row">
                <li class="col-xs-2 col-md-2">
                    <a  href="#" data-toggle="tooltip" title="漩涡鸣人！日本漫画家岸本齐史作品《火影忍者》中男主角。因为身上封印着邪恶的九尾妖狐，无父无母的他受尽了村人的冷眼与歧视，他下定决心要成为第六代火影，让所有人都认同他的存在">
                        <div><img alt="" src="../image/images/wangye_03.gif" class="img-responsive img-thumbnail"></div>
                        <div>
                            <span style="font-size:2.5vw">摄影组</span>
                        </div>
                    </a>
                </li>
                <li class="col-xs-2 col-md-2">
                    <a href="#" data-toggle="tooltip" title="蒙奇·D·路飞 是日本人气动漫 《海贼王》中的主人公。是日本人气动漫 《海贼王》中的主人公。草帽海贼团船长，梦想是找到传说中的宝藏 —— ONE PIECE，成为海贼王。">
                        <div>
                            <img alt="" src="../image/images/wangye_05.gif" class="img-responsive img-thumbnail">
                        </div>
                        <div>
                            <span style="font-size:2.5vw">平面组</span>
                        </div>
                    </a>
                </li>
                <li class="col-xs-2 col-md-2">
                    <a href="#" data-toggle="tooltip" title="日向雏田！ 日本漫画家岸本齐史作品《火影忍者》中的3号女主角。木叶忍者村的女忍者，木叶名门日向一族宗家族长的长女。喜欢漩涡鸣人，原本是个性格柔弱的女孩，但是在鸣人的影响下逐渐变得坚强，并逐渐成长为一名优秀的忍者。在">
                        <div><img alt="" src="../image/images/wangye_07.gif" class="img-responsive img-thumbnail"></div>
                        <div>
                            <span style="font-size:2.5vw">动画组</span>
                        </div>
                    </a>
                </li>
                <li class="col-xs-2 col-md-2">
                    <a href="#" data-toggle="tooltip" title="漩涡鸣人！日本漫画家岸本齐史作品《火影忍者》中男主角。因为身上封印着邪恶的九尾妖狐，无父无母的他受尽了村人的冷眼与歧视，他下定决心要成为第六代火影，让所有人都认同他的存在">
                        <div>
                            <img alt="" src="../image/images/wangye_09.gif" class="img-responsive img-thumbnail">
                        </div>
                        <div>
                            <span style="font-size:2.5vw">视频组</span>
                        </div>
                    </a>
                </li>
                <li class="col-xs-2 col-md-2">
                    <a href="#" data-toggle="tooltip" title="漩涡鸣人！日本漫画家岸本齐史作品《火影忍者》中男主角。因为身上封印着邪恶的九尾妖狐，无父无母的他受尽了村人的冷眼与歧视，他下定决心要成为第六代火影，让所有人都认同他的存在">
                        <div>
                            <img alt="" src="../image/images/wangye_11.gif" class="img-responsive img-thumbnail">
                        </div>
                        <div>
                            <span style="font-size:2.5vw">程序组</span>
                        </div>
                    </a>
                </li>
                <li class="col-xs-2 col-md-2">
                    <a href="#" data-toggle="tooltip" title="漩涡鸣人！日本漫画家岸本齐史作品《火影忍者》中男主角。因为身上封印着邪恶的九尾妖狐，无父无母的他受尽了村人的冷眼与歧视，他下定决心要成为第六代火影，让所有人都认同他的存在">
                        <div>
                            <img alt="" src="../image/images/wangye_13.gif" class="img-responsive img-thumbnail">
                        </div>
                        <div>
                            <span style="font-size:2.5vw">创意组</span>
                        </div>
                    </a>
                </li>
    		</ul>
         </div>
         
      </div><!--/section2 -->

      
      <div class="section demo-2 orange_lab">
      		<div class="section__heading">思博课</div>
				<div class="isolayer isolayer--deco4">
					<ul class="grid">
						<li class="grid__item"><!--.isolayer--deco4 .grid__link div.layer的css块可以该背景图片的高度和宽度-->
							<a class="grid__link" href="#" data-toggle="modal" data-target="#myModal" data="../video/1.mp4" tle="类别名：作品名"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/2.gif" alt="01" />
							</a><!--超链接a标签请后台自动生成，主要修改自定义的data属性（视频源地址）和tle属性（类别：作品名）-->
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#" data-toggle="modal" data-target="#myModal" data="http://vjs.zencdn.net/v/oceans.mp4" tle="类别名：作品名"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/3.gif" alt="02" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/4.gif" alt="03" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/4.png" alt="04" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/5.png" alt="05" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/2.gif" alt="06" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/7.png" alt="07" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/8.png" alt="08" /></a>
						</li>
						<li class="grid__item">
							<a class="grid__link" href="#"><div class="layer"></div><div class="layer"></div><div class="layer"></div><img class="grid__img layer" src="../img/Dribbble/9.png" alt="09" /></a>
						</li>
					</ul>
				</div>	
      </div><!--/section3 -->solutions
      
      <div class="section">
      		<div class="fourth_top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-xs-10" id="gundong">
                        	<table class=" table table-responsive">
                                <tr class="active">
                                	<td>微课收费服务</td>
                                    <td>基础版（0.2w）</td>
                                    <td>进阶版（1w）</td>
                                    <td>无忧版（3w）</td>
                                </tr>
                                <tr>
                                <td class="danger" colspan="4">美工类</td>
                                </tr>
                                
                                <c:forEach items='${affairs}' var="affair">
									<c:if test="${affair.type=='美工类' }">
										<tr>
											<td>${affair.description}</td>
											<td>${affair.basic}</td>
											<td>${affair.advance}</td>
											<td>${affair.careless}</td>
										</tr>
									</c:if>
								</c:forEach>
								
                                <tr>
									<td class="danger" colspan="4">特效类</td>
								</tr>
                                <c:forEach items='${affairs}' var="affair">
									<c:if test="${affair.type=='特效类' }">
										<tr>
											<td>${affair.description}</td>
											<td>${affair.basic}</td>
											<td>${affair.advance}</td>
											<td>${affair.careless}</td>
										</tr>
									</c:if>
								</c:forEach>
								
                                <tr>
                                <td class="danger" colspan="4">拍摄类</td>
                                </tr>
                                 <c:forEach items='${affairs}' var="affair">
									<c:if test="${affair.type=='拍摄类' }">
										<tr>
											<td>${affair.description}</td>
											<td>${affair.basic}</td>
											<td>${affair.advance}</td>
											<td>${affair.careless}</td>
										</tr>
									</c:if>
								</c:forEach>
								
                                <tr>
                                <td class="danger" colspan="4">其他</td>
                                </tr>
                                 <c:forEach items='${affairs}' var="affair">
									<c:if test="${affair.type=='其他' }">
										<tr>
											<td>${affair.description}</td>
											<td>${affair.basic}</td>
											<td>${affair.advance}</td>
											<td>${affair.careless}</td>
										</tr>
									</c:if>
								</c:forEach>
								
                           </table>
                        </div>
                        <div class="col-md-2 col-xs-2" id="fourth">
                        	<span id="span" style="color:#b04a34;">收费指南</span>
                        	<ul class="list-unstyled fourth_right">
								<c:forEach items='${affair_category}' var="ac">
									<li ><a class=${ac.flag==0?"\"gray\"":"" } href="affair.do?name=${ac.name }#4thpage">${ac.name }</a></li>

								</c:forEach>
							</ul>
                            <a type="button" class="btn btn-danger" href="list2.html" target="_blank">点击申请</a>
                        </div>
                    </div> 
                </div>
            </div>
      </div><!--/section4 -->

      <div class="section">
     	<div class="slide">
      		<div >
           		<div id="list">
              		<div id="team" class="liList">
                  		<div id="teamContent" class="divList">
                            <div class="teamContent1">
                                <h1 class="commonTitle" style="font-size:60px; margin-top:0px;">
                                    <span>有你更精彩</span><br>
                                    
                                </h1>
                            </div>
                            <div class="teamContent2">
                                <p class="commonText">
                                   我们成立于2014年，工作室位于湖南农业大学文渊馆202，全团成员多学科交叉。我们拥有教师团队和学生团队两个层次。
                                    <br>
                                    学生团队：广告、视频、编程项目与竞赛。<br>
                                    教师团队：带领学生提前体验社会生产、自研信息化课程改革方法。 
                                </p>
                            </div>
                      		<div class="teamContent3" id="teamContent3"></div>
                            
                  		</div>
              		</div>
           		</div>
         	</div>
        </div>

        
      </div><!--/section5 -->
		
    </div><!--/fullpage -->

<!-- Modal1 登录 -->
    <center>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content" style="width:350px; margin-top:30%;">
          <div class="modal-header" style="height:90px; background:url(../image/1_02_03.gif) center no-repeat">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title text-center" id="myModalLabel"></h4>
          </div>
          <form>
              <div class="modal-body">
                   
                          <div class="input-group" style="margin-top:15px;">
                            <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="test" class="form-control" id="exampleInputEmail1" placeholder="账号">
                          </div>
                          <div class="input-group" style="margin-top:30px;">
                            <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-th"></span></span>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
                          </div>
              </div>
              <div class="text-center" style="margin:20px 0 40px 0">
                <button type="submit" class="btn btn-danger"   style="width:85%;">登录</button>
              </div>
          </form>
        </div>
      </div>
    </div>
    </center>
    
    <!-- Modal2 视频-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document" style="width:450px;">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
          </div>
          <div class="modal-body">
            <video id="example_video_2" class="video-js vjs-default-skin vjs-big-play-centered" controls ="none" width="400" height="210"
          poster="http://video-js.zencoder.com/oceans-clip.png"
          data-setup="{}">
           <source id="1" src="" type='video/mp4' />
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div> 

</body></html>
