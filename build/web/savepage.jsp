<%-- 
    Document   : save
    Created on : Feb 24, 2019, 1:33:54 AM
    Author     : TEACHER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Save Page</h1>
        <form action="save.htm"  method="post">
            <table>

                <tbody>
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td><input type="text" name="name" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>:</td>
                        <td><input type="text" name="email"/></td>
                        <td><form:errors  path="stu.email" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                    <tr>
                        <td>Round</td>
                        <td>:</td>
                        <td><input type="text" name="round"/></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>:</td>
                        <td><input type="text" name="gender"/></td>
                    </tr>
                    <tr>
                        <td>Skill</td>
                        <td>:</td>
                        <td><input type="text" name="skill"/></td>
                    </tr> 
                    <tr>
                        <td>DOB(YYYY-mm-dd)</td>
                        <td>:</td>
                        <td><input type="text" name="dob"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save"/></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
