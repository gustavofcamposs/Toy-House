package toyhouse.domain.produto;


import jakarta.persistence.*;
import lombok.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "id_categoria", referencedColumnName = "id")
    private Categoria categoria;

    @NonNull
    @Column(length = 60)
    private String nome;

    @NonNull
    private String descricao;

    @NonNull
    private double preco;

    @NonNull
    private int quantidade;

}
