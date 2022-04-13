<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<%
	String new_name = request.getParameter("new_name");
	String new_tel = request.getParameter("new_tel");
	String new_id = request.getParameter("new_id");
	String new_pwd = request.getParameter("new_pwd");
%>  
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>한섬 ｜ HANDSOME Corp.</title>
	    <meta name="description" content="삶의 모든 영역에서 아름다운 경험을 제공하는 스타일 크리에이터, 한섬"/>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
	    <link rel="stylesheet" href="${contextPath}/css/font.css">
	    <link rel="stylesheet" href="${contextPath}/css/ko_common.css">
	    <link rel="stylesheet" href="${contextPath}/css/ko_style.css">
	    <link rel="stylesheet" href="${contextPath}/css/swiper.min.css">
	    <script src="${contextPath}/js/bootstrap.js"></script>
	    <script src="${contextPath}/js/cmmn.js"></script>
	    <script src="${contextPath}/js/jquery-3.5.1.min.js"></script>
	    <script src="${contextPath}/js/swiper.min.js"></script>
	    <script src="${contextPath}/js/js.js"></script>
		<link rel="icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="${contextPath}/images/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="${contextPath}/images/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="${contextPath}/images/favicon-16x16.png" sizes="16x16" type="image/png">
	</head>
	<body>
		<div class="wrap">
			<style>
				#add_wrapper {
					padding: 5px 20px;
					display: flex;
					flex-direction: column;
					justify-content: center;
					align-items: center;
				}
				.form{
					width: 300px;
				}
				.form > div{
					display: flex;
					justify-content: center;
					padding-bottome: 7px;
					align-items: center;
				}
				h1{
					font-size: 40px;
					padding-bottom: 20px;
					text-align: center;
				}
				h4{
					font-size: 20px;
					padding-bottom: 10px;
					text-align: center;
				}
			</style>	
			<%@ include file="../header.jsp"%>
			<br><br><br><br><br><br><br><br><h1>HANDSOME 페이지 관리</h1><br><br><br><br>
			<div class="section box">
				<div class="hs-row tabs">
					<ul class="nav nav-tabs nav-justified rootTab">
						<li><a href="${contextPath}/member/listMember.do">관리자 목록</a></li>
						<li class="on"><a href="${contextPath}/member/addMember.do">관리자 추가</a></li>
						<li><a href="${contextPath}/member/manageMedia.do">MEDIA UPLOAD</a></li>
					</ul>
				</div>
			</div>
			<div id = "add_wrapper">
				<form name="frmAdd" method="post" action="/ko/member/addMember.do" encType="UTF-8">
					<h4>이름</h4>
					<input type="text" placeholder="이름 입력" name="new_name" maxlength="20"><br><br>
					<h4>연락처</h4>
					<input type="text" placeholder="연락처 입력" name="new_tel" maxlength="20"><br><br>
					<h4>아이디</h4>
					<input type="text" placeholder="아이디 입력" name="new_id" maxlength="20"><br><br>
					<h4>비밀번호</h4>
					<input type="password" placeholder="비밀번호 입력" name="new_pwd" maxlength="20"><br><br><br>
					<input type="submit" value="계정 추가" style="width:150px; height:50px">
					<input type="reset" value="다시입력" style="width:150px; height:50px">
				</form>
			</div>
<br><br><br><br><br>
<%@ include file="../footer.jsp"%>
</div>
</body>
</html>