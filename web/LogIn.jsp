﻿
<%@page contentType="text/html" pageEncoding="UTF-16" %>

<html>
    <head>
        <title>LogIn</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet" type="text/css">
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    
    <body>
        <center>
            <h1>Library Management</h1>
        <hr>
        <%
            String s=(String)request.getAttribute("str");
            out.print(s);
        %>
        <div class="container">
           <form name="login" action="LibraryManagement" method="POST" >
            
            
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" ></td>
                    </tr>
                    <tr>
                       

                    </tr>
                    <tr>
                       
                        <td><button class="  button2">Submit</button>
                           </td><td> <a href="newuser.jsp">Register</a>
                        </td>
                    </tr>
                    
                </tbody>
               
            </table>
                        
        </form>
        </div>
       </center>
    </body>
</html>
