<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            background-color: #DCDCDC;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .flex-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 50px;
        }
        .search-container {
            border: 1px solid #b1b1b1;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .footer {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-reviews {
            border: 1px solid #b1b1b1;
            padding: 20px;
            width: 30%;
            border-radius: 10px;
        }
        .search-reviews h1 {
            margin: 0;
            font-size: 32px;
        }
        .search-reviews p {
            margin: 20px 0 20px;
            font-size: 15px;
        }
        .search-reviews input[type="text"] {
            width: calc(90% - 40px);
            padding: 10px;
            font-size: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .search-reviews button {
            padding: 10px;
            font-size: 10px;
            border: none;
            background-color: #AFDBF5;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
        .search-reviews button:hover {
            background-color: #007bff;
        }
        .popular-reviews {
            border: 1px solid #b1b1b1;
            padding: 20px;
            width: 55%;
            border-radius: 10px;
        }
        .popular-reviews h2 {
            margin-top: -10px;
        }
        hr {
            margin-top: -5px;
            border-width: 1px 0 0 0;
            border-color: #fff;
        }
        .popular-reviews .review-cards {
            display: flex;
            margin-top: 15px;
            justify-content: center;
            align-items: center;
        }
        .card {
            border: 1px solid #b1b1b1;
            border-radius: 10px;
            padding: 20px;
            margin: 10px;
            text-align: center;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 120px;
        }
        .card img {
            max-width: 100%;
            margin-bottom: 10px;
        }
        .review-keysearch {
            margin-bottom: 20px;
        }
        .review-keysearch .keywords, .selected-keywords {
            display: flex;
            flex-wrap: wrap;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .keywords div, .selected-keywords div {
            margin: 5px;
            padding: 5px 10px;
            border: 1px solid #ddd;
            border-radius: 15px;
            cursor: pointer;
            background-color: #e9f4ff;
        }
        .keywords div.selected, .selected-keywords div {
            background-color: #007bff;
            color: #fff;
        }
        .selected-keywords div {
            position: relative;
            margin-right: 10px;
        }
        .selected-keywords div .remove {
            position: relative;
            left: 5px;
            background-color: #ffffff;
            border-radius: 50%;
            padding: 2px 5px;
            color: #000000;
            cursor: pointer;
        }
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination a {
            margin: 0 5px;
            text-decoration: none;
            color: #333;
        }
        .review-keysearch button {
            padding: 8px;
            font-size: 12px;
            border: none;
            background-color: #AFDBF5;
            border-radius: 5px;
            cursor: pointer;
            /* float: right; */
        }
        .review-keysearch button:hover {
            background-color: #007bff;
        }
        .review-list {
            display: flex;
            align-items: center;
            border: 1px solid #b1b1b1;
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #ffffff;
        }
        .review-list img, .card img {
            width: 100px;
            height: 100px;
            margin-right: 20px;
        }
        .review-content {
            flex-grow: 1;
        }
        .review-content p {
            margin: 0;
        }
        .view-count {
            margin-right: 20px;
            color: #888;
        }
        .favorite-button {
            padding: 5px 10px;
            border: 1px solid #b1b1b1;
            background-color: #ffffff;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div class="container">
    <div class="flex-container">
        <div class="popular-reviews">
            <h2>인기 기업리뷰</h2>
            <hr>
            <div class="review-cards">
                <c:forEach var="hotreview" items="${hotreviews}">
                    <div class="card">
                        <img src="기업로고.png" alt="기업 로고">
                        <p>${hotreview.corp_name}</p>
                        <p>${hotreview.corp_type}</p>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="search-reviews">
            <h1>기업 리뷰</h1><br>
            <p>재직자가 알려주는<br>리얼한 기업리뷰</p><br>
            <input type="text" placeholder="어떤 기업의 리뷰가 궁금하신가요?">
            <button>🔍</button>
        </div>
    </div>

    <div class="search-container">
        <div class="review-keysearch">
            <h2>키워드로 리뷰 찾기</h2>
            <div class="keywords">
                <div># 업무 복장 자유로움</div>
                <div># 연봉 인상률 높음</div>
                <div># 남성직원 비율 높음</div>
                <div># 여성직원 비율 높음</div>
                <div># 복지제도</div>
                <div># 워라벨</div>
                <div># 자율출퇴근</div>
                <div># 회식없음</div>
            </div>
            <h3>선택된 키워드</h3>
            <div class="selected-keywords">
                <!-- 선택된 키워드가 여기에 추가됨 -->
            </div>
            <button id="searchBtn">조건 검색</button>
        </div>

        <div class="reviews">
            <!-- 검색 결과가 여기에 표시됨 -->
            <c:forEach var="review" items="${reviews}">
                <div class="review-list">
                    <img src="기업로고.png" alt="기업 로고">
                    <div class="review-content">
                        <p>${review.corp_name}</p>
                        <p>${review.corp_type}</p>
                        <p>#키워드 #키워드 #키워드</p>
                    </div>
                    <div class="view-count">(조회수) ${review.views}</div>
                    <button class="favorite-button">관심 기업 ☆</button>
                </div>
            </c:forEach>
        </div>

        <div class="pagination">
            <a href="#">이전</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">다음</a>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 기업 리뷰. All rights reserved.</p>
    </div>
</div>

<script>
    $(document).ready(function() {
        const keywords = $('.keywords div');
        const selectedKeywordsContainer = $('.selected-keywords');
        const searchBtn = $('#searchBtn');
        const reviewsContainer = $('.reviews');
        
        // 키워드 클릭시 selected 로 변경
        keywords.click(function() {
            if (!$(this).hasClass('selected')) {
                $(this).addClass('selected');
                addSelectedKeyword($(this).text());
            }
        });

        // 선택된 키워드 x버튼 달아서 선택된 키워드 칸에 보이게 함
        function addSelectedKeyword(text) {
            const keywordDiv = $('<div></div>').text(text);
            const removeBtn = $('<span class="remove">X</span>');
            removeBtn.click(function() {
                $(this).parent().remove();
                deselectKeyword(text);
            });
            keywordDiv.append(removeBtn);
            selectedKeywordsContainer.append(keywordDiv);
        }

        function deselectKeyword(text) {
            keywords.each(function() {
                if ($(this).text() === text) {
                    $(this).removeClass('selected');
                }
            });
        }

        // 조건 선택 버튼 클릭시 선택된 리스트만 보임
        searchBtn.click(function() {
            const selectedKeywords = $('.selected-keywords div');
            const keywordsArray = $.map(selectedKeywords, function(keyword) {
                return $(keyword).text().replace('X', '').trim();
            });

            $.ajax({
                url: '/search',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({ keywords: keywordsArray }),
                success: function(data) {
                    reviewsContainer.empty();
                    $.each(data, function(index, review) {
                        const reviewDiv = $('<div class="review-list"></div>').html(`
                            <img src="기업로고.png" alt="기업 로고">
                            <div class="review-content">
                                <p>${review.corp_name}</p>
                                <p>${review.corp_type}</p>
                                <p>#키워드 #키워드 #키워드</p>
                            </div>
                            <div class="view-count">(조회수) ${review.views}</div>
                            <button class="favorite-button">관심 기업 ☆</button>
                        `);
                        reviewsContainer.append(reviewDiv);
                    });
                },
                error: function(xhr, status, error) {
                    console.error('Error:', error);
                }
            });
        });
    });
</script>
</body>
</html>