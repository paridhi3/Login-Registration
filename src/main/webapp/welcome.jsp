<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome!!</title>
<link rel="stylesheet" href="css/jspStyles.css" />
</head>

<body>
	<%
        // Retrieve the session1 object
        HttpSession session1 = request.getSession(false);

        // Check if the session1 is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            String username = (String) session1.getAttribute("username"); // Get the username from the session1
    %>
    
    <div class="container">
        <h1>Hi <%= username %>!</h1>
        <p>We're delighted to have you on our platform. 🌟</p>
        <h3>Explore, learn, and connect with our vibrant community! 🚀</h3>        
        <p class="welcome-jsp-link">
        	<!-- Feel free to stay, and when ready, <a href="logout.jsp">LOGOUT</a> securely. -->
        	Feel free to stay, and when ready, <a href="LogoutServlet">LOGOUT</a> securely.
        </p>
    </div>
    
    <%
        } else {            
            response.sendRedirect("login.jsp"); 
        }
    %>
</body>

</html>


