<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>P04_Monitor</title>
    <!-- 전역 style -->
    <link rel="stylesheet" href="/style/globals.css" />
    <link rel="stylesheet" href="/style/header.css" />

    <!-- 지역 style -->
    <link rel="stylesheet" href="/style/P04_Monitor.css" />
  </head>
   <body>
    <!-- View -->
    <div alt="전역 컨테이너" id="globals-container">
      <!-- header -->
      <header alt="헤더">
        <section alt="로고 컨테이너">
          <form action="/Main" method="get">
            <button alt="P001_Main으로 이동" type="submit">
              <!-- <button alt="임의설정"> -->
              <img alt="로고 이미지" src="/imgs/Logo.jpg" />
            </button>
          </form>
        </section>
        <nav alt="부가기능 탭">
          <!-- 팝업 animate() Script {location 이동 없음!} -->
          <div alt="button 컨테이너">
            <button alt="안전수칙" id="btn-safetyRules" href="#">
              <span>안전수칙</span>
            </button>
          </div>
          <div alt="탭 세로선" class="vertical-line"></div>
          <div alt="button 컨테이너">
            <button alt="프로토콜" id="btn-protocol" href="#">
              <span>프로토콜</span>
            </button>
          </div>
          <div alt="탭 세로선" class="vertical-line"></div>
          <div alt="button 컨테이너">
            <button alt="연락망" id="btn-EEIF" href="#">
              <span>연락망</span>
            </button>
          </div>
          <div alt="탭 세로선" class="vertical-line"></div>
          <div alt="button 컨테이너">
            <button alt="저장된 로그" id="btn-savedLog" href="#">
              <span>저장된 로그</span>
            </button>
          </div>
        </nav>

        <!-- top-bar : 투명함, 고정됨 -->
        <top-bar alt="화면 수 조절 바">
          <!-- 화면 수 조절 -->
          <!-- <div alt="화면 수 조절 컨테이너">
          <div alt="제외 화면 표시">제외 화면:<br /><br /><span></span></div>
        </div> -->

          <section alt="화면 수 조절 버튼">
            <button alt="노출 화면 초기화" id="cam-all">
              모든 화면<br />되돌리기
            </button>
          </section>
          <section alt="화면 수 조절 버튼">
            <button alt="화면 제외 실행" id="cam-sel">
              이 화면<br />제외하기
            </button>
          </section>
        </top-bar>
      </header>

      <main alt="메인콘텐츠">
        <article alt="실시간 모니터링 정보&화면 구역">
          <div class="blink-controls">
            <!-- 탐지 대상 지정 -->
            <label for="targetId">이상<br />탐지<br />대상<br />선택</label>
            <select id="targetId">
              <option value="#c1">카메라 1</option>
              <option value="#c2">카메라 2</option>
              <option value="#c3">카메라 3</option>
              <option value="#c4">카메라 4</option>
              <option value="#c5">카메라 5</option>
              <option value="#c6">카메라 6</option>
              <option value="#c7">카메라 7</option>
              <option value="#c8">카메라 8</option>
              <option value="#c9">카메라 9</option>
              <option value="#c10">카메라 10</option>
              <option value="#c11">카메라 11</option>
              <option value="#c12">카메라 12</option>
              <option value="#c13">카메라 13</option>
              <option value="#c14">카메라 14</option>
              <option value="#c15">카메라 15</option>
              <option value="#c16">카메라 16</option>
            </select>
            <div alt="탭 세로선" class="vertical-line"></div>
            <button id="blink-start-warning" class="btn-onTheCase">
              이상 확인 중
            </button>
            <button id="blink-start-danger" class="btn-onTheCase">
              이상 발생
            </button>
            <div alt="탭 세로선" class="vertical-line"></div>
          </div>
          <!-- 모니터링 구역 -->
          <div alt="모니터링 구역" id="M-area">
            <!-- CAM-container 항목들 -->
            <section id="c1" class="CAM-container" alt="개별 화면 컨테이너">
              <!-- <img
                src="/Demo/src/main/resources/static/imgs/c1.jpg"
                alt="화면1"
              /> -->
              <!-- <video autoplay muted loop>
                <source
                  alt="화면1"
                  type="video/mp4"
                  src="/src/main/resources/static/videos/dummyVdo(1)_WD_In_W11W24_0009_20201124_14.mp4"
                />
                브라우저가 동영상을 지원하지 않습니다.
              </video> -->
              <img src="/imgs/c1.jpg" alt="화면1" />
            </section>
            <section id="c2" class="CAM-container" alt="개별 화면 컨테이너">
              <!-- <img
                src="/Demo/src/main/resources/static/imgs/c2.jpg"
                alt="화면2"
              /> -->
              <!-- <video autoplay muted loop>
                <source
                  alt="화면2"
                  type="video/mp4"
                  src="/src/main/resources/static/videos/dummyVdo(2)_WD_In_W11W24_0019_20201125_14.mp4"
                />
                브라우저가 동영상을 지원하지 않습니다.
              </video> -->
              <img src="/imgs/c2.jpg" alt="화면2" />
            </section>
            <section id="c3" class="CAM-container" alt="개별 화면 컨테이너">
              <!-- <img
                src="/Demo/src/main/resources/static/imgs/c3.jpg"
                alt="화면3"
              /> -->
              <!-- <video autoplay muted loop>
                <source
                  alt="화면3"
                  type="video/mp4"
                  src="/src/main/resources/static/videos/dummyVdo(3)_WD_In_W11W24_0039_20201201_13.mp4"
                />
                브라우저가 동영상을 지원하지 않습니다.
              </video> -->
              <img src="/imgs/c3.jpg" alt="화면3" />
            </section>
            <section id="c4" class="CAM-container" alt="개별 화면 컨테이너">
              <img alt="화면4" type="video/mp4" src="/imgs/c4.jpg" />
            </section>
            <section id="c5" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c5.jpg" alt="화면5" />
            </section>
            <!-- 이상 탐지! -->
            <section id="c6" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c6.jpg" alt="화면6" />
            </section>
            <section id="c7" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c7.jpg" alt="화면7" />
            </section>
            <section id="c8" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c8.jpg" alt="화면8" />
            </section>
            <section id="c9" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c9.jpg" alt="화면9" />
            </section>
            <section id="c10" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c10.jpg" alt="화면10" />
            </section>
            <section id="c11" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c11.jpg" alt="화면11" />
            </section>
            <section id="c12" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c12.jpg" alt="화면12" />
            </section>
            <section id="c13" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c13.jpg" alt="화면13" />
            </section>
            <section id="c14" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c14.jpg" alt="화면14" />
            </section>
            <section id="c15" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c15.jpg" alt="화면15" />
            </section>
            <section id="c16" class="CAM-container" alt="개별 화면 컨테이너">
              <img src="/imgs/c16.jpg" alt="화면16" />
            </section>
          </div>
        </article>
        <aside alt="실시간 모니터링 로그 구역-사이드 바">
          <!-- 로그 비우기 -->
          <div alt="로그 비우기 컨테이너" class="log-toggle">
            <button alt="로그 비우기 버튼" style="border: none">🗑️</button>
            <div alt="프로토콜 버튼 컨테이너" id="on-the-case">
              <button alt="신고 문자 발송" id="report">119 신고</button>
              <button alt="상황 종료" id="stop-blink">상황 종료</button>
            </div>
          </div>
          <br />
          <!-- 로그 토글 -->
          <div alt="로그 토글 컨테이너" class="log-toggle">
            <button alt="로그 토글 버튼">🔕</button>
          </div>
          <article alt="로그 컨테이너" id="log-tuple-container">
            <!-- 기록이 발생할 때마다 .log-tuple 추가 -->
          </article>
        </aside>
      </main>
    </div>

    <!-- 팝업 컨테이너들: 안전수칙, 프로토콜, 연락망, 저장된 로그 -->
    <!-- 각 팝업은 초기 숨김 상태로 설정됨 -->
    <div alt="안전수칙 팝업" id="modal-safetyRules" class="popup">
      <button class="closePopup"><span>닫기</span></button>
      <div id="content-safetyRules" class="popup-content_container">
        <article class="popup-content"></article>
      </div>
    </div>

    <div alt="프로토콜 팝업" id="modal-protocol" class="popup">
      <button class="closePopup"><span>닫기</span></button>
      <div id="content-protocol" class="popup-content_container">
        <article class="popup-content"></article>
      </div>
    </div>

    <div alt="연락망 팝업" id="modal-EEIF" class="popup">
      <button class="closePopup"><span>닫기</span></button>
      <div id="content-EEIF" class="popup-content_container">
        <article class="popup-content"></article>
      </div>
    </div>

    <div alt="저장된로그 팝업" id="modal-savedLog" class="popup">
      <button class="closePopup"><span>닫기</span></button>
      <div id="content-savedLog" class="popup-content_container">
        <article class="popup-content"></article>
      </div>
    </div>

    <!-- jQuery -->
    <script src="/js/jquery-3.6.0.js"></script>
    <!-- scripts -->
    <script src="/js/P04_Monitor.js"></script>
  </body>
</html>
