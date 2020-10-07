package io.epf.onlyroom.room

import java.util.*
import javax.persistence.*

@Entity(name="rooms")
data class Room(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @Column(name = "capacity") var email: Int?) {

}