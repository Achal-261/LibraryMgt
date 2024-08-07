<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page - Library Management</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 20px;
        text-align: center;
        background-color: #f4f4f4;
        /* Background image */
        background-image: url('https://editor.analyticsvidhya.com/uploads/82860library-management-system.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh; /* Ensure full viewport height */
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center; /* Center vertically */
    }
    .container {
        max-width: 600px;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }
    h1 {
        color: #007bff;
        margin-bottom: 30px;
    }
    p {
        color: #333;
        font-size: 1.1em;
        margin-bottom: 20px;
    }
    a {
        display: inline-block;
        padding: 12px 24px;
        margin-top: 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 6px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

    <div class="container">
        <h1>Welcome to Library Management</h1>
        <p>Explore our library services and manage your books efficiently.</p>
        <a href="add-Book.jsp">Add New Book</a>
        <a href="update.jsp">Update Book</a>
    </div>
   
</body>
</html>
