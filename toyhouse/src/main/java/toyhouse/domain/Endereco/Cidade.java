package toyhouse.domain.Endereco;

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
public class Cidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Many Refere-se a Cidade e ToOne para Estado, ou seja, um ESTADO pode ter várias CIDADES
    @ManyToOne
    @JoinColumn(name = "id_estado")
    private Estado estado;

    @Column(length = 50)
    private String nome;

}