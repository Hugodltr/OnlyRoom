package io.epf.onlyroom.user

import io.epf.onlyroom.guest.Guest
import io.epf.onlyroom.reservation.Reservation
import java.util.*
import javax.persistence.*

/**
 *
 */
@Entity(name = "users")
data class User(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @Column(name = "email") var email: String?,
        @Column(name = "birth_date") var birthDate: Date?,
        @OneToMany(mappedBy="user") var reservations: List<Reservation>? = mutableListOf(),
        @OneToMany(mappedBy="user") var guests: List<Guest>? = mutableListOf()) {
    constructor() : this(null, null, null, null, null, null)
}
