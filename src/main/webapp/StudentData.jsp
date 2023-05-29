<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>StudentEnterDetails</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
      color: #333;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .container {
      max-width: 600px;
      width: 100%;
      padding: 40px;
      background-color: #ffffff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .container:hover {
      transform: scale(1.05);
    }

    h1 {
      text-align: center;
      margin-top: 0;
      margin-bottom: 20px;
    }

    form {
      width: 100%;
    }

    fieldset {
      margin-bottom: 20px;
      border: none;
    }

    legend {
      font-weight: bold;
      margin-bottom: 10px;
    }

    label {
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"] {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    button[type="reset"],
    button[type="submit"],
    a button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      background-color: #4CAF50;
      color: #fff;
      text-decoration: none;
      border: none;
      border-radius: 4px;
      transition: background-color 0.3s ease;
      margin-top: 10px;
      margin-right: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    }

    button[type="reset"]:hover,
    button[type="submit"]:hover,
    a button:hover {
      background-color: #45a049;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>${msg}</h1>

    <form action="/save" method="post">
      <fieldset>
        <legend>Personal Information</legend>
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required placeholder="Enter your full name">

        <label for="dob">Date of Birth:</label>
        <input type="text" id="dob" name="dob" required placeholder="Enter formate 1/02/2001 ">

        <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender" required placeholder="Enter formate Male/Female">

        <label for="nationality">Nationality:</label>
        <input type="text" id="nationality" name="nationality" required placeholder="Enter your nationality">

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required placeholder="Enter your address">

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required placeholder="Enter your city">

        <label for="state">State:</label>
        <input type="text" id="state" name="state" required placeholder="Enter your state">

        <label for="zip">Zip:</label>
        <input type="number" id="zip" name="zip" required placeholder="Enter your zip code">

        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required placeholder="Enter your email address">

        <label for="phone">Phone Number:</label>
        <input type="number" id="phone" name="phone" required placeholder="Enter your phone number">
      </fieldset>

      <fieldset>
        <legend>Educational Information</legend>
        <label for="school">School/College/University Name:</label>
        <input type="text" id="school" name="school" required placeholder="Enter the name of your school/college/university">

        <label for="major">Major/Program of Study:</label>
        <input type="text" id="major" name="major" required placeholder="Enter your major/program of study">

        <label for="year">Year of Study:</label>
        <input type="number" id="year" name="year" required placeholder="Enter your year of study">

        <label for="studentId">Student ID Number:</label>
        <input type="text" id="studentId" name="studentId" required placeholder="Enter your student ID number">

        <label for="gpa">Percentage </label>
        <input type="number" id="gpa" name="gpa" placeholder="Enter your Percentage" required>
      </fieldset>

      <button type="reset">Clear form</button>
      <button type="submit">Submit form</button>
    </form>

    <a href="index.html"><button>Home</button></a>
    
    <a href="Student.jsp"><button>Back</button></a>
  </div>
</body>
</html>
