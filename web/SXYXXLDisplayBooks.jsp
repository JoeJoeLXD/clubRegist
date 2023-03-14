<%-- 
    Document   : SXYXXLDisplayBooks
    Created on : Mar. 8, 2023, 8:18:04 p.m.
    Author     : Sheng Xin, Yingqi Xu, Xiangdong Li
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="date" class="java.util.Date" />--%>
<%--<%@page import="club.business.Book"%>
<%@ page import="club.data.BookIO" %>
<%@page import="java.util.ArrayList"%>
<% ArrayList books = (ArrayList)request.getAttribute("books");%>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="SXYXXLBanner.jsp" %>
<h1>List of Books</h1><br>
<table>
  <thead>
    <tr>
      <th>Code</th>
      <th>Description</th>
      <th>Quantity</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="book" items="${requestScope.books}">
      <tr>
        <td>${book.code}</td>
        <td>${book.description}</td>
        <td>${book.quantity}</td>
      </tr>
    </c:forEach>
  </tbody>
</table><br>


<form action="SXYXXLAddBook.jsp" >
    <input type="submit" value="Add Book">
 </form>

<%@ include file="SXYXXLFooter.jsp" %>

