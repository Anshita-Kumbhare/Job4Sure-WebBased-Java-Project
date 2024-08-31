<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId=request.getParameter("uid");
    String password=request.getParameter("pwd");
    
Class.forName("com.mysql.jdbc.Driver");
     Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("Select * from signuptable where userid=? and password=?");
     st.setString(1,userId);        
     st.setString(2,password);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
        Cookie ck=new Cookie("id",userId);
        Cookie cok=new Cookie("pass",password);
        ck.setMaxAge(100000);
        response.addCookie(ck);
        cok.setMaxAge(100000);
        response.addCookie(cok);
      String post=rs.getString(13);
       if(post.equalsIgnoreCase("Job Provider"))
       {
           session.setAttribute("session1",userId);
           response.sendRedirect("jobprovider.jsp");
       }   
       if(post.equalsIgnoreCase("Job Seeker"))       
       {
         session.setAttribute("session1",userId);
         response.sendRedirect("jobseeker.jsp");
       }
     }
    else
    {
    out.println("invalid id/password/post");
}
    %>