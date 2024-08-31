<html>
    
    <body>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager,java.sql.ResultSet"%>

<%
    String userId=(String)session.getAttribute("session1");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
    PreparedStatement st2=conn.prepareStatement("select * from signuptable where userid=?");
    st2.setString(1,userId);
    ResultSet rs2=st2.executeQuery();
    String fullName="";
    String photo="";
    String contact="";
    String aadharNo="";
    String emailId="";
    String dateOfBirth="";
    String gender="";
    String address="";
    String city="";
    String state="";
    String post="";
    if(rs2.next())
    {    
     fullName=rs2.getString(3);
     photo=rs2.getString(4);
     contact=rs2.getString(5);
     aadharNo=rs2.getString(6);
     emailId=rs2.getString(7);
     dateOfBirth=rs2.getString(8);
     gender=rs2.getString(9);
     address=rs2.getString(10);
     city=rs2.getString(11);
     state=rs2.getString(12);
     post=rs2.getString(13);
}
    %>
    <table width="30%" height="70%" align="left" cellspacing="20" class="showtable">
        <tr align="center"><td class="head">Photo</td><td><%=photo%></td></tr>
        <tr align="center"><td class="head">Full Name</td><td><%=fullName%></td></tr>
        <tr align="center"><td class="head">Contact</td><td><%=contact%></td></tr>
        <tr align="center"><td class="head">Aadhar No</td><td><%=aadharNo%></td></tr>
        <tr align="center"><td class="head">Email Id</td><td><%=emailId%></td></tr>
        <tr align="center"><td class="head">DOB</td><td><%=dateOfBirth%></td></tr>
        <tr align="center"><td class="head">Gender</td><td><%=gender%></td></tr>
        <tr align="center"><td class="head">Address</td><td><%=address%></td></tr>
        <tr align="center"><td class="head">City</td><td><%=city%></td></tr>
        <tr align="center"><td class="head">State</td><td><%=state%></td></tr>
        <tr align="center"><td class="head">Post</td><td><%=post%></td></tr>
    </table>
</body>
</html>
    