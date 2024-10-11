package toyhouse.controller.cliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;



@WebServlet("/clienteCadastro")
public class ClienteController extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Chegou aqui: ").append(request.getContextPath());

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Capturando os parâmetros do formulário
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String confirmarSenha = request.getParameter("confirmarSenha");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        String cep = request.getParameter("cep");
        String numero = request.getParameter("numero");
        String mensagemErro = null;

        // Validações
        if (nome == null || nome.isEmpty()) {
            mensagemErro = "Nome é obrigatório.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (email == null || email.isEmpty()) {
            mensagemErro = "Email é obrigatório.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (senha == null || senha.isEmpty()) {
            mensagemErro = "Senha é obrigatória.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (!senha.equals(confirmarSenha)) {
            mensagemErro = "As senhas não coincidem.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (cpf == null || cpf.isEmpty()) {
            mensagemErro = "CPF é obrigatório.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (telefone == null || telefone.isEmpty()) {
            mensagemErro = "Telefone é obrigatório.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (cep == null || cep.isEmpty()) {
            mensagemErro = "CEP é obrigatório.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (numero == null || numero.isEmpty()) {
            mensagemErro = "Número é obrigatório.";
            response.sendRedirect("Pages/CadastroCliente/cadastroCliente.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        // Se todos os dados estiverem corretos, pode continuar com o processamento
        response.sendRedirect("/toyhouse_war");
        response.getWriter().write(""); // Sucesso (nenhuma mensagem de erro)
    }

}