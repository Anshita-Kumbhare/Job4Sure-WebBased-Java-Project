<html>
    <link href="style.css" rel="stylesheet">
    <body>
        <div>
        <%@include file="header.jsp" %>
        <div class="contactdiv">
            <table cellpadding="20" style="margin-left: 50px; margin-top: 30px;">
                <tr><td><img src="image/location.png" style="height: 150px; width: 150px;"></td>
                    <td >201, Western Business Center,<br>New Palasia,Indore(MP)-452001</td>
                </tr>
                <tr><td><img src="image/phone.png" style="height: 150px; width: 150px;"></td>
                    <td>+91-1234567890<br>+0987654321</td>
                </tr>
                <tr><td><img src="image/email.png" style="height: 150px; width: 150px;"></td>
                    <td>info@job4sure.com<br>admin@job4sure.com</td>
                </tr>
            </table>
        </div>
        
        <div style="margin-left: 600px;margin-top: -580px">
        <form action="contactlogicalcode.jsp">
        <br><br>
        
        <table  cellspacing="10" cellpadding="10" align="center" 
                border="0"  class="contactformtheme" >
            <tr align="center" >
                <td colspan="4"><h2> CONTACT US</h2></td>
            </tr><!-- comment -->
            <tr>
                <td>First Name</td>
                <td><input type="text" name="fnm" class="texttheme"></td><!-- comment -->
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lnm"class="texttheme"></td>
                
            </tr>
            
            <tr>
                <td>Contact</td>
                <td><input type="number" name="con" class="texttheme"></td>
            </tr>
  
            <tr>
                <td>Purpose</td>
             <td><textarea name="pur" class="texttheme"></textarea></td>
            </tr>
            <tr>
                 <td>City</td> 
                <td><select name="city" class="texttheme">
                        <option>Select city</option><!-- comment -->
                        <option>Indore</option> 
                        <option>Dewas</option> 
                        <option>Ujjain</option>   
                    
                </tr>           
                <tr align="center">
                    <td colspan="4">
                        <input type="submit" value="SUBMIT" style="border: outset">
                    </td>
                </tr>
        </table>
        </form>
        </div>
        </div>
    </body>    
</html>