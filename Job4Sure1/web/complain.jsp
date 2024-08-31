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
             background-color: rgba(255,239,212,0.7);
             margin-top:40px;
             margin-left:1050px;
             border-radius:30px; 
             BORDER:inset;
             box-shadow: 10px 10px 10px black;
             height: 500px;
            }
                     
                      h2{
                          background-color:rgba(143,98,52,1.0);color:white;font-size:25px;font-family: arial;border-radius: 40px;
                          height: 40px;
                      }
                      .link{
                          text-decoration:none;
                          color:white;
                      }
        </style>
    <body>
        <table width="100%" class="tabtheme">
                <tr>
                    <td><a href="home.jsp" class="link">Home</a></td>
                    <td><a href="postjob.jsp" class="link">Post Job</a></td>
                    <td><a href="complain.jsp" class="link">Send Complain</a></td>
                    <td><a href="contact.jsp" class="link">Mail</a></td>
                    <td><a href="passwordsetting.jsp" class="link">Settings</a></td>
                    <td><a href="home.jsp" class="link">Sign Out</a></td>
                </tr>
        </table>
        <div>
        <form action="complaincode.jsp">
        <br><br>
        
        <table  cellspacing="10" cellpadding="10" align="center" border="0" class="registrationformtheme">
            <tr align="center" >
                <td colspan="4"><h2>GIVE YOUR ISSUE</h2></td>
            </tr>
            <tr>
                <td>Login Id</td>
                <td><input type="text" name="uid" class="texttheme"></td><!-- comment -->
            </tr>
            <tr>
                <td>Complain</td>
             <td><textarea name="comp" class="texttheme"></textarea></td>
            </tr>
            <tr align="center">
                    <td colspan="4">
                        <input type="submit" value="SUBMIT" style="border: outset">
                    </td>
                </tr>
        </table>
        </form>
        </div>
        </div>
    </body>    
</html>