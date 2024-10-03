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
public class Cidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Many Refere-se a Cidade e ToOne para Estado, ou seja, um ESTADO pode ter várias CIDADES
    @ManyToOne
    @JoinColumn(name = "uf_estado", referencedColumnName = "id")
    private Estado estado;

    @Column(length = 35)
    private String nome;

}