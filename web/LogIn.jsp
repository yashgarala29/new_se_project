﻿﻿<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-16" %>
<html>
    <head>
        <title>LogIn</title>
       
    </head>
    <body>
        <center>
            <h1>Library Management</h1>
        <hr>
        <% String user = " ";
           String pass = " " ; %>
           <form name="login" action="LibraryManagement" method="POST" >
            
            <%
            String str =(String) request.getAttribute("str");
            if(str!=null)
                out.println(str);
            %>
            <div>
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="password" name="password" ></td>
                    </tr>
                    <tr>
                       

                    </tr>
                    <tr>
                       
                        <td colspan="2"><input type="submit" value="Login" name="Login" />&nbsp;&nbsp;
                            <a href="newuser.jsp">sing up</a>
                        </td>
                    </tr>
                    
                </tbody>
               
            </table>
            </div>
            
        </form>
       </center>
    </body>
</html>
