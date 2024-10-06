package toyhouse.domain.pessoa;


import jakarta.persistence.*;
import lombok.*;
import toyhouse.domain.endereco.Bairro;
import toyhouse.domain.endereco.Cep;
import toyhouse.domain.endereco.Logradouro;

import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS) // ou outro tipo de herança
public class Pessoa {

    @Id
    private Long pessoaId;

    @NonNull
    @Column(length = 50)
    private String nome;

    @NonNull
    private Date dataNascimento;

    @NonNull
    @Column(length = 12, unique = true) // Exp: 468133365/75
    private String cpf;

    @NonNull
    @Column(length = 12) // Exp: 11 942019665
    private String telefone;


    @ManyToOne
    @JoinColumn(name = "id_cep", referencedColumnName = "cep")
    private Cep cep;

    @ManyToOne
    @JoinColumn(name = "id_bairro", referencedColumnName = "id")
    private Bairro bairro;

    @ManyToOne
    @JoinColumn(name = "id_logradouro", referencedColumnName = "id")
    private Logradouro logradouro;

    @Column(length = 35)
    private String complemento;

    private int numero;

}