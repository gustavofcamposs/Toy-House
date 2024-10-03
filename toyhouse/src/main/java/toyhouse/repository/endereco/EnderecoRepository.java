package toyhouse.repository.endereco;

import toyhouse.domain.endereco.Estado;
import toyhouse.repository.GenericRepository;


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
