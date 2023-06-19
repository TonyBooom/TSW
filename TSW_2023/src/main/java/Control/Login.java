package Control;

import java.io.IOException; 
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Model.*;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email;
		RequestDispatcher dispatch = null;
		
		User user = new User();
		UserDao udao = new UserDao();
		
		Email= request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			user = udao.doRetrieveByKey(Email);
			if(user != null && user.getEmail().compareTo("") != 0) {
				
				//response.getWriter().append("nome: " + utente.getNome() + "\ncognome: " + utente.getCognome());
					
						request.getSession().setAttribute("utente",user.getNome());
						dispatch = request.getRequestDispatcher("PaginaAccesso.jsp");
			}
			
			else if(user == null){
					   request.setAttribute("utente","assente");
					   dispatch = request.getRequestDispatcher("Login.jsp");
					   
					  
			}
			else {
					   request.setAttribute("utente","errato");
			           dispatch = request.getRequestDispatcher("Login.jsp");
			}	 
			
			
			dispatch.forward(request, response);
					
		} catch (SQLException e) {
			e.printStackTrace();
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
