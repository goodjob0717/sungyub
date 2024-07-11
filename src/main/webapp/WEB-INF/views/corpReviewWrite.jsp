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
        .writereview-corpinfo {
            display: flex;
            align-items: center;
            border: 1px solid #b1b1b1;
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #ffffff;
        }
        .writereview-corpinfo img {
            width: 100px;
            height: 100px;
            margin-right: 20px;
        }
        .corpinfo-content {
            flex-grow: 1;
        }
        .corpinfo-content p {
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
    <div class="writereview-corpinfo">
        <img src="기업로고.png" alt="기업 로고">
        <div class="corpinfo-content">
            <p>${review.corp_name}</p>
            <p>${review.corp_type}</p>
            <p>#키워드 #키워드 #키워드</p>
        </div>
        <div class="view-count">(조회수) ${review.views}</div>
        <button class="favorite-button">관심 기업 ☆</button>
    </div>

    <div class="search-container">
        <div class="review-keysearch">
            <h2>기업 특징 CheckList</h2>
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
        });
    </script>
</body>
</html>