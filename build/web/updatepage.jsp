<%-- 
    Document   : updatepage
    Created on : Feb 24, 2019, 2:20:39 AM
    Author     : TEACHER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Page</h1>
        <form action="update.htm" method="post">
            <table>

                <tbody>
                    <tr>
                        <td>Id</td>
                        <td>:</td>
                        <td><input type="text" name="stid" value="${stu.stid}"/></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td><input type="text" name="name" value="${stu.name}"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>:</td>
                        <td><input type="text" name="email" value="${stu.email}"/></td>
                         <td><form:errors  path="stu.email" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td><input type="password" name="password" value="${stu.password}"/></td>
                    </tr>
                    <tr>
                        <td>Round</td>
                        <td>:</td>
                        <td><input type="text" name="round" value="${stu.round}"/></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>:</td>
                        <td><input type="text" name="gender" value="${stu.gender}"/></td>
                    </tr>
                    <tr>
                        <td>Skill</td>
                        <td>:</td>
                        <td><input type="text" name="skill" value="${stu.skill}"/></td>
                    </tr>
                    <tr>
                        <td>DOB(YYYY-mm-dd)</td>
                        <td>:</td>
                        <td><input type="text" name="dob" value="${stu.dob}"/></td>
                    </tr>                    
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Update"/></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
