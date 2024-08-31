<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<%
    String userId=request.getParameter("uid");
    String password=request.getParameter("pwd");
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
     PreparedStatement st=con.prepareStatement("insert into signuptable values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
     st.setString(1,userId);        
     st.setString(2,password);
     st.setString(3,fullName);        
     st.setString(4,photo);
     st.setString(5,contact);
     st.setString(6,aadharNo);
     st.setString(7,emailId);
     st.setString(8,dateofBirth);
     st.setString(9,gender);
     st.setString(10,address);
     st.setString(11,city);
     st.setString(12,state);
     st.setString(13,post);
     st.executeUpdate();
     con.close();
     response.sendRedirect("login.jsp");
    
    %>