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

    let facilities = []
    ngForm.form.value.facilities.forEach(index => {
      facilities.push(this.facilities[index])
    });

    const room = defaultsDeep({
      id: null,
      name: ngForm.form.value.name,
      capacity: ngForm.form.value.capacity,
      facilities: facilities
    });

    this.roomService.addRoom(room).subscribe(room => console.log(room));
  }

}
