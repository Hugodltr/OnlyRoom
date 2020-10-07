package io.epf.onlyroom.room

import io.epf.onlyroom.facilities.Facility
import javax.persistence.*

@Entity(name="rooms")
data class Room(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @Column(name = "capacity") var email: Int?,
        @ManyToMany(mappedBy = "rooms")
        var facilities: List<Facility>? = mutableListOf()) {
        constructor() : this(null, null, null, null)
}