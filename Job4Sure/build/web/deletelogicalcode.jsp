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
        PreparedStatement st1=con.prepareStatement("delete from signuptable where userid=?");
        st1.setString(1,userId);
        st1.executeUpdate();
        response.sendRedirect("destroysession.jsp");
     }
    else
    {
    out.println("invalid id/password");
}
    %>