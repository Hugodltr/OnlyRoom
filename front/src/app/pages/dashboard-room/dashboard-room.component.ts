import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, ParamMap } from '@angular/router';

@Component({
  selector: 'app-dashboard-room',
  templateUrl: './dashboard-room.component.html',
  styleUrls: ['./dashboard-room.component.css']
})
export class DashboardRoomComponent implements OnInit {

  constructor(private route: ActivatedRoute) { }

  roomId: number;

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      this.roomId = params['roomId'];
    });
  }

}
