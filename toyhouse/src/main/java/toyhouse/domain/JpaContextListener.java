package toyhouse.domain;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import lombok.Getter;

import java.util.HashMap;
import java.util.Map;

@WebListener
public class JpaContextListener implements ServletContextListener {

    @Getter
    private static EntityManagerFactory entityManagerFactory;


    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            // Obtendo as variáveis de ambiente do sistema ou IntelliJ
            String jdbcUrl = System.getenv("JDBC_URL");
            String jdbcUser = System.getenv("JDBC_USER");
            String jdbcPassword = System.getenv("JDBC_PASSWORD");
            String jdbcDriver = System.getenv("JDBC_DRIVER");

            // Fallback para variáveis configuradas no IntelliJ - Valor padrão.
            /*if (jdbcUrl == null || jdbcUser == null || jdbcPassword == null || jdbcDriver == null) {
                jdbcUrl = System.getProperty("JDBC_URL", "jdbc:mysql://localhost:3306/toyhouse");
                jdbcUser = System.getProperty("JDBC_USER", "sueuser");
                jdbcPassword = System.getProperty("JDBC_PASSWORD", "suasenha");
                jdbcDriver = System.getProperty("JDBC_DRIVER", "com.mysql.cj.jdbc.Driver");
            }*/

            // Criação programática de propriedades do JPA com as variáveis de ambiente
            Map<String, String> properties = new HashMap<>();
            properties.put("jakarta.persistence.jdbc.url", jdbcUrl);
            properties.put("jakarta.persistence.jdbc.user", jdbcUser);
            properties.put("jakarta.persistence.jdbc.password", jdbcPassword);
            properties.put("jakarta.persistence.jdbc.driver", jdbcDriver);

            // Propriedades específicas do Hibernate irei passar no persistence.xml

            // Inicializando o EntityManagerFactory com propriedades do ambiente
            entityManagerFactory = Persistence.createEntityManagerFactory("meuPU", properties);
            sce.getServletContext().setAttribute("entityManagerFactory", entityManagerFactory);

            System.out.println("EntityManagerFactory inicializado com variáveis de ambiente.");
        } catch (Exception e) {
            System.err.println("Erro ao inicializar o EntityManagerFactory: " + e.getMessage());
            throw e;
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (entityManagerFactory != null) {
            entityManagerFactory.close();
            System.out.println("EntityManagerFactory fechado.");
        }

        try {
            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown();
            System.out.println("AbandonedConnectionCleanupThread encerrado.");
        } catch (Exception e) {
            System.err.println("Erro ao tentar encerrar o AbandonedConnectionCleanupThread: " + e.getMessage());
        }
    }
}
