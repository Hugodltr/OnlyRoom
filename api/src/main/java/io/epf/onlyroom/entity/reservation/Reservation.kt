package io.epf.onlyroom.reservation

import io.epf.onlyroom.guest.Guest
import io.epf.onlyroom.room.Room
import io.epf.onlyroom.user.User
import java.util.*
import javax.persistence.*

@Entity(name="reservations")
data class Reservation(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "begin_date") var beginDate: Date?,
        @Column(name = "end_date") var endDate: Date?,
        @OneToMany(mappedBy="reservation") var guests: List<Guest>? = mutableListOf(),
        @ManyToOne
        @JoinColumn(name="room_id", nullable=false)
        var room: Room?,
        @ManyToOne
        @JoinColumn(name="user_id", nullable=false)
        var user: User?) {
        constructor() : this(null, null, null, null, null, null)
}