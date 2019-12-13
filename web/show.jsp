
<%-- 
    Document   : show
    Created on : Feb 24, 2019, 1:19:35 AM
    Author     : TEACHER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> <a href="savepage.jsp">Insert a Data</a></h1>
        <h1>Show Page</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${ai}">
                    <tr>
                        <td>${s.stid}</td>
                        <td>${s.name}</td>
                        <td>${s.email}</td>
                        <td>${s.password}</td>
                        <td>${s.round}</td>
                        <td>${s.gender}</td>
                        <td>${s.skill}</td>
                        <td>${s.dob}</td>
                        <td><a href="preupdate.htm?stid=${s.stid}&name=${s.name}&email=${s.email}&password=${s.password}&round=${s.round}&gender=${s.gender}&skill=${s.skill}&dob=${s.dob}">Update</a></td>
                        <td>
                            <form action='preupdate.htm' method='post'>
                                <input type="hidden" name="stid" value="${s.stid}"/>
                                <input type="hidden" name="name" value="${s.name}"/>
                                <input type="hidden" name="email" value="${s.email}"/>
                                <input type="hidden" name="password" value="${s.password}"/>
                                <input type="hidden" name="round" value="${s.round}"/>
                                <input type="hidden" name="gender" value="${s.gender}"/>
                                <input type="hidden" name="skill" value="${s.skill}"/>
                                <input type="hidden" name="dob" value="${s.dob}"/>
                                <input type="submit" value="Edit"/>
                            </form>
                        </td>
                        <td><a href="delete.htm?method=post&stid=${s.stid}">Delete</a></td>
                        <td><form action='delete.htm' method='post'>
                                <input type="hidden" name="stid" value="${s.stid}"/>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
