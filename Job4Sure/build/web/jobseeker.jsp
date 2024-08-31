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
        .link{
            text-decoration:none;
            color:white;
        }
        </style>
    
        <body>
            <%@include file="seekerheader.jsp" %>
            <div>
                <table>
                    <h2>Jobs</h2>
                    <%@include  file="alljobs.jsp"%>
                </table>
                
            </div>
                <div>
                    <br><br>
                    <h2>You can search a specific job by typing in the search job section.</h2>
                    <br>
                    <h2>To apply for the job, go to Apply Jobs section and type the job ID.</h2>
         </div>
        </body>
    </html>