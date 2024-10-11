package toyhouse.controller.produto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLEncoder;


@WebServlet("/cadastroProduto")
public class ProdutoController extends HttpServlet {
    private static final long serialVersionUID = 1L;

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

        String mensagemErro = null;

        // Validações
        if (nome == null || nome.trim().isEmpty()) {
            mensagemErro = "Nome é obrigatório.";
            response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (categoria == null || categoria.trim().isEmpty()) {
            mensagemErro = "Necessário informar a categoria.";
            response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (descricao == null || descricao.trim().isEmpty()) {
            mensagemErro = "Descrição é obrigatório";
            response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        }

        if (precoStr == null || precoStr.trim().isEmpty()) {
            mensagemErro = "Preço do Produto é obrigatório.";
            response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        } else {
            try {
                // Tenta converter o valor em um número do tipo Double
                Double preco = Double.parseDouble(precoStr);

                // Valida se o número é maior que zero
                if (preco <= 0) {
                    mensagemErro = "O preço deve ser maior que zero.";
                    response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
                    return; // Retorna para não continuar
                }
            } catch (NumberFormatException e) {
                mensagemErro = "O preço precisa ser um valor numérico válido.";
                response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
                return; // Retorna para não continuar
            }
        }

        if (estoqueStr == null || estoqueStr.trim().isEmpty()) {
            mensagemErro = "A quantidade de estoque é obrigatória.";
            response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
            return; // Retorna para não continuar
        } else {
            try {
                // Tenta converter o valor em um número do tipo Integer (pois estoque geralmente é um valor inteiro)
                int estoque = Integer.parseInt(estoqueStr);

                // Valida se o número de estoque é maior ou igual a zero
                if (estoque < 0) {
                    mensagemErro = "A quantidade de estoque não pode ser negativa.";
                    response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
                    return; // Retorna para não continuar
                }
            } catch (NumberFormatException e) {
                mensagemErro = "A quantidade de estoque precisa ser um valor numérico válido.";
                response.sendRedirect("Pages/CadastroProduto/cadastroProduto.jsp?erro=" + URLEncoder.encode(mensagemErro, "UTF-8"));
                return; // Retorna para não continuar
            }
        }


        // Se todos os dados estiverem corretos, pode continuar com o processamento
        response.sendRedirect("/toyhouse_war");
    }


}
