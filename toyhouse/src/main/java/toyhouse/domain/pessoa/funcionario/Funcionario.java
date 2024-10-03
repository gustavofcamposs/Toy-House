package toyhouse.domain.pessoa.funcionario;
import jakarta.persistence.*;
import lombok.*;
import toyhouse.domain.pessoa.Pessoa;

import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Funcionario {

    @Id
    private Long id;

    @MapsId //Vincula o ID do Funcionario ao ID da Pessoa
    @OneToOne
    @JoinColumn(name = "id", referencedColumnName = "pessoaId") //id refere-se ao Id Funcionário e pessoaId ao Id de Pessoa
    private Pessoa pessoa;

    @NonNull
    private Date dataContratacao;

    private boolean status;
}
