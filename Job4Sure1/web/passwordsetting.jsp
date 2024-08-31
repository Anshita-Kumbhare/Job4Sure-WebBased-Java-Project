<%@include file="webguard.jsp"%>
<html>
    <link href="style.css" rel="stylesheet"/>
    <body>
        <%@include  file="header.jsp"%>
        
        
        <br><br>
        <div>
        <form action="passwordsettingcode.jsp">
        <table  cellspacing="10" cellpadding="10" align="center" border="0"  class="passwordsettingtheme">
            <tr align="center" >
                <td colspan="4"><h2>UPDATE PASSWORD</h2></td>
            </tr>
            <tr>
                <td>Login Id</td>
                <td><input type="text" name="id" class="texttheme"></td>
                
            </tr>
            <tr>
                 <td>Old Password</td>
                <td><input type="password" name="oldpwd" class="texttheme"></td>
            </tr>
             <tr>
                 <td>New Password</td>
                <td><input type="password" name="newpwd" class="texttheme"></td>
            </tr>
             <tr>
                 <td>Confirm Password</td>
                <td><input type="password" name="cnfmpwd" class="texttheme"></td>
            </tr>
                
                <tr align="center">
                    <td colspan="4">
                        <input type="submit" value="SUBMIT">
                    </td>
                </tr>
            </table>
        </form>
            </div>
    </body>         
</html>