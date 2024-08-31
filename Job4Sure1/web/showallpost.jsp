<html>
    <body>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet,java.util.ArrayList,java.util.Scanner"%>
        <style>
            .showtable{
                background-color: rgba(255,239,212,0.7);
                border-color: black;
                border-width: 10px;
                border:inset;
            }
        </style>
        
        <%
            String id = (String)session.getAttribute("session1");
            Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("select * from jobdetailtable where userid=?");
     st.setString(1, id);
     ResultSet rs=st.executeQuery();
     ArrayList list1=new ArrayList();
     ArrayList list2=new ArrayList();
     ArrayList list3=new ArrayList();
     ArrayList list4=new ArrayList();
     ArrayList list5=new ArrayList();
     ArrayList list6=new ArrayList();
     while(rs.next())
     {
     list1.add(rs.getString(2));
     list2.add(rs.getString(3));
     list3.add(rs.getString(4));
     list4.add(rs.getString(5));
     list5.add(rs.getString(6));
     list6.add(rs.getString(7));
     }
     %>
     <div>
     <table width="50%" align="left" cellspacing="20" class="showtable">
         <tr align="center" style="background-color: rgba(143,98,52,0.9); color: white;">
             <td>Job Id</td>
             <td>Job Title</td>
             <td>Description</td>
             <td>Amount</td>
             <td>Duration</td>
             <td>Status</td>
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
         </tr>
         <%}%>
         </table>
         </div>
    </body>
</html>