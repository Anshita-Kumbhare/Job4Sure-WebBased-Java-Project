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
            }
        </style>
    
        <body>
            <%@include file="seekerheader.jsp" %>
            <div>
                <form action="searchjobs.jsp">
                    <table>
                        <tr style="font-size: 30px;">
                            <td>Search Jobs</td>
                            <td><input type="text" name="sjob"></td>
                            <td><input type="submit" value="go" name="search"></td>
                        </tr>
                    </table>
                </form>
            </div>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet,java.util.ArrayList,java.util.Scanner"%>
        
       <%
    String search = request.getParameter("search");
if(search!=null){
    String status="Not Done";
            String searchedjob=request.getParameter("sjob");
            Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("select * from jobdetailtable where jobtitle=? and status=?");
     st.setString(1,searchedjob);
     st.setString(2,status);
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
     <table width="100%" align="left" cellspacing="20" class="showtable">
         <tr align="center" style="background-color: rgba(143,98,52,0.9); color: white;">
             <td>Job Id</td>
             <td>Job Title</td>
             <td>Description</td>
             <td>Amount</td>
             <td>Duration</td>
             <td>Status</td>
             <td>Select</td>
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
             <td><input type='checkbox' name='select' value='i'></td>
         </tr>
         <%}%>
         </table>
         </div>
         <div>
             <h2>To apply for the job, go to Apply Jobs section and type the job ID.</h2>
         </div>
         </body>
         </html>
    <%
    }
%>