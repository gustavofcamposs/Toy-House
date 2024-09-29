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
        entityManagerFactory = Persistence.createEntityManagerFactory("meuPU");
        sce.getServletContext().setAttribute("entityManagerFactory", entityManagerFactory);
        System.out.println("EntityManagerFactory inicializado e tabelas criadas automaticamente.");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Fecha o EntityManagerFactory ao encerrar o servidor
        if (entityManagerFactory != null) {
            entityManagerFactory.close();
        }
        System.out.println("EntityManagerFactory fechado.");
    }

}