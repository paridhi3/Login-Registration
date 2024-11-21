<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>

<body>
    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // If the session exists, invalidate it
        if (session1 != null) {
            session1.invalidate();  // Log out by invalidating the session
        }
        
        // Redirect to the home page after logging out
        response.sendRedirect("index.html?logoutSuccess=true");
                
    %>
</body>


</html>


