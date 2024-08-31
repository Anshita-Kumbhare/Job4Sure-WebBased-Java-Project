<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<% 
    String name=request.getParameter("fnm");
    String sname=request.getParameter("lnm");
    String contact=request.getParameter("con");
    String purpose=request.getParameter("pur");
    String city=request.getParameter("city");
   
Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
        PreparedStatement st=con.prepareStatement("insert into contact values(?,?,?,?,?)");
        st.setString(1,name);
        st.setString(2,sname);
        st.setString(3,contact);
        st.setString(4,purpose);
        st.setString(5, city);
        st.executeUpdate();
        con.close();
        response.sendRedirect("contact.jsp");
       %>