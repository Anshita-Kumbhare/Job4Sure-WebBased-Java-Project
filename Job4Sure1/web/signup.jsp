<html>
    <link href="style.css" rel="stylesheet"/>
    <body>
        <%@include  file="header.jsp"%>
        
        <br><br>
        <form action="connect" method="post">
        <table  cellspacing="10" cellpadding="10" align="center" border="0" margin-top="500" class="registrationformtheme">
            <tr align="center" >
                <td colspan="4"><h2> GET REGISTERED - JOB PROVIDER & JOB SEEKER</h2></td>
            </tr>
            <tr>
                <td>User Id</td>
                <td><input type="text" name="uid" class="texttheme"></td>
                <td>Password</td>
                <td><input type="password" name="pwd" class="texttheme"></td>
                
            </tr>
            <tr>
                <td>First Name</td>
                <td><input type="text" name="fname" class="texttheme"></td>
                <td>Last Name</td>
                <td><input type="text" name="lname" class="texttheme"></td>
                
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="number" name="cont" class="texttheme"></td>
                <td>Aadhar No</td>
                <td><input type="number" name="aadhar" class="texttheme"></td>
                
            </tr>
            <tr>
                <td>Email Id</td>
                <td><input type="email" name="mail" class="texttheme"></td>
                <td>DOB</td>
                 <td><input type="date" name="dob" class="texttheme"></td>
               
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="text" name="gender" class="texttheme"></td>
                 <td>Address</td>
                <td><textarea name="address" class="texttheme"></textarea></td>
                 
            </tr>
            <tr>
               
                <td>City</td> 
                <td><select type="city" name="city" class="texttheme">
                        <option>Select city</option><!-- comment -->
                        <option>Indore</option> 
                        <option>Dewas</option> 
                        <option>Ujjain</option> 
                    </select></td>   
                    <td>State</td> 
                <td><select name="state" class="texttheme">
                        <option>Select state</option><!-- comment -->
                        <option>Madhya Pradesh</option>  
                     </select></td>      
                </tr> 
        <tr>
           
            <td>Post</td> 
                <td><select name="post" class="texttheme">
                        
                        <option>Select post</option><!-- comment -->
                        <option>Job Seeker</option> 
                        <option>Job Provider</option> 
                     </select></td>      
                </tr>           
                <tr align="center">
                    <td colspan="4">
                        <input type="submit" value="SUBMIT">
                    </td>
                </tr>
        </table>  
    </form>
    </body>        
</html>