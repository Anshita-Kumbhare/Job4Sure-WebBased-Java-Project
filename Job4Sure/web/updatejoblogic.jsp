<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet"%>

<%
    String jobId=request.getParameter("jobid");
    String jobStatus=request.getParameter("jstatus");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
    PreparedStatement st=con.prepareStatement("update jobdetailtable set status=? where jobid=?");
    st.setString(1,jobStatus);
    st.setString(2,jobId);    
    st.executeUpdate();
     con.close();
     response.sendRedirect("providerprofile.jsp");
 
    %>
