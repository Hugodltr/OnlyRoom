import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, ParamMap } from '@angular/router';
import { defaultsDeep } from 'lodash';
import { NgForm } from '@angular/forms';
import { Room } from 'src/app/models/room/room';
import { RoomService } from 'src/app/services/room/room.service';
import { TokenStorageService } from 'src/app/services/security/token-storage.service';
import { ReservationService } from 'src/app/services/reservation/reservation.service';
import { Reservation } from 'src/app/models/reservation/reservation';
import { UserService } from 'src/app/services/user/user.service';
import { User } from 'src/app/models/user/user.model';
import { connectableObservableDescriptor } from 'rxjs/internal/observable/ConnectableObservable';

@Component({
  selector: 'app-dashboard-reservation',
  templateUrl: './dashboard-reservation.component.html',
  styleUrls: ['./dashboard-reservation.component.css']
})
export class DashboardReservationComponent implements OnInit {

  constructor(private route: ActivatedRoute, private reservationService: ReservationService, private userService: UserService, private tokenStorageService: TokenStorageService) { }

  reservationId: number;
  form: any = {};
  reservation: Reservation;
  guests: any[];
  room: Room;
  users: User[];
  user: any;

  ngOnInit(): void {
    this.user = this.tokenStorageService.getUser();
    this.reservationId = Number(this.route.snapshot.paramMap.get('reservationId'));
    this.reservationService.getReservation(this.reservationId).subscribe(resa => {
      this.reservation = resa.reservation;
      this.room = resa.room;
      this.guests = resa.guests.filter((thing, index, self) =>
        index === self.findIndex((t) => (
          t.id === thing.id
        )));
    });
    this.userService.getUsers().subscribe(users => {
      this.users = users
    });
  }

  onSubmit(ngForm: NgForm) {
    console.log(ngForm);

    let reservation = this.reservation;
    if (reservation.guests) {
      reservation.guests.push(this.users[ngForm.form.value.guest]);
    }
    else {
      reservation.guests = [this.users[ngForm.form.value.guest]];
    }
    reservation.room = this.room;
    reservation.user = {
      id: this.user.id,
      name: this.user.name,
      email: this.user.email,
      birthDate: this.user.birthDate
    };

    this.reservationService.addReservation(reservation).subscribe(reservation => this.reservation = reservation);
  }

}

