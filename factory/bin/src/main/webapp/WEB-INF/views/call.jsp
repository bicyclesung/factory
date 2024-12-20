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
              <th>번호</th>
              <th>이름</th>
              <th>직위</th>
              <th>전화번호</th>
              <th>비고</th>
              <th>수정</th>
              <th>삭제</th>
            </tr>
          </thead>
          <tbody id="list">
           <c:forEach items="${allcall}" var="a">
            <tr id="callall" style="background-color: #f9f9f9">
              <td>${a.idx}</td>
              <td  class="editable"
                contenteditable="true"
                data-id="${a.idx}"
                data-field="name">${a.name}</td>
              <td >${a.role}</td>
              <td  class="editable"
                contenteditable="true"
                data-id="${a.idx}"
                data-field="phone" >${a.phone}</td>
              <td
                class="editable"
                contenteditable="true"
                data-id="${a.idx}"
                data-field="note"
              >
                ${a.note}
              </td>
              <td class="button-cell">
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
