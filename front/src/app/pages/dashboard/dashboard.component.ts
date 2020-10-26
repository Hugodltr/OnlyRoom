import { Component, OnInit } from '@angular/core';
import { Reservation } from 'src/app/models/reservation/reservation';
import { Room } from 'src/app/models/room/room';
import { ReservationService } from 'src/app/services/reservation/reservation.service';
import { RoomService } from 'src/app/services/room/room.service';
import { faTrash } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  rooms: Room[];
  reservations: Reservation[];
  guests: Reservation[];
  faTrash = faTrash;

  constructor(private roomService: RoomService, private reservationService: ReservationService) { }

  ngOnInit(): void {
    this.roomService.freeRoom(this.getDate(), 0, 2359).subscribe(rooms => this.rooms = rooms);
    this.reservationService.getReservations().subscribe(reservations => this.reservations = reservations);
    this.reservationService.getReservationGuest().subscribe(guests => this.guests = guests.filter((thing, index, self) =>
      index === self.findIndex((t) => (
        t.id === thing.id
      ))));
  }

  deleteResa(id: number) {
    this.reservationService.deleteReservation(id).subscribe(succes => {
      this.reservations = this.reservations.filter(reservation => reservation.id !== reservation.id)
    });
  }

  getDate(): string {
    const today = new Date();
    const d = today.getDate();
    const m = today.getMonth() + 1;
    const yyyy = today.getFullYear();

    let mm: string;
    let dd: string;

    if (d < 10) {
      dd = `0${d}`;
    } else {
      dd = d.toString();
    }

    if (m < 10) {
      mm = `0${m}`;
    } else {
      mm = m.toString();
    }
    return `${yyyy}-${mm}-${dd}`;
  }

}
