<%@include file="webguard.jsp"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet"%>

<%
    String userId=(String)session.getAttribute("session1");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
    PreparedStatement st=con.prepareStatement("select * from signuptable where userid=?");
    st.setString(1,userId);
    ResultSet rs=st.executeQuery();
    String fullName="";
    String photo="";
    String contact="";
    String aadharNo="";
    String emailId="";
    String dateOfBirth="";
    String gender="";
    String address="";
    String city="";
    String state="";
    String post="";
    if(rs.next())
    {    
     fullName=rs.getString(3);
     photo=rs.getString(4);
     contact=rs.getString(5);
     aadharNo=rs.getString(6);
     emailId=rs.getString(7);
     dateOfBirth=rs.getString(8);
     gender=rs.getString(9);
     address=rs.getString(10);
     city=rs.getString(11);
     state=rs.getString(12);
     post=rs.getString(13);
}
    %>
    
<html>
        <style>
        .tabtheme
         {
             font-size:20px;
             font-family:arial;
             text-align:center;
             background-color:rgba(143,98,52,0.9);
             text-transform: uppercase;
             height: 60px;
         }
                 
    
        body
        {
            background-image:url("images/Job4sure.png");
            background-repeat:no-repeat;
            background-size:100%;
            background-position: center;
            opacity: inherit;
        }
        .goto{
            background-color:blanchedalmond;
            text-align:center;
            font-size:30px;
            border-radius:30px;
            box-shadow: 7px 7px 7px black;
            font-weight: bold;
            border:outset;
            border-color:blue;
            text-decoration:none;
            color:black;
            text-transform:uppercase;
        }
        .change{
            height:400px;
            width:450px;
            
        }
        .link{
                          text-decoration:none;
                          color:white;
                      }
                      .showtable{
                background-color: rgba(255,239,212,0.7);
                border-color: black;
                border-width: 10px;
                border:inset;
                margin-top: -500px;
                margin-left: 700px;
            }
            h2{
            background-color:rgba(135,62,35,1.0);
            
            color:white;
            font-size:25px;
            font-family: arial;
            border-radius: 40px;
            height: 40px;
        }
        .texttheme
        {
            width:200px;
            height:25px;
            border:inset;
            border-color:brown;
        }
        </style>
    
        <body>
            <table width="100%" class="tabtheme">
                <tr>
                    <td><a href="home.jsp" class="link">Home</a></td>
                    <td><a href="postjob.jsp" class="link">Post Job</a></td>
                    <td><a href="complain.jsp" class="link">Send Complain</a></td>
                    <td><a href="updatejob.jsp" class="link">Job Status</a></td>
                    <td><a href="passwordsetting.jsp" class="link">Settings</a></td>
                    <td><a href="providerprofile.jsp" class="link">Profile</a></td>
                </tr>
            </table>
            <div>
                <h1>SETTINGS</h1>
            </div>
            <div>
                <table class="change" cellspacing="40px" cellpadding="20px">
                    <tr><td class="goto"><a href="loadprofile.jsp" style="text-decoration:none; color:black;">Update Profile</a></td></tr>
                    <tr><td class="goto"><a href="passwordsetting.jsp" style="text-decoration:none; color:black;">Update Password</td></tr>
                    <tr><td class="goto"><a href="destroysession.jsp" style="text-decoration:none; color:black;">Logout</td></tr>
                    <tr><td class="goto"><a href="deleteaccount.jsp" style="text-decoration:none; color:black;">Delete Account</td></tr>
                </table>
        
    <form action="updateprofile.jsp">
        <table  cellspacing="10" cellpadding="10" align="center" border="0" margin-top="500" class="showtable">
            <tr align="center" >
                <td colspan="4"><h2>USER PROFILE</h2></td>
            </tr>
            
            <tr>
                <td>Full Name</td>
                <td><input type="text" value="<%=fullName%>" name="fname" class="texttheme"></td>
                <td>Photo</td>
                <td><input type="file" value="<%=photo%>" name="photo" class="texttheme"></td>
                
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="number" value="<%=contact%>" name="cont" class="texttheme"></td>
                <td>Aadhar No</td>
                <td><input type="number" value="<%=aadharNo%>" name="aadhar" class="texttheme"></td>
                
            </tr>
            <tr>
                <td>Email Id</td>
                <td><input type="email" value="<%=emailId%>" name="mail" class="texttheme"></td>
                <td>DOB</td>
                 <td><input type="date" value="<%=dateOfBirth%>" name="dob" class="texttheme"></td>
               
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="text" value="<%=gender%>" name="gender" class="texttheme"></td>
                 <td>Address</td>
                <td><textarea name="address" value="<%=address%>" class="texttheme"></textarea></td>
                 
            </tr>
            <tr>
               
                <td>City</td> 
                <td><select type="city" value="<%=city%>" name="city" class="texttheme">
                        <option>Select city</option><!-- comment -->
                        <option>Indore</option> 
                        <option>Dewas</option> 
                        <option>Ujjain</option> 
                    </select></td>   
                    <td>State</td> 
                <td><select name="state" value="<%=state%>" class="texttheme">
                        <option>Select state</option><!-- comment -->
                        <option>Madhya Pradesh</option>  
                     </select></td>      
                </tr> 
        <tr>
           
            <td>Post</td> 
                <td><select value="post" name="post" class="texttheme">
                        
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