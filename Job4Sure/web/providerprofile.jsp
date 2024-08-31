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
            background-image:url("images/Job4sure.png");
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
                      .head{
                background-color: rgba(143,98,52,0.9); 
                color: white;
            }
            .update{
                color: white;
                text-decoration:none;
            }
        </style>
    
        <body>
            <table width="100%" class="tabtheme">
                <tr>
                    <td><a href="home.jsp" class="link">Home</a></td>
                    <td><a href="postjob.jsp" class="link">Post Job</a></td>
                    <td><a href="complain.jsp" class="link">Send Complain</a></td>
                    <td><a href="updatejob.jsp" class="link">Job Status</a></td>
                    <td><a href="setting.jsp" class="link">Settings</a></td>
                    <td><a href="destroysession.jsp" class="link">Sign Out</a></td>
                </tr>
            </table>
            <div>
                <h1>YOUR DASHBOARD</h1>
            </div>
            <div>
                <%@include file="showprofile.jsp"%>
            </div>
            
            <div style="margin-left: 600px; width: 800px; margin-top: 0px;">
                <h2>Job Status</h2>
                    <%@include  file="showallpost.jsp"%>
                    <table align="right">
                        <tr><td align="center" style="height:50px; width:300px;background-color: rgba(143,98,52,0.9);font-size: 30px;"><a href="updatejob.jsp" class="update">Update Job Status</a></td></tr>
                    </table>
            </div>
            <div style="margin-left: 600px; margin-top: 250px; width: 800px;">
                <h2>Complain Status</h2>
                
                    <%@include  file="showallcomplain.jsp"%>
            </div>
        </body>
    </html>