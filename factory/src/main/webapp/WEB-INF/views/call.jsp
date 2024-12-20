<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>P04_Call</title>
    <link rel="stylesheet" href="/call.css" />
    <title>비상연락망</title>
    <link rel="stylesheet" href="/style/call.css" />
  </head>
  <body>
    <!-- view -->
    <div alt="call-container" id="globals-container">
      <!-- header -->
      <header alt="헤더" style="background-color: #0b0c0cd8; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);;">
        <!-- 부가기능 탭 -->
        <nav alt="부가기능 탭">
          <div alt="a 컨테이너">
            <a href="/CCTV_Monitor" style="font-size: 11.8pt">CCTV모니터</a>
          </div>
          <div class="vertical-line"></div>
          <div alt="a 컨테이너">
            <a href="/SafetyRules" style="font-size: 11.8pt">안전수칙</a>
          </div>
          <div class="vertical-line"></div>

          <div alt="a 컨테이너">
            <a href="/mod_Info" style="font-size: 11.8pt">정보 등록</a>
          </div>
        </nav>
      </header>
      <!-- <div class="input-form-container">
      <h2>새 연락처 추가</h2>
      <div class="input-group">
        <input type="text" id="name" placeholder="이름" required />
        <input type="text" id="role" placeholder="직위" required />
        <input type="text" id="phone" placeholder="전화번호" required />
        <input type="text" id="note" placeholder="비고" />
        <button type="button" id="add-contact-btn">추가</button>
      </div>
    </div> -->

    <form id="call_frm" action="/call" method="Get" style="display: inline">
      <div class="contact-table-container">
        <h1>보안팀 비상연락망</h1>
        <table>
          <thead>
            <tr>
              <th class="th-border">번호</th>
              <th class="th-border">이름</th>
              <th class="th-border">직위</th>
              <th class="th-border">전화번호</th>
              <th class="th-border">비고</th>
              <th class="th-border">수정</th>
              <th>삭제</th>
            </tr>
          </thead>
          <tbody id="list">
           <c:forEach items="${allcall}" var="a">
            <tr id="callall" style="background-color: #f9f9f9">
              <td class="td-border">${a.idx}</td>
              <td class="td-border">${a.name}</td>
              <td class="td-border">${a.role}</td>
              <td class="td-border">${a.phone}</td>
              <td
                class="editable td-border"
                contenteditable="true"
                data-id="${a.idx}"
                data-field="note"
              >
                ${a.note}
              </td>
              <td class="button-cell td-border">
                <button
                  type="button"
                  class="add-contact"
                  onclick="callbyupdate('${a.idx}')"
                >
                  수정
                </button>
              </td>
              <td class="button-cell">
                <button
                  type="button"
                  class="delete-button"
                  onclick="callbydelete('${a.idx}')"
                >
                  삭제
                </button>
              </td>
            </tr>
             </c:forEach>
          </tbody>
        </table>
      </div>
    </form>
    <script src="/js/call.js"></script>
  </body>
</html>
