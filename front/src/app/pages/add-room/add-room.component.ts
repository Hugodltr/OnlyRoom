import { Component, OnInit } from '@angular/core';
import { Facility } from 'src/app/models/facility/faciliy';
import { FacilityService } from '../../services/facility/facility.service';
import { NgForm } from '@angular/forms';
import { defaultsDeep } from 'lodash';
import { RoomService } from 'src/app/services/room/room.service';

@Component({
  selector: 'app-add-room',
  templateUrl: './add-room.component.html',
  styleUrls: ['./add-room.component.css']
})
export class AddRoomComponent implements OnInit {

  facilities: Facility[];
  form: any = {};

  constructor(private facilityService: FacilityService, private roomService: RoomService) { }

  ngOnInit(): void {
    this.facilityService.getFacilities().subscribe(facilities => this.facilities = facilities);
  }

  onSubmit(ngForm: NgForm) {
    console.log(ngForm);

    const room = defaultsDeep({
      id: null,
      name: ngForm.form.value.name,
      capacity: ngForm.form.value.capacity,
    });

    ngForm.form.value.facilities.forEach(index => {
      let facility = this.facilities[index];
      facility.rooms.push(room);
      this.facilityService.addFacility(facility).subscribe(facility => this.facilities[index] = facility);
    });

    console.log(room)

    this.roomService.addRoom(room).subscribe(room => console.log(room));
  }

}
