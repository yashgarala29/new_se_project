<%-- 
    Document   : page1
    Created on : Jan 26, 2020, 10:18:12 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
      <center>
       <table border="0" >           
           <tbody>
               <tr>
                   <td><button class="button button2" onclick="location.href='http://localhost:8080/SEpro/L_view_book.jsp';">View book</button></td>
                   <td><button class="button button2">issued book</button></td>
                   <td><button class="button button2" onclick="location.href='http://localhost:8080/SEpro/L_view_user.jsp';">View user</button></td>
                   
                               
               </tr>
               <tr>
                   <td><button class="button button2">renew book</button></td>
                   <td><button class="button button2">add book</button></td>
                   <td><button class="button button2">Return book</button></td>
                   <td><button class="button button2">add new book</button></td>
               </tr>
           </tbody>
       </table>
        </center>

      
    </body>
</html>
