<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId=request.getParameter("id");
    String oldPassword=request.getParameter("oldpwd");
    String newPassword=request.getParameter("newpwd");
    String confirmPassword=request.getParameter("cnfmpwd");
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("Select * from signuptable where userid=? and password=?");
     st.setString(1,userId);        
     st.setString(2,oldPassword);
     ResultSet rs=st.executeQuery();
     PreparedStatement st1=con.prepareStatement("Select * from admintable where adminid=? and adminpass=?");
     st1.setString(1,userId);        
     st1.setString(2,oldPassword);
     ResultSet rs1=st1.executeQuery();
     if(rs.next())
     {
         if(newPassword.equals(confirmPassword))
         {
          PreparedStatement st2=con.prepareStatement("update signuptable set password=? where userid=?");
          st2.setString(1,newPassword);
          st2.setString(2,userId);
          st2.executeUpdate();
          response.sendRedirect("destroysession.jsp");
         }
        else
        {
            out.println("new password and confirm password does'nt match");
        }
    }
    else if(rs1.next())
    {
             if(newPassword.equals(confirmPassword))
         {
          PreparedStatement st3=con.prepareStatement("update admintable set adminpass=? where adminid=?");
          st3.setString(1,newPassword);
          st3.setString(2,userId);
          st3.executeUpdate();
          response.sendRedirect("destroysession.jsp");
         }
        else
        {
            out.println("new password and confirm password does'nt match");
        }   
    }
else
{
   out.println("Invalid id/password");
}

    %>