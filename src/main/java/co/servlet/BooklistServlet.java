package co.servlet;

import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.entity.Book;


public class BooklistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private BookDao bookdao= new BookDao();
    public BooklistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//List<Book>book=BookDao.getBooks();
		//request.setAttribute("books", book);
		request.getRequestDispatcher("Booklist.jsp").forward(request, response);
	}

	
	

}
