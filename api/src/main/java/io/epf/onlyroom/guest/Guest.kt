package io.epf.onlyroom.guest

import io.epf.onlyroom.reservation.Reservation
import io.epf.onlyroom.user.User
import javax.persistence.*

@Entity(name="guests")
data class Guest(
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Id var id: Long?,
        @Column(name = "state") var state: String?,
        @ManyToOne
        @JoinColumn(name="reservation_id", nullable=false)
        var reservation: Reservation?,
        @ManyToOne
        @JoinColumn(name="guest_id", nullable=false)
        var user: User?) {
    constructor() : this(null, null, null, null)
}