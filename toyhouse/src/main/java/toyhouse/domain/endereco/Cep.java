package toyhouse.domain.endereco;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Cep {

    @Id
    @Column(length = 9)
    private String cep;

    @ManyToOne
    @JoinColumn(name = "id_bairro", referencedColumnName = "id")
    private Bairro bairro;

    @ManyToOne
    @JoinColumn(name = "id_logradouro", referencedColumnName = "id")
    private Logradouro logradouro;
}