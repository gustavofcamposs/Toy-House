package toyhouse.domain.pessoa.cliente;

import jakarta.persistence.*;
import lombok.*;
import toyhouse.domain.pessoa.Pessoa;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Cliente {

    @Id
    private Long id;

    @MapsId // Vincula o ID do Cliente ao ID da Pessoa
    @OneToOne
    @JoinColumn(name = "id", referencedColumnName = "pessoaId")
    private Pessoa pessoa;


    @NonNull
    private double saldo;

}