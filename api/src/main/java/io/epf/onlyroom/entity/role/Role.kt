package io.epf.onlyroom.entity.user

import java.util.*
import javax.persistence.*


enum class ERole {
    ROLE_USER, ROLE_ADMIN
}

@Entity(name = "roles")
data class Role(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: ERole?,
        @Column(name = "email") var email: String?) {
    constructor() : this(null, null, null)
}