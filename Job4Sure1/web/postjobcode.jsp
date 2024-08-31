<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId=request.getParameter("uid");
    String jobtitle=request.getParameter("jobt");
    String jobdes=request.getParameter("jobd");
    String amount=request.getParameter("amount");
    String duration=request.getParameter("dura");
    
Class.forName("com.mysql.jdbc.Driver");
     Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("Select * from signuptable where userid=?");
     st.setString(1,userId);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
      PreparedStatement st1=con.prepareStatement("insert into jobdetailtable (userid,jobtitle,description,amount,duration) values(?,?,?,?,?)");
      st1.setString(1,userId);
      st1.setString(2,jobtitle);
      st1.setString(3,jobdes);
      st1.setString(4,amount);
      st1.setString(5,duration);
      st1.executeUpdate();
      con.close();
      response.sendRedirect("jobprovider.jsp");
     }
    else
    {
    out.println("invalid id");
}
    %>