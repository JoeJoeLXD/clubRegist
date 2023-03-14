<%-- 
    Document   : SXYXXlDisplayMember.jsp
    Created on : Feb. 5, 2023, 4:09:43 p.m.
    Author     : Sheng Xin, Yingqi Xu, Xiangdong Li
--%>

    <jsp:include page="/SXYXXLBanner.jsp" />
        <section>
            <h1>Thanks for joining our club!</h1><br>
        
            <p>Here is the information that you entered:</p><br>
            <p><b>Full Name:</b> ${param.fullName}</p><br>
            <p><b>Email:</b> ${param.email}</p><br>
            <p><b>Phone:</b> ${param.phone}</p><br>
            <p><b>IT Program:</b> ${param.itProgram}</p><br>
            <p><b>Year Level:</b> ${param.yearLevel}</p><br>

            <p>To register another member, click on the Back button in your browser or</p>
            <p>the Return button shown below.</p>
            
            <form action="SXYXXLRegister.jsp" method="get">
                <input type="submit" value="Return">
            </form>
        </section>
    <jsp:include page="/SXYXXLFooter.jsp" />
    
