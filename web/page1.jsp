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
    </head>
    <body>
        <style>
            .button {
              background-color: #4CAF50; /* Green */
              border: none;
              color: white;
              padding: 25px 40px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 16px;
              margin: 10px 20px;
              webkit-transition-duration: 0.4s; /* Safari */
              transition-duration: 0.4s;
              cursor: pointer;
            }
            .button2 {
                background-color: white; 
                color: black; 
                border: 2px solid #008CBA;
              }

              .button2:hover {
                background-color: #008CBA;
                color: white;
              }

       </style>
       <center>
       <table border="0" >
           
           <tbody>
               <tr>
                   <td><button class="button button2">View book</button></td>
                   <td><button class="button button2">issued book</button></td>
                   <td><button class="button button2">View user</button></td>
                   <td><button class="button button2">View issued books</button></td>
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
