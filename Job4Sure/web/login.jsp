<html>
    <link href="style.css" rel="stylesheet">
    <body>
        <%@include  file="header.jsp"%>
        <%
            Cookie ck[]=request.getCookies();
            String value1="";
            if(ck!=null){
                for(int i=0;i<ck.length;i++)
                {
                    if(ck[i].getName().equals("id"))
                    value1=ck[i].getValue();
                }
            }
            Cookie cok[]=request.getCookies();
            String value2="";
            if(cok!=null){
                for(int i=0;i<cok.length;i++)
                {
                    if(cok[i].getName().equals("pass"))
                    value2=cok[i].getValue();
                }
            }
        %>
       
        <br><br>
        <div class="loginformtheme" >
         <form action="loginlogicalcode.jsp">
        <table  cellspacing="10" cellpadding="10" align="center" border="0" style="font-weight: bold;">
            <tr align="center" >
                <td colspan="4"><h2> GET REGISTERED <br> JOB PROVIDER & JOB SEEKER</h2></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>Login Id</td>
                <td><input type="text" name="uid" value="<%=value1%>" class="texttheme"></td>
                
            </tr>
            <tr>
                 <td>Password</td>
                <td><input type="password" name="pwd" value="<%=value2%>" class="texttheme"></td>
            </tr>
                <tr align="center">
                    <td colspan="4">
                        <input type="submit" value="SUBMIT">
                    </td>
                </tr>
            </table>
            </div>
    </form>
    </body>         
</html>