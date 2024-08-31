<%@include file="webguard.jsp"%>
<html>
        <style>
        .tabtheme
         {
             font-size:20px;
             font-family:arial;
             text-align:center;
             background-color:rgba(143,98,52,0.9);
             text-transform: uppercase;
             height: 60px;
         }
                 
    
        body
        {
            background-image:url("images/Jobprovider.webp");
            background-repeat:no-repeat;
            background-size:100%;
            background-position: center;
            opacity: inherit;
        }
         .registrationformtheme{
             background-color: rgba(235,182,120,0.7);
             margin-top:-40px;
             
             margin-left:400px;
             border-radius:50px;
             BORDER:inset;
             box-shadow: 10px 10px 10px black;
             height: 500px;
                      }
                     
                      <%--h2{
                          background-color:rgba(135,62,35,1.0);
                          color:white;
                          font-size:25px;
                          font-family: arial;
                          border-radius: 40px;
                          height: 40px;
                      }--%>
                      .link{
                          text-decoration:none;
                          color:white;
                      }
                      .mssg{
                          background-color:rgba(135,62,35,0.6);
                          color:white;
                          height:50%;
                          width:50%;
                          margin-top:200px;
                          margin-left:350px;
                          border-radius:50%;
                      }
        </style>
    
        <body>
            <table width="100%" class="tabtheme">
                <tr>
                    <td><a href="home.jsp" class="link">Home</a></td>
                    <td><a href="postjob.jsp" class="link">Post Job</a></td>
                    <td><a href="complain.jsp" class="link">Send Complain</a></td>
                    <td><a href="updatejob.jsp" class="link">Update Job</a></td>
                    <td><a href="setting.jsp" class="link">Settings</a></td>
                    <td><a href="providerprofile.jsp" class="link">Profile</a></td>
                </tr>
            </table>
            <div class="mssg">
                <br><br><br>
                <h1 align="center">FEEL FREE TO POST <br><BR>ANY TYPE OF WORK NEED YOU WANT :)</h1>
                <img src="images/smile.png" style="height: 100px; width:100px; margin-left: 300px;">
            </div>
            
        </body>
    </html>