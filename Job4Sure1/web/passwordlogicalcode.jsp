<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId=request.getParameter("uid");
    String oldPassword=request.getParameter("pwd");
    String newPassword=request.getParameter("newpwd");
    String confirmPassword=request.getParameter("cnfmpwd");
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("Select * from signuptable where userid=? and password=?");
     st.setString(1,userId);        
     st.setString(2,oldPassword);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
         if(newPassword.equals(confirmPassword))
         {
          PreparedStatement st1=con.prepareStatement("update signuptable set password=? where userid=?");
          st1.setString(1,newPassword);
          st1.setString(2,userId);
          st1.executeUpdate();
          response.sendRedirect("home.jsp");
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