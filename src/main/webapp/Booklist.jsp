<%@page import="java.util.List"%>
<%@page import="com.entity.Book"%>
<%@page import="com.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 20px;
        background-image: url('https://editor.analyticsvidhya.com/uploads/82860library-management-system.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid #ccc;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    a {
        text-decoration: none;
        color: #333;
        font-weight: bold;
    }
    a:hover {
        color: #007bff;
    }
    .delete-btn {
        background-color: #dc3545;
        color: #fff;
        border: none;
        padding: 5px 10px;
        cursor: pointer;
        border-radius: 4px;
    }
    .delete-btn:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Book List</h2>
        <table>
            <tr>
                <th>Book Id</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <% 
            BookDao bookDao = new BookDao();
            List<Book> books = bookDao.getBooks();
            for (Book book : books) {
            %>
            <tr>
                <td><%= book.getBid() %></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td>Rs. <%= book.getPrice() %></td>
                <td>
                 <form action="update.jsp" method="post" style="display:inline;">
                 <input type="hidden" name="bid" value="<%= book.getBid() %>"/>
                 <input type="submit" class="btn-update" value="Update"/>
                  </form>
                  </td>
               <!--   <td><a href="update.jsp"?bid=<%=book.getBid() %>">Update</a></td> -->
                <td>
                        <form action="DeleteBookServlet" method="Get" style="display:inline;">
                            <input type="hidden" name="bid" value="<%= book.getBid() %>"/>
                            <input type="submit" class="btn-delete" value="Delete"/>
                        </form>
                    </td>
            </tr>
            <% } %>   
        </table>
    </div>
    <div style="text-align: center; margin-top: 20px;">
        <a href="add-Book.jsp">Add Book</a>
    </div>

    <script>
        function deleteBook(bookId) {
            if (confirm('Are you sure you want to delete this book?')) {
                // AJAX call to delete the book
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/DeleteBookServlet', true);
                xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        // Reload the page or remove the row from the table
                        location.reload(); // Reloads the page to reflect changes
                    }
                };
                xhr.send('bookId=' + encodeURIComponent(bookId));
            }
        }
    </script>
</body>
</html>
