package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class signupservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, 
            HttpServletResponse resp) throws ServletException, IOException
    {
    
    }
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException,
            IOException
    {
        
         String userId=request.getParameter("uid");
    String password=request.getParameter("pwd");
    String firstName=request.getParameter("fname");
    String lastName=request.getParameter("lname");
    String contact=request.getParameter("cont");
    String aadharNo=request.getParameter("aadhar");
    String emailId=request.getParameter("mail");
    String dateofBirth=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String post=request.getParameter("post");
    try{
Class.forName("com.mysql.jdbc.Driver");
     Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job4sure","root","#A1n2s3h4K");
     PreparedStatement st=con.prepareStatement("insert into signuptable values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
     st.setString(1,userId);        
     st.setString(2,password);
     st.setString(3,firstName);        
     st.setString(4,lastName);
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
    }
    catch(Exception ex){}
    }
    
}
