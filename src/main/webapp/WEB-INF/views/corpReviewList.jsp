<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>기업 리뷰</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f9ff;
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
        .header, .footer {
            text-align: center;
            margin-bottom: 20px;
        }
        .popular-reviews, .review-search {
            margin-bottom: 20px;
        }
        .popular-reviews img, .review-search img {
            max-width: 100%;
        }
        .review-search input[type="text"] {
            width: calc(100% - 40px);
            padding: 10px;
            margin-bottom: 20px;
        }
        .review-search .keywords, .reviews {
            display: flex;
            flex-wrap: wrap;
        }
        .keywords div, .reviews div {
            flex: 1 1 30%;
            margin: 5px;
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
            background-color: #f9f9f9;
        }
        .reviews div {
            background-color: #fff;
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
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>기업 리뷰</h1>
            <p>제작자가 알려주는 리얼한 기업리뷰</p>
            <input type="text" placeholder="어떤 기업의 리뷰가 궁금하신가요?">
        </div>

        <div class="popular-reviews">
            <h2>인기 기업리뷰</h2>
            <div>
                <img src="기업로고.png" alt="기업 로고">
                <p>--- 기업명 ---</p>
                <p>--- 기업직종 ---</p>
            </div>
            <div>
                <img src="기업로고.png" alt="기업 로고">
                <p>--- 기업명 ---</p>
                <p>--- 기업직종 ---</p>
            </div>
            <div>
                <img src="기업로고.png" alt="기업 로고">
                <p>--- 기업명 ---</p>
                <p>--- 기업직종 ---</p>
            </div>
        </div>

        <div class="review-search">
            <h2>키워드로 리뷰 찾기</h2>
            <div class="keywords">
                <div># 인구 복구 자유롭슴</div>
                <div># 회식시간</div>
                <div># 키워드</div>
                <div># 키워드</div>
                <div># 키워드</div>
                <div># 키워드</div>
            </div>
            <button>조건 검색</button>
        </div>

        <div class="reviews">
            <div>
                <h3>Good Job</h3>
                <p>웹 서버 개발</p>
                <p>--- 기업명 ---</p>
                <p>--- 기업직종 ---</p>
                <p>조회수: 616</p>
                <button>관심 기업</button>
            </div>
            <div>
                <p>--- 기업 로고 ---</p>
                <p>--- 기업명 ---</p>
                <p>--- 기업직종 ---</p>
                <p>조회수: 314</p>
                <button>관심 기업</button>
            </div>
            <div>
                <p>--- 기업 로고 ---</p>
                <p>--- 기업명 ---</p>
                <p>--- 기업직종 ---</p>
                <p>조회수: 112</p>
                <button>관심 기업</button>
            </div>
        </div>

        <div class="pagination">
            <a href="#">이전</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">다음</a>
        </div>

        <div class="footer">
            <p>&copy; 2024 기업 리뷰. All rights reserved.</p>
        </div>
    </div>
</body>
</html>