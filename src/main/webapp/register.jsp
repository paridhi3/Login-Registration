<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login-Registration form</title>
     <link rel="stylesheet" href="css/jspStyles.css" />
</head>

<body>
    <div class="container">
        <h1>Register</h1>
        <form action="RegisterServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="email">Email:</label>
            <input type="text" id="username" name="email" required><br>   
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Register</button>
        </form>
    
        <p><a href="index.html">Back to Home</a></p>
    
        <%-- Display error message if registration fails. --%>
        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
      </div>
      
</body>

</html>
 