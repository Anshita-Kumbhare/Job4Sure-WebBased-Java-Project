<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId = (String)session.getAttribute("session1");
    String compId =request.getParameter("jobid");
    String complain=request.getParameter("comp");
    
Class.forName("com.mysql.jdbc.Driver");
     Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("Select * from signuptable where userid=?");
     st.setString(1,userId);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
      PreparedStatement st1=con.prepareStatement("insert into complaintable (userid,complainid,complain) values(?,?,?)");
      st1.setString(1,userId);
      st1.setString(2,compId);
      st1.setString(3,complain);
      st1.executeUpdate();
      con.close();
      response.sendRedirect("jobprovider.jsp");
     }
    else
    {
    out.println("invalid id");
}
    %>