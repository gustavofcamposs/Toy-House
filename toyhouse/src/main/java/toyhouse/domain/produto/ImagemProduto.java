package toyhouse.domain.produto;

import jakarta.persistence.*;
import lombok.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class ImagemProduto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_produto", referencedColumnName = "id")
    private Produto produto;

    @NonNull
    private String imagemUrl;

    @NonNull
    @Column(length = 50)
    private String descricao;
}
