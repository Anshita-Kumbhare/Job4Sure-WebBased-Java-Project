<%@include file="webguard.jsp"%>
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
        .link{
            text-decoration:none;
            color:white;
        }
        .showtable{
                background-color: rgba(255,239,212,0.7);
                border-color: black;
                border-width: 10px;
                border:inset;
                font-size: 30px;
            }
            .head{
                background-color: rgba(143,98,52,0.9); 
                color: white;
            }
        </style>
    
        <body>
            <%@include file="seekerheader.jsp" %>
            <div>
                <form action="applyjob.jsp">
                    <table>
                        <tr style="font-size: 30px;">
                        <td>Enter the Job Id : </td>
                        <td><input type="text" name="seljid"></td>
                        <td><input type="submit" value="go"></td>
                        </tr>
                    </table>
                </form>
            </div>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet"%>
<html>
    <body>
<%
    String selectjobid = request.getParameter("seljid");
    if(selectjobid!=null)
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
    PreparedStatement st=con.prepareStatement("select * from jobdetailtable where jobid=?");
    st.setString(1,selectjobid);
    ResultSet rs=st.executeQuery();
    String providerId="";
    
    if(rs.next())
    {    
     providerId=rs.getString(1);
     PreparedStatement st1=con.prepareStatement("select * from signuptable where userid=?");
    st1.setString(1,providerId);
    ResultSet rs1=st1.executeQuery();
    String fullName="";
    String contact="";
    String emailId="";
    String gender="";
    String address="";
    String city="";
    
    if(rs1.next())
    {    
     fullName=rs1.getString(3);
     contact=rs1.getString(5);
     emailId=rs1.getString(7);
     gender=rs1.getString(9);
     address=rs1.getString(10);
     city=rs1.getString(11);
%>
     <table width="40%" height="70%" align="left" cellspacing="20" class="showtable">
        <tr align="center"><td class="head">Full Name</td><td><%=fullName%></td></tr>
        <tr align="center"><td class="head">Contact</td><td><%=contact%></td></tr>
        <tr align="center"><td class="head">Email Id</td><td><%=emailId%></td></tr>
        <tr align="center"><td class="head">Gender</td><td><%=gender%></td></tr>
        <tr align="center"><td class="head">Address</td><td><%=address%></td></tr>
        <tr align="center"><td class="head">City</td><td><%=city%></td></tr>
    </table>
    <%
        }
        }
    else{
    %>
    <table>
    <tr><td>ID Does Not Exist!! Try Again</td></tr>
    </table>
    <%
        }
}
    %>
    
        </body>
    </html>