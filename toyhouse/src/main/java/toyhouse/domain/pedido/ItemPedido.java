package toyhouse.domain.pedido;

import jakarta.persistence.*;
import lombok.*;
import toyhouse.domain.produto.Produto;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class ItemPedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne //Um pedido pode ter vários ItemPedido
    @JoinColumn(name = "id_pedido", referencedColumnName = "id")
    private Pedido pedido;

    @ManyToOne
    @JoinColumn(name = "id_produto", referencedColumnName = "id")
    private Produto produto;

    @NonNull
    private int quantidade;

    @NonNull
    private double totalItem;
}