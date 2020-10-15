package io.epf.onlyroom.entity.facilities

import com.fasterxml.jackson.annotation.JsonIgnore
import io.epf.onlyroom.entity.room.Room
import javax.persistence.*

@Entity(name="facilities")
data class Facility(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "name") var name: String?,
        @JsonIgnore
        @ManyToMany(mappedBy = "facilities")
        var rooms: List<Room>? = mutableListOf()) {
    constructor() : this(null, null, null )
}