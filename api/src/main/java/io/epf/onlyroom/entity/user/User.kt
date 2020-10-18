package io.epf.onlyroom.entity.user

import com.fasterxml.jackson.annotation.JsonIgnore
import io.epf.onlyroom.entity.guest.Guest
import io.epf.onlyroom.entity.reservation.Reservation
import io.epf.onlyroom.entity.role.Role
import java.util.*
import javax.persistence.*



/**
 *
 */
@Entity(name = "users")
data class User(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "username") var username: String?,
        @Column(name = "email") var email: String?,
        @Column(name = "birth_date") var birthDate: String?,
        @Column(name = "password") var passsword: String?,
        @ManyToMany(fetch = FetchType.LAZY)
        @JoinTable(name = "user_roles", joinColumns = [JoinColumn(name = "user_id")], inverseJoinColumns = [JoinColumn(name = "role_id")])
        var roles: Set<Role>? = HashSet(),
        @OneToMany(mappedBy="user") var reservations: List<Reservation>? = mutableListOf(),
        @OneToMany(mappedBy="user") var guests: List<Guest>? = mutableListOf()) {
    constructor(name: String?, email: String?, birthDate: String?, passsword: String?) : this(null, name, email, birthDate, passsword, null, null, null)
}
