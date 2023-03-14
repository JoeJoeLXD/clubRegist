<%-- 
    Document   : SXXYXLIndex
    Created on : Feb. 5, 2023, 11:21:00 a.m.
    Author     : Sheng Xin, Yingqi Xu, Xiangdong Li
--%>
<jsp:useBean id="date" class="java.util.Date" />
<jsp:include page="/SXYXXLBanner.jsp" />
        <section>
            <h2>Java Web Technologies: Section 2</h2><br>
            <p>Pair Programing Team: Sheng Xin, Yingqi Xu, Xiangdong Li</p><br>
            <h2>Assignment 2</h2>
            <h2>Driver: Xiangdong Li</h2>
            <h2>Observer: Sheng Xin, Yingqi Xu</h2><br>
            <p>Current Date and Time: </p>
            <h2><%out.println(date); %></h2>
        </section>
<jsp:include page="/SXYXXLFooter.jsp" />
  