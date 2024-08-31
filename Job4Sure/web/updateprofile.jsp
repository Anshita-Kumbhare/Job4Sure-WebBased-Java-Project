<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet"%>

<%
   
    
    String userId=(String)session.getAttribute("session1");
    String fullName=request.getParameter("fname");
    String photo=request.getParameter("photo");
    String contact=request.getParameter("cont");
    String aadharNo=request.getParameter("aadhar");
    String emailId=request.getParameter("mail");
    String dateofBirth=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String post=request.getParameter("post");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
    PreparedStatement st=con.prepareStatement("update signuptable set fullname=?, photo=?, contact=?, aadharno=?, emailid=?, dob=?, gender=?, address=?, city=?, state=?, post=? where userid=?");
    st.setString(1,fullName);        
    st.setString(2,photo);
    st.setString(3,contact);
    st.setString(4,aadharNo);
    st.setString(5,emailId);
    st.setString(6,dateofBirth);
    st.setString(7,gender);
    st.setString(8,address);
    st.setString(9,city);
    st.setString(10,state);
    st.setString(11,post);
    st.setString(12,userId);
    st.executeUpdate();
     con.close();
     response.sendRedirect("setting.jsp");
 
    %>
