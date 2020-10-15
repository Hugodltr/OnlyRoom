package io.epf.onlyroom.entity.room

import io.epf.onlyroom.entity.facilities.Facility
import io.epf.onlyroom.entity.reservation.Reservation
import javax.persistence.*

@Entity(name="rooms")
data class Room(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @Column(name = "capacity") var capacity: Int?,
        @OneToMany(mappedBy="room") var reservations: List<Reservation>? = mutableListOf(),
        @ManyToMany(cascade = [CascadeType.MERGE], fetch = FetchType.LAZY)
        @JoinTable(name = "room_facility",
                joinColumns = [JoinColumn(name = "room_id", referencedColumnName = "id")],
                inverseJoinColumns = [JoinColumn(name = "facility_id", referencedColumnName = "id")])
        var facilities: List<Facility>? = mutableListOf()) {
        constructor() : this(null, null, null, null, null)
}