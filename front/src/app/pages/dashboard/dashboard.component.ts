import { Component, OnInit } from '@angular/core';
import { Room } from 'src/app/models/room/room';
import { RoomService } from 'src/app/services/room/room.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  rooms: Room[];

  constructor(private roomService: RoomService) { }

  ngOnInit(): void {
    this.roomService.freeRoom(this.getDate(), 0, 2359).subscribe(rooms => this.rooms = rooms);
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
