package toyhouse.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LoginServelet
 */
@WebServlet("/CadastrarController")
public class CadastrarController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String senhaConfirmar = request.getParameter("confirmar"); // Corrigido o nome do parâmetro
        String cpf = request.getParameter("cpf");
        String tel = request.getParameter("tel"); // Corrigido de Stirng para String
        String cep = request.getParameter("cep");
        String numeroStr = request.getParameter("numero");
        int numero = 0;

        boolean hasError = false;
        String erroSenhaConfirmar = null;


        // Validações
        if (nome == null || nome.trim().isEmpty()) {
            hasError = true;
        }

        if (email == null || email.trim().isEmpty()) {
            hasError = true;
        }

        if (senha == null || senha.trim().isEmpty()) {
            hasError = true;
        }

        if (senhaConfirmar == null || !senhaConfirmar.equals(senha)) {
            erroSenhaConfirmar = "As senhas não coincidem.";
            hasError = true;
        }

        if (cpf == null || cpf.trim().isEmpty()) {
            hasError = true;
        }

        if (tel == null || tel.trim().isEmpty()) {
              hasError = true;
        }

        if (cep == null || cep.trim().isEmpty()) {
            hasError = true;
        }

        if (numeroStr == null || numeroStr.trim().isEmpty()) {

            hasError = true;
        } else {
            try {
                numero = Integer.parseInt(numeroStr); // Converter para inteiro
            } catch (NumberFormatException e) {
                hasError = true;
            }
        }

        // Verifica se há erro
        if (hasError) {
            // Reenvia o usuário para a página de cadastro
            request.setAttribute("erroSenhaConfirmar", erroSenhaConfirmar); // so deixei para ver funcionando
            request.getRequestDispatcher("Pages/CadastroCliente/cadastroCliente.jsp").forward(request, response);
        } else {
            response.sendRedirect("/toyhouse_war/");
        }
    }
}
