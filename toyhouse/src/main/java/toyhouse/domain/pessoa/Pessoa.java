package toyhouse.domain.pessoa;

import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import toyhouse.domain.Endereco.Bairro;
import toyhouse.domain.Endereco.Cep;
import toyhouse.domain.Endereco.Logradouro;

public class Pessoa {


    @Id
    private Long id;

    private String cpf;

    private String telefone;


    @OneToOne
    @JoinColumn(name = "id_bairro")
    private Bairro bairro;

    @OneToOne
    @JoinColumn(name = "id_cep")
    private Cep cep;

    @OneToOne
    @JoinColumn(name = "id_logradouro")
    private Logradouro logradouro;

}