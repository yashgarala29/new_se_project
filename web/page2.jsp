<%-- 
    Document   : page2
    Created on : Jan 30, 2020, 5:31:22 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<%@page contentType="text/css" %>--%>
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
                   <td><button class="button button2">View your book</button></td>
                   <td><button class="button button2" onclick="location.href='http://localhost:8080/SEpro/pre_register_your_book.jsp';" >pre register your book</button></td>
                   <td><button class="button button2" onclick="location.href='http://localhost:8080/SEpro/View_your_detail.jsp'">View your detail</button></td>
                 </tr>
                  
           </tbody>
       </table>
           <button class="button button2" onclick="location.href='http://localhost:8080/SEpro/renew_book.jsp'">renew book</button>
           <button class="button button2" onclick="location.href=''">feedback</button>               
        </center>
    </body>
</html>
