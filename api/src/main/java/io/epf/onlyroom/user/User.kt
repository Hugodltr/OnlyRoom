package io.epf.onlyroom

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
        @Column(name = "birth_date") var birthDate: Date?) {
    constructor() : this(null, null, null, null)
}
