package toyhouse.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import toyhouse.domain.Endereco.Estado;
import toyhouse.domain.repository.endereco.EnderecoRepository;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;



@WebServlet("/estado") // Mapeamento da URL do controlador
public class EstadoController extends HttpServlet {

    private EnderecoRepository enderecoRepository;


    public void init() throws ServletException {
        // Inicializa o repositório ao iniciar o Servlet
        enderecoRepository = new EnderecoRepository();
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Criar um novo objeto Estado com um nome fixo ou gerado
        Estado novoEstado = new Estado();
        novoEstado.setNome("São Paulo"); // Aqui você pode definir um nome fixo

        // Salvar o estado no banco de dados
        enderecoRepository.salvar(novoEstado);

        // Retornar uma resposta para o cliente (ou redirecionar)
        resp.getWriter().println("Estado salvo com sucesso: " + novoEstado.getNome());
    }

}