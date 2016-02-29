<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Employee List</title>
  </head>
  <body>
      <div align="center">
          <h1>Employee List</h1>
          <table border="1">
              <th>No</th>
              <th>Firstname</th>
              <th>Lastname</th>
              <th>Age</th>
              <th>Department</th>
              
              <c:forEach var="empl" items="${employees}" varStatus="status">
              <tr>
                  <td>${status.index + 1}</td>
                  <td>${empl.firstname}</td>
                  <td>${empl.lastname}</td>
                  <td>${empl.age}</td>
                  <td>${empl.designation}</td>
              </tr>
              </c:forEach>                
          </table>
      </div>
  </body>
</html>