<%@include file="webguard.jsp"%>
<html>
    <body>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet,java.util.ArrayList,java.util.Scanner"%>
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
         .registrationformtheme{
             background-color: rgba(235,182,120,0.7);
             margin-top:-40px;
             
             margin-left:400px;
             border-radius:50px;
             BORDER:inset;
             box-shadow: 10px 10px 10px black;
             height: 500px;
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
            }
        </style>
        
        <%
            String post = "Job Seeker";
            Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("select * from signuptable where post=?");
     st.setString(1, post);
     ResultSet rs=st.executeQuery();
     
     ArrayList list1=new ArrayList();
     ArrayList list2=new ArrayList();
     ArrayList list3=new ArrayList();
     ArrayList list4=new ArrayList();
     ArrayList list5=new ArrayList();
     ArrayList list6=new ArrayList();
     ArrayList list7=new ArrayList();
     ArrayList list8=new ArrayList();
     ArrayList list9=new ArrayList();
     ArrayList list10=new ArrayList();
     ArrayList list11=new ArrayList();
     while(rs.next())
     {
     list1.add(rs.getString(3));
     list2.add(rs.getString(4));
     list3.add(rs.getString(5));
     list4.add(rs.getString(6));
     list5.add(rs.getString(7));
     list6.add(rs.getString(8));
     list7.add(rs.getString(9));
     list8.add(rs.getString(10));
     list9.add(rs.getString(11));
     list10.add(rs.getString(12));
     list11.add(rs.getString(13));
     }
     %>
     <%@ include file="adminheader.jsp"%>
     <br>
     <h1>ALL JOB SEEKERS</h1>
     <br>
     <div>
     <table width="100%" align="left" cellspacing="20" class="showtable">
         <tr align="center" style="background-color: rgba(143,98,52,0.9); color: white;">
             <td>Full Name</td>
             <td>Photo</td>
             <td>Contact</td>
             <td>Aadhar No</td>
             <td>Email ID</td>
             <td>DOB</td>
             <td>Gender</td>
             <td>Address</td>
             <td>City</td>
             <td>State</td>
             <td>Post</td>
        </tr>
         
         <%
             for(int i=0;i<list1.size();i++)
             {
         %>
         <tr align="center">
             <td><%=list1.get(i)%></td>
             <td><%=list2.get(i)%></td>
             <td><%=list3.get(i)%></td>
             <td><%=list4.get(i)%></td>
             <td><%=list5.get(i)%></td>
             <td><%=list6.get(i)%></td>
             <td><%=list7.get(i)%></td>
             <td><%=list8.get(i)%></td>
             <td><%=list9.get(i)%></td>
             <td><%=list10.get(i)%></td>
             <td><%=list11.get(i)%></td>
        </tr>
         <%}%>
         </table>
         </div>
    </body>
</html>