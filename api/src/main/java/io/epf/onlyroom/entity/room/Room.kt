package io.epf.onlyroom.room

import io.epf.onlyroom.facilities.Facility
import io.epf.onlyroom.reservation.Reservation
import javax.persistence.*

@Entity(name="rooms")
data class Room(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @Column(name = "capacity") var capacity: Int?,
        @OneToMany(mappedBy="room") var reservations: List<Reservation>? = mutableListOf(),
        @ManyToMany(mappedBy = "rooms")
        var facilities: List<Facility>? = mutableListOf()) {
        constructor() : this(null, null, null, null, null)
}