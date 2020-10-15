import { Component, OnInit } from '@angular/core';
import { Facility } from 'src/app/models/facility/faciliy';
import { FacilityService } from 'src/app/services/facility/facility.service';
import { NgForm } from '@angular/forms';
import { defaultsDeep } from 'lodash';
import { RoomService } from 'src/app/services/room/room.service';
import { Room } from 'src/app/models/room/room';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {

  form: any = {};
  facilities: Facility[];
  rooms: Room[];

  constructor(private facilityService: FacilityService, private roomService: RoomService) { }

  ngOnInit(): void {
    this.facilityService.getFacilities().subscribe(facilities => this.facilities = facilities);
  }

  onSubmit(ngForm: NgForm) {
    console.log(ngForm);
    const facility = defaultsDeep({
      id: null,
      name: ngForm.form.value.name
    });

    const capacity = ngForm.form.value.capacity
    const date = ngForm.form.value.date
    const beginHour = ngForm.form.value.beginHour
    const endHour = ngForm.form.value.endHour
    const facilitiesId = ngForm.form.value.facilitiesId

    this.roomService.searchRoom(capacity, date, beginHour, endHour, facilitiesId).subscribe(rooms => this.rooms = rooms);
  }

}
