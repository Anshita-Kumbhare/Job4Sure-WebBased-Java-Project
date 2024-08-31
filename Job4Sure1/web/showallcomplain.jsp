<html>
    <body>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet,java.util.ArrayList"%>
        <style>
            .showtable{
                background-color: rgba(255,239,212,0.7);
                border-color: black;
                border-width: 10px;
                border:inset;
            }
        </style>
        
        <%  
            String uid = (String)session.getAttribute("session1");
            Class.forName("com.mysql.jdbc.Driver");
    Connection connect =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st1=connect.prepareStatement("select * from complaintable where userid=?");
     st1.setString(1,uid);
     ResultSet rs1=st1.executeQuery();
     ArrayList list11=new ArrayList();
     ArrayList list22=new ArrayList();
     
     while(rs1.next())
     {
     list11.add(rs1.getString(2));
     list22.add(rs1.getString(3));
     
     }
     %>
     <div>
     <table width="50%" align="left" cellspacing="20" class="showtable">
         <tr align="center" style="background-color: rgba(143,98,52,0.9); color: white;">
             <td>Complain Id</td>
             <td>Complain</td>
             
         </tr>
         
         <%
             for(int i=0;i<list11.size();i++)
             {
         %>
         <tr align="center">
             <td><%=list11.get(i)%></td>
             <td><%=list22.get(i)%></td>
             
         </tr>
         <%}%>
         </table>
         </div>
    </body>
</html>