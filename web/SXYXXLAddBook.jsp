<%-- 
    Document   : SXYXXLAddBook
    Created on : Mar. 8, 2023, 8:40:34 p.m.
    Author     : xd18
--%>

<%@ include file="SXYXXLBanner.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <br><h2>Add a Book</h2><br>     
<c:if test="${not empty requestScope.errors}">
    <div id="error">
   <h3>Please correct the following errors:</h3> 
  <c:forEach var="error" items="${requestScope.errors}">
    <c:out value="${error}" /><br />
  </c:forEach>
    </div>  <br>
</c:if>

  <form method="post" action="SXYXXLAddBook">
    <div class="form-group">
      <label for="code">Code:</label>
      <input type="text" class="form-control" id="code" name="code" style="width: 100px" value="${book.code}">
    </div>
    <div class="form-group">
      <label for="description">Description:</label>
      <input type="text" class="form-control" id="description" name="description" style="width: 400px" value="${book.description}">
    </div>
    <div class="form-group">
      <label for="quantity">Quantity:</label>
      <input type="text" class="form-control" id="quantity" name="quantity" value="0" style="width: 50px" value="${book.quantity}" >
    </div>
      <label>&nbsp;</label>
   <input type="submit" value="Save">
   <input type="button" value="Cancel" onclick="window.location='SXYXXLDisplayBooks'">
  </form>
</div>

<%@ include file="SXYXXLFooter.jsp" %>