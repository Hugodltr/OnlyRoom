package io.epf.onlyroom.facilities

import io.epf.onlyroom.room.Room
import javax.persistence.*

@Entity(name="facilities")
data class Facility(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @ManyToMany(cascade = [CascadeType.ALL], fetch = FetchType.LAZY)
        @JoinTable(name = "room_facility",
                joinColumns = [JoinColumn(name = "room_id", referencedColumnName = "id")],
                inverseJoinColumns = [JoinColumn(name = "facility_id", referencedColumnName = "id")])
        var rooms: List<Room>? = mutableListOf()) {
    constructor() : this(null, null, null )
}