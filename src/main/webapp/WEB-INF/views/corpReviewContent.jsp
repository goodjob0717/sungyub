<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />">
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>기업 리뷰</title>
    <style>
    body {
        font-family: 'Nanum Gothic', sans-serif;
        font-size: 12px;
        color: #696B86;
        background-color: #F0F8FF;
        margin: 0;
        padding: 0;
    }
    /* 페이지 콘텐츠 영역을 헤더와 푸터 사이에 배치 */
    .content {
        padding-top: 12rem;  /* 헤더 높이 + 네비게이션 높이 */
        padding-bottom: 12rem;  /* 푸터 높이만큼 패딩 추가 */
        min-height: calc(100vh - 17rem);  /* 전체 높이에서 헤더와 푸터 높이만큼 빼기 */
    }
    .container {
        width: 1000px;
        margin: 0 auto;
        margin-top: 40px;
        border-radius: 10px;
    }
    .logo-placeholder {
        width: 80px;
        height: 80px;
        background-color: #ddd;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-right: 20px;
        font-size: 14px;
    }
    .company-name {
        display: flex;
        align-items: center;
        border: 1px solid #b1b1b1;
        border-radius: 10px;
        padding: 20px;
        background-color: #ffffff;
    }
    .company-info p {
        margin: 0;
        color: #888;
    }
    .rivewWrite button {
        margin-left: 10px;
        padding: 8px;
        font-size: 12px;
        border: none;
        background-color: #AFDBF5;
        color: #fff;
        cursor: pointer;
        border-radius: 5px;
    }
    .rivewWrite button:hover {
        background-color: #007bff;
        color: #fff;
    }
    .review-summary {
        display: flex;
        /* justify-content: space-between; */
        /* padding: 20px; */
        padding: 40px;
        background-color: #ffffff;
        border-bottom: 1px solid #ddd;
        margin-bottom: 20px;
    }
    .review-stats ul {
        list-style-type: none;
        padding: 0;
    }
    .review-stats li {
        margin-bottom: 10px;
    }
    .best-benefits ul {
        list-style-type: none;
        padding: 0;
    }
    .best-benefits li {
        margin-bottom: 10px;
    }
    .benefit-options {
        display: flex;
        justify-content: space-around;
        margin-top: 10px;
    }
    .benefit-option {
        width: 30%;
        padding: 20px;
        background-color: #f8f9fa;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    .userreviews {
        padding: 20px;
        background-color: #ffffff;
        border-bottom: 1px solid #ddd;
    }
    .userreviews-cards {
        display: flex;
        /* justify-content: space-around; */
    }
    .userreviews-card {
        width: 22%;
        padding: 20px;
        background-color: #f8f9fa;
        border: 1px solid #ddd;
        border-radius: 5px;
        text-align: center;
    }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<!-- 헤더와 푸터에 의해 가려지지 않도록 하는 부분 -->
<div class="content">
    <div class="container">
        <div class="company-name">
            <h1>${corp_name}</h1>
        </div>
        <br>
        <div class="rivewWrite">
            <form id="writeReviewForm" method="post" action="corpReviewWrite">
                <input type="hidden" name="corp_name" value="${corp_name}">
                <button type="submit">기업 리뷰 쓰기</button>
            </form>
        </div>
        <br>
        <section class="review-summary">
            <div class="review-stats">
                <h2>회사 특징</h2>
                <br>
                <ul>
                    <c:forEach var="corpKeywords" items="${corpKeywords}">
                        <li>${corpKeywords}</li>
                    </c:forEach>
                </ul>
            </div>
        </section>
        <section class="review-summary">
        <div class="best-benefits">
            <h2>회사 복리후생</h2>
            <br>
            <ul>
                <c:forEach var="corpWelfares" items="${corpWelfares}">
                    <li>${corpWelfares}</li>
                </c:forEach>
            </ul>
        </div>
        </section>
        <section class="userreviews">
            <h2>직접 쓴 리뷰</h2>
            <br>
            <div class="userreviews-cards">
                <div class="userreviews-card">
                    <c:forEach var="corpReviews" items="${corpReviews}">
                        <p>${corpReviews}</p>
                    </c:forEach>
                </div>
            </div>
        </section>
    </div>
</div>
<%@ include file="footer.jsp" %>
<script>
</script>
</body>
</html>