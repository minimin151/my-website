<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반값 수강료 마감</title>
    <!-- Pretendard 폰트 로드 -->
    <link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" rel="stylesheet">
    <style>
        /* 기본 스타일 */
        :root {
            --primary-color: #ff4f03;
            --text-color: white;
            --countdown-bg: rgba(255, 255, 255, 0.2);
        }

        body {
            font-family: 'Pretendard', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* 상단 고정 바 */
        #countdown-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: black;
            padding: 10px 20px;
            z-index: 1000;
            overflow: hidden;
        }

        #countdown-container div {
            display: flex;
            align-items: center;
            color: var(--text-color);
            white-space: nowrap;
        }

        #countdown-text {
            font-size: 2.5vw; /* 기본 폰트 크기: 뷰포트 너비의 2.5% */
            font-weight: bold;
            margin-right: 10px;
        }

        /* 타이머 박스 */
        #countdown {
            display: flex;
            gap: 2px;
        }

        .count-box {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: var(--countdown-bg);
            color: red;
            font-size: 2.5vw;
            font-weight: bold;
            padding: 0 4px;
            border-radius: 3px;
            min-width: 20px;
            text-align: center;
        }

        /* 모바일 뷰 */
        @media (max-width: 768px) {
            #countdown-text {
                font-size: 4vw; /* 모바일에서 폰트 크기를 조금 줄임 */
            }

            .count-box {
                font-size: 4vw;
                padding: 0 3px;
            }
        }

        /* 태블릿 뷰 */
        @media (min-width: 769px) and (max-width: 1024px) {
            #countdown-text {
                font-size: 2.5vw;
            }

            .count-box {
                font-size: 2.5vw;
                padding: 0 4px;
            }
        }

        /* 데스크톱 뷰 */
        @media (min-width: 1025px) {
            #countdown-text {
                font-size: 20px;
            }

            .count-box {
                font-size: 20px;
                padding: 0 6px;
                min-width: 30px;
            }
        }
    </style>
</head>
<body>
    <!-- 상단 고정 바 -->
    <div id="countdown-container">
        <!-- 반값 수강료 및 타이머 영역 -->
        <div>
            <span id="countdown-text">🚨 반값 수강료 마감까지</span>
            <!-- 네모 박스에 숫자를 넣은 타이머 영역 -->
            <div id="countdown">
                <!-- 시간 부분 -->
                <div class="count-box">0</div>
                <div class="count-box">0</div>
                <span style="color: red; font-size: 2.5vw; font-weight: bold; padding: 0 3px;">:</span>
                <!-- 분 부분 -->
                <div class="count-box">0</div>
                <div class="count-box">0</div>
                <span style="color: red; font-size: 2.5vw; font-weight: bold; padding: 0 3px;">:</span>
                <!-- 초 부분 -->
                <div class="count-box">0</div>
                <div class="count-box">0</div>
            </div>
        </div>
    </div>

    <!-- 메인 콘텐츠 영역 -->
    <main style="padding-top: 80px; text-align: center;">
        <h1>웹사이트 콘텐츠 영역</h1>
        <p>여기에 여러분의 콘텐츠를 넣으세요.</p>
    </main>

    <script>
        // 카운트다운 타이머 설정
        function startCountdown(duration) {
            let timer = duration, hours, minutes, seconds;
            setInterval(function () {
                hours = Math.floor(timer / 3600);
                minutes = Math.floor((timer % 3600) / 60);
                seconds = timer % 60;

                // 각 숫자가 10보다 작을 때 앞에 0을 추가
                hours = hours < 10 ? "0" + hours : hours.toString();
                minutes = minutes < 10 ? "0" + minutes : minutes.toString();
                seconds = seconds < 10 ? "0" + seconds : seconds.toString();

                // 네모 박스에 각각 시간, 분, 초의 각 자리 숫자를 넣음
                const boxes = document.querySelectorAll('#countdown .count-box');
                boxes[0].textContent = hours[0];
                boxes[1].textContent = hours[1];
                boxes[2].textContent = minutes[0];
                boxes[3].textContent = minutes[1];
                boxes[4].textContent = seconds[0];
                boxes[5].textContent = seconds[1];

                if (--timer < 0) {
                    timer = 0; // 타이머가 0보다 작아지면 멈춤
                }
            }, 1000);
        }

        // 남은 시간 (1시간)
        window.onload = function () {
            let countdownTime = 60 * 60; // 1시간 (초 단위)
            startCountdown(countdownTime);
        };
    </script>
</body>
</html>


<a href='https://ifh.cc/v-F771dg' target='_blank'><img src='https://ifh.cc/g/F771dg.jpg' border='0'></a>
