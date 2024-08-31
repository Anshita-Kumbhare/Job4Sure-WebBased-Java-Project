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
        .head{
                background-color: rgba(143,98,52,0.9); 
                color: white;
            }
            .showtable{
                background-color: rgba(255,239,212,0.7);
                border-color: black;
                border-width: 10px;
                border:inset;
            }
        </style>
    
        <body>
           <%@include file="seekerheader.jsp" %>
           <h1>YOUR PROFILE</h1>
            <div style='margin-top: 30px;'>
                <%@include file="showprofile.jsp"%>
            </div>
            <img src="images/man.png" style="margin-left: 900px; margin-top: -550px;">
        </body>
    </html>