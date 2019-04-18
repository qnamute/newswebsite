<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>News Magazine</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="static/css/layout.css" type="text/css" />
<script type="text/javascript" src="static/js/jquery.min.js"></script>

<script type="text/javascript" src="static/js/galleryviewthemes/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="static/js/galleryviewthemes/jquery.timers.1.2.js"></script>
<script type="text/javascript" src="static/js/galleryviewthemes/jquery.galleryview.2.1.1.min.js"></script>
<script type="text/javascript" src="static/js/galleryviewthemes/jquery.galleryview.setup.js"></script>
</head>
<body id="top">
  <div class="wrapper col0">
    <div id="topline">
      <p>Tel: 0348621188 | Mail: dientoandammay@cloud.com</p>      
      <ul>
      <c:choose>
	      <c:when test="${viewer == 'MODE_USER'}">
	      	<li>Welcome <a href="#">${username}</a> / <a href="logout">Log out</a></li>
	      </c:when>
	      <c:when test="${viewer == 'MODE_GUESS'}">
	      <li><a href="login">Register / Log in</a></li>
	      </c:when>  
    	 </c:choose>
      </ul>
      <br class="clear" />
    </div>
  </div>
  <!-- ####################################################################################################### -->
  <div class="wrapper">
    <div id="header">
      <div class="fl_left">
        <h1><a href="/"><strong>N</strong>am<strong>L</strong>ich<strong>T</strong>hien</a></h1>
        <p>Google Cloud</p>
      </div>
      <div class="fl_right"><a href="#"><img src="static/post-img/logo.jpg" alt="" /></a></div>
      <br class="clear" />
    </div>
  </div>
  <!-- ####################################################################################################### -->
  <div class="wrapper col2">
    <div id="topbar">
      <div id="topnav">
        <ul>
	        <c:forEach var="category" items="${categoryList}">
	          <li class="active"><a href="category?id=${category.id}">${category.name_cate}</a></li>
			</c:forEach>
        </ul>
      </div>
      <div id="search">
        <form action="#" method="post">
          <fieldset>
            <legend>Site Search</legend>
            <input type="text" value="Search Our Website&hellip;"
              onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
            <input type="submit" name="go" id="go" value="Search" />
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
  </div>
  
  <c:choose>
 	 <c:when test="${mode == 'MODE_HOME'}">
		  <div>
			  <!-- ####################################################################################################### -->
			  <div class="wrapper">
			    <div class="container">
			      <div class="content">
			        <div id="featured_slide">
			          <ul id="featurednews">
			          <!--  -->
				          <c:forEach var="newPost" items="${newPostList}">
					          <li><img src="static/post-img/${newPost.picture}" alt="" />
					              <div class="panel-overlay">
					                <a href="/post?id=${newPost.id}"><h2>${newPost.title}</h2></a>
					                <p>${newPost.summary}</p>
					              </div>
					            </li>
						</c:forEach>
						 <!---->
			          </ul>
			        </div>
			      </div>
			      <div class="column">
			        <ul class="latestnews">
			          <li><img src="static/post-img/qc1.png" alt="" />
			            <p><strong><a href="#">Google LLC </a></strong>là một công ty công nghệ đa quốc gia của Mỹ, chuyên về các dịch vụ liên quan đến Internet,
			             bao gồm các công nghệ quảng cáo trực tuyến, công cụ tìm kiếm, điện toán đám mây.</p>
			          </li>
			          <li><img src="static/post-img/qc2.png" alt="" />
			            <p><strong><a href="#">Google Cloud Platform
						</a></strong>được cung cấp bởi Google, là một bộ dịch vụ điện toán đám mây chạy trên cùng một cơ sở hạ tầng mà 
			            Google sử dụng nội bộ cho các sản phẩm của người dùng cuối</p>
			          </li>
			          <li class="last"><img src="static/post-img/qc3.jpg" alt="" />
			            <p><strong><a href="#">Internet</a></strong>là một hệ thống thông tin toàn cầu có thể được truy nhập công cộng gồm các mạng máy tính được 
			            liên kết với nhau.</p>
			          </li>
			        </ul>
			      </div>
			      <br class="clear" />
			    </div>
			  </div>
			  <!-- ####################################################################################################### -->
			  <div class="wrapper">"
			    <div id="adblock">
			      <div class="fl_left"><a href="#"><img src="static/post-img/logo.jpg" alt="" /></a></div>
			      <div class="fl_right"><a href="#"><img src="static/post-img/logo.jpg" alt="" /></a></div>
			      <br class="clear" />
			    </div>			 
			  </div>
			  <!-- ####################################################################################################### -->
		  </div>
	  </c:when>
	  <c:when test="${mode == 'MODE_POST'}">
	  	<%@ include file="post.jsp" %>
	  </c:when>
	  <c:when test="${mode == 'MODE_CATEGORY'}">
	  	<%@ include file="category.jsp" %>
	  </c:when>
  </c:choose>
  
  <!-- ####################################################################################################### -->
  <!-- ####################################################################################################### -->
  <div class="wrapper">
    <div id="socialise">
      <ul>
        <li><a href="#"><img src="static/post-img/facebook.gif" alt="" /><span>Facebook</span></a></li>
        <li><a href="#"><img src="static/post-img/rss.gif" alt="" /><span>FeedBurner</span></a></li>
        <li class="last"><a href="#"><img src="static/post-img/twitter.gif" alt="" /><span>Twitter</span></a></li>
      </ul>
      <div id="newsletter">
        <h2>NewsLetter Sign Up !</h2>
        <p>Please enter your Email and Name to join.</p>
        <form action="#" method="post">
          <fieldset>
            <legend>Digital Newsletter</legend>
            <div class="fl_left">
              <input type="text" value="Enter name here&hellip;"
                onfocus="this.value=(this.value=='Enter name here&hellip;')? '' : this.value ;" />
              <input type="text" value="Enter email address&hellip;"
                onfocus="this.value=(this.value=='Enter email address&hellip;')? '' : this.value ;" />
            </div>
            <div class="fl_right">
              <input type="submit" name="newsletter_go" id="newsletter_go" value="&raquo;" />
            </div>
          </fieldset>
        </form>
        <p>To unsubsribe please <a href="#">click here &raquo;</a>.</p>
      </div>
      <br class="clear" />
    </div>
  </div>
  <!-- ####################################################################################################### -->
  <div class="wrapper col8">
    <div id="copyright">
      <p class="fl_left">Copyright &copy; 2019 - Dien toan dam may - <a href="#">HCMUTE</a></p>
      <p class="fl_right">Dang Thi Kim Giao  -  <a target="_blank" href="https://www.os-templates.com/"
          title="Free Website Templates">Google Cloud</a></p>
      <br class="clear" />
    </div>
  </div>
  <script src="static/js/bootstrap.min.js"></script>
</body>
</html>