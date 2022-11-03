<%-- 
    Document   : index.jsp
    Created on : Nov 3, 2022, 10:27:39 AM
    Author     : FASUSER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Log in</title>
    </head>
    <body>
        <div class="top-banner">
            <img src="images/banner_OnlineCourses.jpg" alt="banner">
        </div>
        <h1>Member Login</h1>
        <div class="forum-container">
            <div class="forum-desktop">
                <form action="login.jsp" method="post">
                    <table>
                        <tr>
                            <td>
                                <p>Username:</p>
                            </td>
                            <td>
                                <input type="text" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>Password :</p>
                            </td>
                            <td>
                                <input type="password" name="password" >
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="sendButton">
                                <input type="submit" value="Log in">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="forum-mobile">
                <form action="login.jsp" method="post">
                    <table>
                        <tr>
                            <td>
                                <p>Username:</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>Password :</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="password" >
                            </td>
                        </tr>
                        <tr>
                            <td class="sendButton">
                                <input class="logButton" type="submit" value="Log in">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
