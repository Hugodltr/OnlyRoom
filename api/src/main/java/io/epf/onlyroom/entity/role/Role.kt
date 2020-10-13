package io.epf.onlyroom.entity.role

import javax.persistence.*


enum class ERole {
    ROLE_USER, ROLE_ADMIN
}

@Entity(name = "roles")
data class Role(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Enumerated(EnumType.STRING)
        @Column(name = "name") var name: ERole?) {
    constructor() : this(null, null)
}