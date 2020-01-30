<%-- 
    Document   : newuser
    Created on : Jan 24, 2020, 3:57:32 PM
    Author     : user1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Library User Registration</title>
    </head>
    <body>
    <center><h1><marquee>Registration Form </marquee></h1><br>
        <form name="registration" action="idcheck.jsp">
            <table border="0" width="350" height="250">
                <tbody>
                    <hr>
                    <tr><td colspan="3">Name : </td>
                        <td width="100"><input type="text" name="name" value="" required=""/></tr>
                    <tr><td colspan="3">Password : </td>
                        <td><input type="password" name="pass" required=""/></td></tr>
                    <tr><td colspan="3">Email Id : </td>
                        <td><input type="email" name="mail" required=""/><br></td></tr>
                    <tr><td colspan="3">Branch : </td>
                        <td><select name="branch" required=""><option>CE</option>
                                <option>IT</option><option>EC</option></select></td></tr>
                    <tr><td colspan="3">Id : </td>
                        <td><input type="text" name="id" required=""/></td></tr>
                    <tr><td colspan="3">Phone Number : </td>
                        <td><input type="tel" name="phone"</td></tr>
                    <tr>
                        <td><input type="submit" value="signup" name="signup" /></td></tr>
                </tbody>
            </table>
        </form></center>
    </body>
</html>
