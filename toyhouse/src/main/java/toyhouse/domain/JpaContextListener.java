package toyhouse.domain;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import lombok.Getter;

@WebListener
public class JpaContextListener implements ServletContextListener {

    @Getter
    private static EntityManagerFactory entityManagerFactory;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Inicializa o EntityManagerFactory assim que o servidor for iniciado
        try {
            entityManagerFactory = Persistence.createEntityManagerFactory("meuPU");
            sce.getServletContext().setAttribute("entityManagerFactory", entityManagerFactory);
            System.out.println("EntityManagerFactory inicializado e tabelas criadas automaticamente.");
        } catch (Exception e) {
            System.err.println("Erro ao inicializar o EntityManagerFactory: " + e.getMessage());
            throw e; // Re-lança a exceção para que o Tomcat saiba que houve um erro
        }
    }


    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Fecha o EntityManagerFactory ao encerrar o servidor
        if (entityManagerFactory != null) {
            entityManagerFactory.close();
            System.out.println("EntityManagerFactory fechado.");
        }

        // Encerra o AbandonedConnectionCleanupThread
        try {
            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown();
            System.out.println("AbandonedConnectionCleanupThread encerrado.");
        } catch (Exception e) {
            // Captura outras exceções que podem ocorrer
            System.err.println("Erro inesperado ao tentar encerrar o AbandonedConnectionCleanupThread: " + e.getMessage());
        }
    }


}