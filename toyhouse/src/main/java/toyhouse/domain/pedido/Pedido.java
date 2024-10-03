package toyhouse.domain.pedido;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import toyhouse.domain.endereco.Bairro;
import toyhouse.domain.endereco.Cep;
import toyhouse.domain.endereco.Logradouro;
import toyhouse.domain.pessoa.cliente.Cliente;
import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Pedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_cliente", referencedColumnName = "id")
    private Cliente cliente;

    private Date dataPedido;

    private boolean status;

    private double valorTotal;

    @OneToOne
    @JoinColumn(name = "id_cep", referencedColumnName = "cep")
    private Cep cep;

    @OneToOne
    @JoinColumn(name = "id_bairro", referencedColumnName = "id")
    private Bairro bairro;

    @OneToOne
    @JoinColumn(name = "id_logradouro", referencedColumnName = "")
    private Logradouro logradouro;
}