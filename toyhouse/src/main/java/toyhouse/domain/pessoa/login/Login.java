package toyhouse.domain.pessoa.login;

import jakarta.persistence.*;
import lombok.*;
import toyhouse.domain.pessoa.Pessoa;

import javax.validation.constraints.Email;



@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Login {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_pessoa")
    private Pessoa pessoa;

    @NonNull
    @Email
    @Column(length = 45, unique = true)
    private String email;

    @NonNull
    @Column(length = 45)
    private String senha;

}