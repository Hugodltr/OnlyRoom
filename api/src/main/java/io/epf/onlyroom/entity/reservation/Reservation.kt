package io.epf.onlyroom.entity.reservation

import io.epf.onlyroom.entity.guest.Guest
import io.epf.onlyroom.entity.room.Room
import io.epf.onlyroom.entity.user.User
import java.util.*
import javax.persistence.*

@Entity(name="reservations")
data class Reservation(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "date") var date: Date?,
        @Column(name = "begin_hour") var beginHour: Int?,
        @Column(name = "end_hour") var endHour: Int?,
        @OneToMany(mappedBy="reservation") var guests: List<Guest>? = mutableListOf(),
        @ManyToOne
        @JoinColumn(name="room_id", nullable=false)
        var room: Room?,
        @ManyToOne
        @JoinColumn(name="user_id", nullable=false)
        var user: User?) {
        constructor() : this(null, null, null, null, null, null, null)
}