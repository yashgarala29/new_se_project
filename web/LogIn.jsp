<%-- 
    Document   : LogIn
    Created on : Jan 17, 2020, 10:20:04 PM
    Author     : user1
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


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
                try{
                Cookie coo[] = request.getCookies();
                user = coo[0].getValue();
                 pass = coo[1].getValue();
//                 out.print("coo[0]"+coo[0].getValue()+"<br>");
//                 out.print("coo[1]"+coo[1].getValue()+"<br>");
//                out.print("coo[2]"+coo[2].getValue());
                }catch(Exception e)
                {
                  
                }
            %>
            <%
            String str =(String) request.getAttribute("str");
            if(str!=null)out.println(str);
            %>
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="username" value=<%= user%>  ></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="password" name="password" value=<%=pass%> ></td>
                    </tr>
                    <tr>
                       
                        <td colspan="2"> <input type="checkbox" name="remamber" value="ON" /> remamber login </td>
                    </tr>
                    <tr>
                       
                        <td colspan="2"><input type="submit" value="Login" name="Login" />&nbsp;&nbsp;
                            <a href="newuser.jsp">sing up</a>
                        </td>
                    </tr>
                    
                </tbody>
            </table>

            
        </form>
       </center>
    </body>
</html>
