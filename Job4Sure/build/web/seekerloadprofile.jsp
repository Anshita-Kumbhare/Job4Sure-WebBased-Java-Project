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
            .cell{
                width:100px;
                hight:30px;
                text-align: center;
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
           <%@ include file="seekersetting.jsp"%>
    <form action="updateseekerprofile.jsp">
        <table  cellspacing="10" cellpadding="10" align="center" border="0" margin-top="500" class="showtable">
            <tr align="center" >
                <td colspan="4"><h2>USER PROFILE</h2></td>
            </tr>
            
            <tr>
                <td class="cell">Full Name</td>
                <td class="cell"><input type="text" value="<%=fullName%>" name="fname" class="texttheme"></td>
                <td class="cell">Photo</td>
                <td class="cell"><input type="file" value="<%=photo%>" name="photo" class="texttheme"></td>
                
            </tr>
            <tr>
                <td class="cell">Contact</td>
                <td class="cell"><input type="number" value="<%=contact%>" name="cont" class="texttheme"></td>
                <td class="cell">Aadhar No</td>
                <td class="cell"><input type="number" value="<%=aadharNo%>" name="aadhar" class="texttheme"></td>
                
            </tr>
            <tr>
                <td class="cell">Email Id</td>
                <td class="cell"><input type="email" value="<%=emailId%>" name="mail" class="texttheme"></td>
                <td class="cell">DOB</td>
                <td class="cell"><input type="date" value="<%=dateOfBirth%>" name="dob" class="texttheme"></td>
               
            </tr>
            <tr>
                <td class="cell">Gender</td>
                <td class="cell"><input type="text" value="<%=gender%>" name="gender" class="texttheme"></td>
                <td class="cell">Address</td>
                <td class="cell"><textarea name="address" value="<%=address%>" class="texttheme"></textarea></td>
                 
            </tr>
            <tr>
               
                <td class="cell">City</td> 
                <td class="cell"><select type="city" value="<%=city%>" name="city" class="texttheme">
                        <option>Select city</option><!-- comment -->
                        <option>Indore</option> 
                        <option>Dewas</option> 
                        <option>Ujjain</option> 
                    </select></td>   
                <td class="cell">State</td> 
                <td class="cell"><select name="state" value="<%=state%>" class="texttheme">
                        <option>Select state</option><!-- comment -->
                        <option>Madhya Pradesh</option>  
                     </select></td>      
                </tr> 
        <tr>
           
            <td class="cell">Post</td> 
            <td class="cell"><select value="post" name="post" class="texttheme">
                        
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