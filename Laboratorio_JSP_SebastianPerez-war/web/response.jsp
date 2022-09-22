<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : 21/09/2022, 12:43:12 AM
    Author     : Sebastián Pérez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:useBean id="myBean" scope="page" class="unipiloto.NameHandler" />
        
        <jsp:setProperty name="myBean" property="name"/>
        <jsp:setProperty name="myBean" property="date_birth"/>
        <jsp:setProperty name="myBean" property="current_Time"/>
        <jsp:setProperty name="myBean" property="age" value="{<%=myBean%>}"/>
        
        
        <h1>
         Hola! <c:choose>
                <c:when test="${myBean.current_Time>=12 && myBean.current_Time<=18}">
                    Buenas tardes
                </c:when>
                <c:when test="${myBean.current_Time>=19 && myBean.current_Time<=23}"> 
                    Buenas noches
                </c:when>
                <c:otherwise>
                    Buenos dias
                </c:otherwise>
            </c:choose>
         Bienvenido <jsp:getProperty name="myBean" property="name" /> a este proyecto de
         la clase de Métodos en construcción de software, su fecha de nacimiento es: <jsp:getProperty name="myBean" property="date_birth" /> 
         y tu edad es: <jsp:getProperty name="myBean" property="age" />
        
        </h1>
        
        <h1>Hello World!</h1>
    </body>
</html>
