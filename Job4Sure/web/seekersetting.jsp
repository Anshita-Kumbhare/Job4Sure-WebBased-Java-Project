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
        .goto{
            background-color:blanchedalmond;
            text-align:center;
            font-size:30px;
            border-radius:30px;
            box-shadow: 7px 7px 7px black;
            font-weight: bold;
            border:outset;
            border-color:blue;
            text-decoration:none;
            color:black;
            text-transform:uppercase;
        }
        .change{
            height:400px;
            width:450px;
            
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
        </style>
    
        <body>
            <%@include file="seekerheader.jsp" %>
            <div>
                <h1>SETTINGS</h1>
            </div>
            <div>
                <%@ include file="seekersettingbutton.jsp" %>
            </div>
           </body>
    </html>