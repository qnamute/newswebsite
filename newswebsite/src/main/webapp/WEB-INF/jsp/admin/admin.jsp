<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en" class="no-js">
<head>
	<title>Flakes Example Usage</title>

	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta charset="UTF-8" />
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="static/admin-style/css/all.css">
</head>

<body>
	<div class="flakes-frame">

		<div class="flakes-navigation">
			<a href="index.html" class="logo">
				<img src="static/post-img/adminlogo.jpg" width="120">
			</a>

			<ul>
				<li class="title"><h1>Admin Form</h1> </li>
				<li><a href="all-categories">Category Post</a></li>
				<li><a href="all-posts">Post</a></li>
				<li><a href="all-acounts">Account</a></li>
			</ul>

			<p class="foot">
				Hello <b>${adminname}</b><br>
				<a href="logout">Logout</a>
			</p>
		</div>
		<%@ include file="account-content.jsp" %>
		<div class="flakes-content">

			<div class="flakes-mobile-top-bar">
				<a href="" class="logo-wrap">
					<img src="img/logo.png" height="30px">
				</a>

				<a href="" class="navigation-expand-target">
					<img src="img/site-wide/navigation-expand-target.png" height="26px">
				</a>
			</div>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/admin-style/js/base.js"></script>
	<script src="static/admin-style/js/main.js"></script>
	<script src="static/login-style/vendor/jquery/jquery.min.js"></script>
	<script>
    	var config = new configAdmin();
    	config.initialize();
    </script>
</body>
</html>