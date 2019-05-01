

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class RegDatabse
 */
@WebServlet("/RegDatabse")
public class RegDatabse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegDatabse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Number = request.getParameter("number");
		String Location = request.getParameter("location");
		String Cake = request.getParameter("cake");
		String Date = request.getParameter("date");
		//out.println(Name);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/weddingcake";
			String user="root";
			String pass="root";
			
			Connection con = DriverManager.getConnection(url, user, pass);

			String sql = "Insert into reservation values (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, Name);
			ps.setString(2, Email);
			ps.setString(3, Number);
			ps.setString(4, Location);
			ps.setString(5, Cake);
			ps.setString(6, Date);
			ps.executeUpdate();
			con.close();
			//out.println("Record Inserted");
			
			
			RequestDispatcher view = request.getRequestDispatcher("Homepage.html");
			view.include(request, response);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
