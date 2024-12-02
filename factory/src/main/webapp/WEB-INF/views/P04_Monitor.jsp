<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CCTV Monitor</title>
    <link rel="stylesheet" href="<c:url value='style/styles.css'/>">
</head>
<body>
    <div class="container">
        <!-- 좌측 사이드바 -->
        <div class="left-sidebar">
            <h2>Camera Categories</h2>
            <ul>
                <li class="category">
                    <span>Category 1</span>
                    <ul class="sub-category">
                        <li draggable="true" data-img="<c:url value='/img/category1/img1.png' />">Camera 1</li> 
                        <li draggable="true" data-img="<c:url value='/img/category1/img2.png' />">Camera 1</li> 
                    </ul>
                </li>
                <li class="category">
                    <span>Category 2</span>
                    <ul class="sub-category">
                        <li draggable="true" data-img="<c:url value='/img/category2/img3.png' />">Camera 1</li>
                        <li Sdraggable="true" data-img="<c:url value='/img/category2/img4.png' />">Camera 1</li>
                    </ul>
                </li>
                <li class="category">
                    <span>Category 3</span>
                    <ul class="sub-category">
                        <li draggable="true" data-img="<c:url value='/img/category3/img5.png' />">Camera 1</li> 
                        <li draggable="true" data-img="<c:url value='/img/category3/img6.png' />">Camera 1</li>
                        <li draggable="true" data-img="<c:url value='/img/category3/img7.png' />">Camera 1</li>
                    </ul>
                </li>
            </ul>
        </div>

        <!-- 메인 화면 -->
        <div class="monitor">
            <div class="camera-grid" id="cameraGrid">
                <!-- 16 카메라 화면 -->
                <div class="camera dropzone" id="cam1">
                    <span class="camera-number">1번</span>
                </div>
                <div class="camera dropzone" id="cam2">
                    <span class="camera-number">2번</span>
                </div>
                <div class="camera dropzone" id="cam3">
                    <span class="camera-number">3번</span>
                </div>
                <div class="camera dropzone" id="cam4">
                    <span class="camera-number">4번</span>
                </div>
                <div class="camera dropzone" id="cam5">
                    <span class="camera-number">5번</span>
                </div>
                <div class="camera dropzone" id="cam6">
                    <span class="camera-number">6번</span>
                </div>
                <div class="camera dropzone" id="cam7">
                    <span class="camera-number">7번</span>
                </div>
                <div class="camera dropzone" id="cam8">
                    <span class="camera-number">8번</span>
                </div>
                <div class="camera dropzone" id="cam9">
                    <span class="camera-number">9번</span>
                </div>
                <div class="camera dropzone" id="cam10">
                    <span class="camera-number">10번</span>
                </div>
                <div class="camera dropzone" id="cam11">
                    <span class="camera-number">11번</span>
                </div>
                <div class="camera dropzone" id="cam12">
                    <span class="camera-number">12번</span>
                </div>
                <div class="camera dropzone" id="cam13">
                    <span class="camera-number">13번</span>
                </div>
                <div class="camera dropzone" id="cam14">
                    <span class="camera-number">14번</span>
                </div>
                <div class="camera dropzone" id="cam15">
                    <span class="camera-number">15번</span>
                </div>
                <div class="camera dropzone" id="cam16">
                    <span class="camera-number">16번</span>
                </div>
            </div>
        </div>

        <!-- 우측 사이드바 -->
        <div class="right-sidebar">
            <h2>Layout Options</h2>
            <button class="layout-btn" data-layout="16">16 Screens</button>
            <button class="layout-btn" data-layout="4">4 Screens</button>
            <button class="layout-btn" data-layout="1">1 Screen</button>
            <button class="reset-btn">Reset All</button>
        </div>
    </div>

    <script src="<c:url value='/js/scripts.js' />">	</script>
</body>
</html>
