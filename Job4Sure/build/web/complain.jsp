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
             background-color: rgba(255,239,212,0.7);
             margin-top:-430px;
             margin-left:900px;
             border-radius:30px; 
             BORDER:inset;
             box-shadow: 10px 10px 10px black;
             height: 500px;
             width:500px;
            }
                     
            h2{
                background-color:rgba(143,98,52,1.0);color:white;font-size:25px;font-family: arial;border-radius: 40px;
                height: 40px;
            }
            .link{
                text-decoration:none;
                color:white;
            }
            .texttheme
        {
            width:200px;
            height:25px;
            border:inset;
            border-color:brown;
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
                    <td><a href="providerprofile.jsp" class="link">Profile</a></td>
                </tr>
        </table>
        <div>
        <form action="complaincode.jsp">
        <br><br>
        <img src="images/complain.png" style="height:500px; width:500px; margin-left: 50px;">
        <table  cellspacing="10" cellpadding="10" align="center" border="0" class="registrationformtheme">
            <tr align="center">
                <td colspan="4"><h2>GIVE YOUR ISSUE</h2></td>
            </tr>
            <tr>
                <td>Job Id</td>
                <td><input type="text" name="jobid" class="texttheme"></td><!-- comment -->
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