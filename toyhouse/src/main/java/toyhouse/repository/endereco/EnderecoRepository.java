package toyhouse.domain.repository.endereco;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import toyhouse.domain.Endereco.Estado;
import toyhouse.domain.repository.GenericRepository;


public class EnderecoRepository extends GenericRepository<Estado, Long> {

    public EnderecoRepository() {
        super(Estado.class);
    }

    // Método para salvar um estado
    @Override
    public void salvar (Estado entity) {
        super.salvar(entity);
    }
}
