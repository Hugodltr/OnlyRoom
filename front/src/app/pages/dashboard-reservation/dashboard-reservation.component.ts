import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, ParamMap } from '@angular/router';
import { defaultsDeep } from 'lodash';
import { NgForm } from '@angular/forms';
import { Room } from 'src/app/models/room/room';
import { RoomService } from 'src/app/services/room/room.service';
import { TokenStorageService } from 'src/app/services/security/token-storage.service';
import { ReservationService } from 'src/app/services/reservation/reservation.service';
import { Reservation } from 'src/app/models/reservation/reservation';

@Component({
  selector: 'app-dashboard-reservation',
  templateUrl: './dashboard-reservation.component.html',
  styleUrls: ['./dashboard-reservation.component.css']
})
export class DashboardReservationComponent implements OnInit {

  constructor(private route: ActivatedRoute, private roomService: RoomService, private reservationService: ReservationService, private tokenStorageService: TokenStorageService) { }

  reservationId: number;
  form: any = {};
  room: Room;
  reservations: Reservation[];

  ngOnInit(): void {
    this.reservationId = Number(this.route.snapshot.paramMap.get('reservationId'));
    this.reservationService.getReservation(this.reservationId).subscribe(reservations => this.reservations = reservations);
  }

  onSubmit(ngForm: NgForm) {
    console.log(ngForm);

    const reservation = defaultsDeep({
      id: null,
      date: ngForm.form.value.date,
      beginHour: ngForm.form.value.beginHour.replace(':', ''),
      endHour: ngForm.form.value.endHour.replace(':', ''),
      room: {
        id: this.roomId
      },
      user: {
        id: this.tokenStorageService.getUser().id,
      }
    });

    this.reservationService.addReservation(reservation).subscribe(reservation => this.room.reservations.push(reservation));
  }

}

