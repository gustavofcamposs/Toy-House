package toyhouse.repository;


import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.List;



public abstract class GenericRepository<T, ID> {

    private final EntityManagerFactory emf;
    private final Class<T> entityClass;


    public GenericRepository(Class<T> entityClass) {
        this.emf = Persistence.createEntityManagerFactory("meuPU"); // Nome do seu persistence-unit
        this.entityClass = entityClass;
    }

    public void salvar(T entity) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void deletar(ID id) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            T entity = em.find(entityClass, id);
            if (entity != null) {
                em.remove(entity);
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public List<T> listarTodos() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("FROM " + entityClass.getSimpleName(), entityClass).getResultList();
        } finally {
            em.close();
        }
    }
}
