<%-- 
    Document   : SXYXXLRegister
    Created on : Feb. 5, 2023, 11:22:07 a.m.
    Author     : Sheng Xin, Yingqi Xu, Xiangdong Li
--%>
    <jsp:include page="/SXYXXLBanner.jsp" />
        <section>
            <h2>New Member Registration Form</h2><br>
                <form action="SXYXXLDisplayMember.jsp" method="post">
                    <label>Full Name:</label>
                    <input type="text" name="fullName" value="" style="width: 200px" required><br><br>        
                    <label>Email:</label>
                    <input type="email" name="email" value="" style="width: 300px" required><br><br>
                    <label>Phone:</label>
                    <input type="text" name="phone" value="" style="width: 100px" required><br><br>
                    <label>IT Program:</label>
                    <select name="itProgram">
                        <option value="CAS">CAS</option>
                        <option value="SQATE">SQATE</option>
                        <option value="CPA">CPA</option>
                        <option value="CP">CP</option>
                        <option value="ITID">ITID</option>
                        <option value="CAD">CAD</option>
                        <option value="ITSS">ITSS</option>
                    </select><br><br>
                    <label>Year Level:</label>
                    <select name="yearLevel">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select><br><br>
                    <label>&nbsp;</label>
                    <input type="submit" value="Register Now!">
                    <input type="reset" value="Reset">
                </form>
        </section>
    <jsp:include page="/SXYXXLFooter.jsp" />
    
