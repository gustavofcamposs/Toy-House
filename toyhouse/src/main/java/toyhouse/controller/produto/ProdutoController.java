package toyhouse.controller.produto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/cadastroProduto")
public class ProdutoController extends HttpServlet {


    public ProdutoController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String categoria = request.getParameter("categoria");
        String descricao = request.getParameter("descricao");
        String precoStr = request.getParameter("preco");
        String estoqueStr = request.getParameter("estoque");

        boolean hasError = false;
        String erroNome = null;
        String erroCategoria = null;
        String erroPreco = null;
        String erroEstoque = null;

        // Validações
        if (nome == null || nome.trim().isEmpty()) {
            erroNome = "O nome do produto é obrigatório.";
            hasError = true;
        }

        if (categoria == null || categoria.trim().isEmpty()) {
            erroCategoria = "A categoria do produto é obrigatória.";
            hasError = true;
        }

        if (descricao == null || descricao.trim().isEmpty()) {
            hasError = true; // Você pode adicionar uma mensagem de erro aqui, se desejar.
        }

        if (precoStr == null || precoStr.trim().isEmpty()) {
            erroPreco = "O preço do produto é obrigatório.";
            hasError = true;
        } else {
            try {
                Double.parseDouble(precoStr); // Verifica se o preço é um número válido
            } catch (NumberFormatException e) {
                erroPreco = "O preço deve ser um número válido.";
                hasError = true;
            }
        }

        if (estoqueStr == null || estoqueStr.trim().isEmpty()) {
            erroEstoque = "A quantidade em estoque é obrigatória.";
            hasError = true;
        } else {
            try {
                Integer.parseInt(estoqueStr); // Verifica se o estoque é um número válido
            } catch (NumberFormatException e) {
                erroEstoque = "A quantidade em estoque deve ser um número válido.";
                hasError = true;
            }
        }

        // Verifica se há erro
        if (hasError) {
            // Reenvia o usuário para a página de cadastro
            request.setAttribute("erroNome", erroNome);
            request.setAttribute("erroCategoria", erroCategoria);
            request.setAttribute("erroPreco", erroPreco);
            request.setAttribute("erroEstoque", erroEstoque);
            request.getRequestDispatcher("Pages/CadastroProduto/cadastroProduto.jsp").forward(request, response);
        } else {
            // Aqui você pode adicionar a lógica para salvar o produto no banco de dados

            response.sendRedirect("/toyhouse_war/"); // Redireciona após o cadastro
        }
    }


}
