# Login-Registration Project🔐✍🌐

A simple Java project for user login and registration system.

## Features

### **User Registration**
- Enables new users to create an account by entering their **username**, **email**, and **password**.  
- Stores user details securely in a **MySQL database**.  
- Provides user feedback:
  - **Success**: Displays a popup and an on-page message confirming successful registration.  
  - Automatically redirects the user to the **Login page**.  

### **User Login**
- Allows registered users to log in with their **username** and **password**.  
- Validates credentials:
  - **Failure**: Displays an `Invalid User` message for incorrect credentials.  
  - **Success**: Redirects the user to a personalized **Welcome page** displaying `username`.  

### **User Logout**
- Logs the user out by invalidating the current session.  
- Provides user feedback:
  - Displays a popup confirming a successful logout.  
  - Redirects the user to the **Home page**.  

## Technologies/Tools Used

1. **Frontend**:
   - HTML
   - CSS
   - JavaScript
2. **Backend**:
     - Java
     - Eclipse IDE
     - MySQL 

## Requirements

- **Java 8+**: Make sure Java is installed and properly set up on your system.
- **Eclipse IDE**: Recommended IDE for working with Java.
- **JDBC**: For database connection.
- **Apache Tomcat Server**: For running the app on server.

## Setup Instructions

1. **Clone the repository**:

   ```bash
   git clone https://github.com/paridhi3/Login-Registration.git
   
2. **Import the project into Eclipse**:
  - Open Eclipse IDE.
  - Select *File* > *Import* > *Existing Projects* into **Workspace**.
  - Choose the cloned project directory and import it.
    
3. **Run the project**:
  - Right-click on the Login-Registration project in the Eclipse workspace.
  - Select *Run As* > *Run on Server*.
