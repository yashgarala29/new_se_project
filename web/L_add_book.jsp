<%-- 
    Document   : View_your_detail
    Created on : Jan 30, 2020, 6:51:09 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View your detail</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link href="css/login.css" rel="stylesheet" type="text/css">
        
    </head>
    <center>
        <div class="container">
        <form action="L_add_book.jsp" method="POST">
            <!--username: <input type="text" name="user_name" value="" /><br>-->
            user id: <input type="text" name="user_id" value="" /><br>
            <!--book name:<input type="text" name="book_name" value="" /><br>-->
            <!--book author<input type="text" name="book_author" value="" /><br>-->
            book id:<input type="text" name="book_id" value="" /><br>
            book return date <input type="date" name="date" value="" />
          <button class="button button2">add book</button>
        </form>
            </div>
 <%!
         String book_id,book_name,book_author,user_id,b_r_date;
         ResultSet rs,rs2,rs3;
 
        %>
    <%
             try{
//                 String serch_book_name=request.getParameter("book_name");
                  book_id=request.getParameter("book_id");
//                  book_name=request.getParameter("book_name");
//                  book_author=request.getParameter("book_author");
                  user_id=request.getParameter("user_id");
                  b_r_date= request.getParameter("date");
                  if(user_id != null && book_id != null)
                  {
                        session=request.getSession();
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/java","root", "");        
                       String sql,sql2,sql3;
//                       Statement stmt;
                       sql="SELECT * FROM `book_detail` where book_detail.book_id=?";
                       PreparedStatement statement = con.prepareStatement(sql);
                       statement.setString(1,book_id);
//                       out.print(user_id);
                       rs2 = statement.executeQuery();
                       rs2.next();
                       String s=rs2.getString("book_name");                                   
                        if(rs2.getString("no_of_book").equals("0"))
                       {
                           out.print("sorrey book is not aviable");
                           return;
                       }
                        String book,book_date;
                       sql="SELECT * FROM `user_book` WHERE user_book.id=?";
                       statement = con.prepareStatement(sql);
                       statement.setString(1,user_id);
                       rs = statement.executeQuery();
                       
                       rs.next();
                      if(rs.getString("book1")== null)
                       {
                           book="book1";
                           book_date="book1_date";
                       }
                       else if(rs.getString("book2")== null)
                       {
                           
                           book="book2";
                           book_date="book2_date";
                       }
                       else if (rs.getString("book3")==null)
                       {
                               book="book3";
                               book_date="book3_date";
                       }
                       else
                       {
                           out.print("you are already got three book so that you can not add more then three book......");
                           return;
                       }
                       
                       
                       int no_of_book= Integer.parseInt(rs2.getString("no_of_book"))-1;
                       sql="UPDATE `book_detail` SET `no_of_book` = ? WHERE `book_detail`.`book_id` = ?; ";
                       statement = con.prepareStatement(sql);
                       statement.setInt(1,no_of_book);
                       statement.setString(2,book_id);
                       statement.executeUpdate();
                       //out.print("==============");
                       sql2="";
                       if(book.equals("book1"))
                       {
                        sql2="UPDATE user_book SET book1= ?, book1_date=? WHERE id = ? ";
                       }
                       else if(book.equals("book2"))
                       {
                         sql2="UPDATE user_book SET book2= ?, book2_date=? WHERE id = ? ";
                       }
                       else if(book.equals("book3"))
                       {
                       sql2="UPDATE user_book SET book3= ?, book3_date=? WHERE id = ? ";
                       }
                       statement = con.prepareStatement(sql2);
                       //statement.setString(1,book);
                       statement.setString(1,rs2.getString("book_name"));
//                       statement.setString(3,book_date);
                       statement.setString(2,b_r_date);
                       statement.setString(3,user_id);
                       statement.executeUpdate();
                       
                       sql3="INSERT INTO `issued_book` (`book_id`, `user_id`) VALUES (?, ?)";
                       statement = con.prepareStatement(sql3);
                       statement.setString(1,book_id);
                       statement.setString(2,user_id);
                       statement.executeUpdate();
                      
                  }

                }                 
             catch(Exception e)
             {
//                 e.printStackTrace(); 
                 out.print(e);
//                 e.
             }
    %>
    </center>
  
</html>
