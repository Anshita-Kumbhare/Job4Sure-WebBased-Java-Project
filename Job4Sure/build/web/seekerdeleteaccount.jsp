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
         .loginformtheme{
                background-image:url('images/network1.gif');
                /*background-size:100%;*/
                background-position: center;
                background-repeat:no-repeat;
                BORDER:inset;
                box-shadow: 10px 10px 10px black;
                height: 600px;
                width: 500px;
                margin-left: 500px;
        }
        .deleteformtheme{
            background-color:blanchedalmond;
            border:inset;
            height:400px;
            width:400px;
            margin-left: 800px;
            margin-top: -500px;
            
        }
        .link{
            text-decoration:none;
            color:white;
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
        h2{
            background-color:rgba(135,62,35,1.0);
            
            color:white;
            font-size:25px;
            font-family: arial;
            border-radius: 40px;
            height: 40px;
        }
        </style>
    
        <body>
            <%@ include file="seekersetting.jsp"%>
        <br><br>
        <div>
         <form action="deletelogicalcode.jsp">
        <table  cellspacing="10" cellpadding="10" align="center" border="0" style="font-weight: bold;" class="deleteformtheme" >
            <tr align="center">
                <td colspan="4"><h2> Enter to delete Account</h2></td>
            </tr>
            
            <tr><td>&nbsp;</td></tr>
            <tr align="center">
                <td>Login Id</td>
                <td><input type="text" name="uid"class="texttheme"></td>
                
            </tr>
            <tr align="center">
                 <td>Password</td>
                <td><input type="password" name="pwd" class="texttheme"></td>
            </tr>
               <tr align="center">
                    <td colspan="4">
                        <input type="submit" value="SUBMIT">
                    </td>
                </tr>
            </table>
            </div>
    </form>
    </body>         
</html>