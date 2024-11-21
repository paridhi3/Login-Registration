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
     
     <script type="text/javascript">
        window.onload = function() {
            var urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('registration') && urlParams.get('registration') === 'success') {
                alert('Registration successful!');
                urlParams.delete('registration');
                window.history.replaceState({}, document.title, window.location.pathname + '?' + urlParams.toString());
            }
        };
	</script>
     
</head>

<body>
    <div class="container">
        <h1>LOGIN</h1>
        
        <form action="LoginServlet" method="post"> <!-- Change method to "post" -->
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Login</button>
        </form>

        <p><a href="index.html">Back to Home</a></p>

        <%-- Display error message if login fails. This will be visible in login.jsp --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red; font-weight: bold;">Invalid Username or Password. Please try again.</p>
        <% } %>
        
        <%-- Display message if Register Successful. This will be visible in register.jsp --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green; font-weight: bold;">Your Registration is Successful. Please Login.</p>
        <% } %>
    </div>
</body>

</html>