<%
/**
 * YOU ARE STRICTLY PROHIBITED TO COPY, DISCLOSE, DISTRIBUTE, MODIFY OR USE THIS PROGRAM
 * IN PART OR AS A WHOLE WITHOUT THE PRIOR WRITTEN CONSENT OF HIMEDIA.CO.KR.
 * HIMEDIA.CO.KR OWNS THE INTELLECTUAL PROPERTY RIGHTS IN AND TO THIS PROGRAM.
 * COPYRIGHT (C) 2024 HIMEDIA.CO.KR ALL RIGHTS RESERVED.
 *
 * 하기 프로그램에 대한 저작권을 포함한 지적재산권은 himedia.co.kr에 있으며,
 * himedia.co.kr이 명시적으로 허용하지 않는 사용, 복사, 변경 및 제 3자에 의한 공개, 배포는 엄격히 금지되며
 * himedia.co.kr의 지적재산권 침해에 해당된다.
 * Copyright (C) 2024 himedia.co.kr All Rights Reserved.
 *
 *
 * Program		: kr.co.himedia.ecommerce
 * Description	:
 * Environment	: JRE 1.7 or more
 * File			:
 * Notes		:
 * History		: [NO][Programmer][Description]
 *				: [20241008172500][hyeen103#gmail.com][CREATE: Initial Release]
 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ page info="/WEB-INF/view/front/sale/catshop/list.jsp" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="plutozoneUtilTag"	uri="/WEB-INF/tld/com.plutozone.util.tld" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/include/front/top.jsp" %>
	<%@ include file="/include/front/header.jsp" %>
	<%@ include file="/include/front/gnb.jsp" %>
	<link rel="stylesheet" type="text/css" title="common stylesheet" href="/css/layoutSubmain.css" />
	<link rel="stylesheet" type="text/css" title="common stylesheet" href="/css/table.css" />
	<style></style>
	<script>
		function goView(value) {
			
			/*
			document.getElementById("currentPage").remove();
			document.getElementById("searchKey").remove();
			document.getElementById("searchWord").remove();
			*/
			var frmMain = document.getElementById("frmMain");
			
			document.getElementById("seq_bbs").value = value;
			
			frmMain.action="/front/center/board/view.web";
			frmMain.submit();
		}
		
		function goPage(value) {
			
			var frmMain = document.getElementById("frmMain");
			
			document.getElementById("currentPage").value = value;
			
			frmMain.action="/front/center/board/list.web";
			frmMain.submit();
		}
		
		function goList(value) {
			
			var frmMain = document.getElementById("frmMain");
			
			document.getElementById("searchWord").value = "";
			document.getElementById("currentPage").value = "1";
			document.getElementById("cd_bbs_type").value = value;
			
			frmMain.action="/front/center/board/list.web";
			frmMain.submit();
		}
	</script>
</head>
<body>
<form id="frmMain" method="POST">
<input type="hidden" name="seq_bbs"		id="seq_bbs" />
<input type="hidden" name="cd_bbs_type" id="cd_bbs_type" value="${paging.cd_bbs_type}" />
<input type="hidden" name="currentPage" id="currentPage" value="${paging.currentPage}" />
<div class="container">
	<header>
		<%@ include file="/include/front/top.jsp" %>
	</header>
	<nav>
		<%@ include file="/include/front/gnb.jsp" %>
	</nav>
	<section class="content">
		<nav>
			<%@ include file="/include/front/lnbCenter.jsp" %>
		</nav>
		<article class="txtCenter">
			<div class="brdSearchArea">
				<select name="cd_ctg">
					<option value="0">전체</option>
					<option value="1"<c:if test="${paging.cd_ctg == 1}"> selected</c:if>>가입 및 탈퇴</option>
					<option value="2"<c:if test="${paging.cd_ctg == 2}"> selected</c:if>>상품</option>
					<option value="3"<c:if test="${paging.cd_ctg == 3}"> selected</c:if>>구매</option>
					<option value="4"<c:if test="${paging.cd_ctg == 4}"> selected</c:if>>결제</option>
					<option value="5"<c:if test="${paging.cd_ctg == 5}"> selected</c:if>>배송</option>
					<option value="6"<c:if test="${paging.cd_ctg == 6}"> selected</c:if>>환불</option>
					<option value="9"<c:if test="${paging.cd_ctg == 9}"> selected</c:if>>기타</option>
				</select>
				<select name="searchKey">
					<option value="title"<c:if test="${paging.searchKey == 'title'}"> selected</c:if>>제목</option>
					<option value="contents"<c:if test="${paging.searchKey == 'contents'}"> selected</c:if>>내용</option>
					<option value="title+contents"<c:if test="${paging.searchKey == 'title+contents'}"> selected</c:if>>제목 또는 내용</option>
				</select>
				<input type="text" name="searchWord" id="searchWord" value="${paging.searchWord}" /> <input type="submit" value="검색"/>
			</div>
			<div class="brdInfo">전체 ${paging.totalLine}개[${paging.currentPage}/${paging.totalPage} 페이지]</div>
			
			<br/>
			<plutozoneUtilTag:page styleID="front_image" currentPage="${paging.currentPage}" linePerPage="${paging.linePerPage}" totalLine="${paging.totalLine}" scriptFunction="goPage" />
			<br/>
			<div style="width: 900px; margin-left: auto; margin-right: auto">
			</div>
		</article>
		<aside></aside>
	</section>
	<footer>
		<%@ include file="/include/front/footer.jsp" %>
	</footer>
</div>
</form>
</body>
</html>