<%-- 
    Document   : SXYXXLFooter
    Created on : Feb. 5, 2023, 11:22:44 a.m.
    Author     : Sheng Xin, Yingqi Xu, Xiangdong Li
--%>


<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
    <%
      GregorianCalendar cal = new GregorianCalendar();
    %>

        <footer>
            <p>&copy; Copyright <% out.print(cal.get(Calendar.YEAR));%>  Sheng Xin, Yingqi Xu, Xiangdong Li</p> 
        </footer>
    </body>
</html>
