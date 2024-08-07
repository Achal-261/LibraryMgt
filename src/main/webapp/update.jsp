<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Book - Library Management</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f3f4f6; /* Light gray background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('https://editor.analyticsvidhya.com/uploads/82860library-management-system.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .container {
        width: 400px;
        background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
        backdrop-filter: blur(10px); /* Blur effect */
        border-radius: 10px;
        padding: 30px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    }
    .container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #2c3e50; /* Dark blue text */
        font-size: 24px;
        font-weight: 600;
    }
    .form-control {
        height: 50px;
        width: 100%;
        background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white */
        border-radius: 5px;
        padding: 0 15px;
        margin-top: 10px;
        font-size: 16px;
        color: #34495e; /* Dark blue text */
        border: none;
        outline: none;
    }
    .form-control::placeholder {
        color: #bdc3c7; /* Light gray placeholder text */
    }
    .btn-primary {
        width: 100%;
        background-color: #3498db; /* Bright blue */
        color: #ffffff; /* White text */
        padding: 15px 0;
        font-size: 18px;
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 20px;
        border: none;
        outline: none;
        transition: background-color 0.3s ease;
    }
    .btn-primary:hover {
        background-color: #2980b9; /* Darker blue on hover */
    }
    .btn-secondary {
        width: 100%;
        background-color: transparent;
        border: 1px solid #3498db; /* Bright blue border */
        color: #3498db; /* Bright blue text */
        padding: 15px 0;
        font-size: 18px;
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }
    .btn-secondary:hover {
        background-color: #3498db; /* Bright blue background on hover */
        color: #ffffff; /* White text on hover */
    }
</style>
</head>
<body>
<div class="container">
    <h2>Update Book Details</h2>
    <form action="UpdateBookServlet" method="post">
        
        <label for="id">Book Id</label>
        <input type="Integer" id="bid" name="bid" class="form-control" placeholder="Enter Book Id" value="" required>
        
        <label for="title">Title</label>
        <input type="text" id="title" name="title" class="form-control" placeholder="Enter title" value="" required>
        
        <label for="author">Author</label>
        <input type="text" id="author" name="author" class="form-control" placeholder="Enter author" value="" required>
        
        <label for="price">Price</label>
        <input type="text" id="price" name="price" class="form-control" placeholder="Enter price" value="" required>
        
        <button type="submit" class="btn btn-primary">Update Book</button>
        <button type="reset" class="btn btn-secondary">Cancel</button>
    </form>
</div>
</body>
</html>
