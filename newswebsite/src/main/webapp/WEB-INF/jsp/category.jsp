<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="wrapper">
  <div class="container">
    <div class="content">
      <div id="featured_slide">
        <ul id="featurednews">
          <c:forEach var="newPost" items="${newCategoryPostList}">
			 <li>
				<img src="static/post-img/${newPost.picture}" alt="" />
				<div class="panel-overlay">
				<a href="/post?id=${newPost.id}"><h2>${newPost.title}</h2></a>
				<p>${newPost.summary}</p>
				</div>
			</li>		         
		</c:forEach>
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
<div class="wrapper">
  <div class="container">
    <div class="content">
      <div id="hpage_latest">
        <h2>All post</h2>
        <ul>
        <c:forEach var="post" items="${categorypost}">
	          <li><img src="static/post-img/${post.picture}" height="130" width="190" alt="" />
	            <p>${post.title}</p>
	            <p>${post.summary}</p>
	            <p class="readmore"><a href="post?id=${post.id}">Continue Reading &raquo;</a></p>
	          </li>
          </c:forEach>           
        </ul>
        <br class="clear" />
      </div>
    </div>
    <div class="column">
      <div class="holder"><a href="#"><img src="images/demo/300x250.gif" alt="" /></a></div>
      <div class="holder"><a href="#"><img src="images/demo/300x80.gif" alt="" /></a></div>
    </div>
    <br class="clear" />
  </div>
</div>
</html>