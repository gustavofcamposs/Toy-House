package toyhouse.controller.cliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cadastroCliente")
public class ClienteController extends HttpServlet {

    public ClienteController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
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
        String senhaConfirmar = request.getParameter("confirmar");
        String cpf = request.getParameter("cpf");
        String tel = request.getParameter("tel");
        String cep = request.getParameter("cep");
        String numeroStr = request.getParameter("numero");

        boolean hasError = false;
        String erroSenhaConfirmar = null;
        String erroNome = null;


        // Validações
        if (nome == null || nome.trim().isEmpty()) {
            erroNome = "Precisa ter um nome";
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
                // Converter para inteiro
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
