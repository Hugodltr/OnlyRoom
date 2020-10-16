import { Component, OnInit } from '@angular/core';
import { User } from '../../models/user/user.model';
import { Facility } from '../../models/facility/faciliy';
import { UserService } from '../../services/user/user.service';
import { FacilityService } from '../../services/facility/facility.service';
import { faTrash } from '@fortawesome/free-solid-svg-icons';
import { NgForm } from '@angular/forms';
import { defaultsDeep } from 'lodash';


@Component({
  selector: 'app-list-users',
  templateUrl: './list-users.component.html',
  styleUrls: ['./list-users.component.css']
})
export class ListUsersComponent implements OnInit {

  users: User[];
  facilities: Facility[];
  faTrash = faTrash;
  form: any = {};


  constructor(private userService: UserService, private facilityService: FacilityService) { }

  ngOnInit() {
    this.userService.getUsers().subscribe(users => this.users = users);
    this.facilityService.getFacilities().subscribe(facilities => this.facilities = facilities);
  }

  deleteUser(id: number) {
    this.userService.deleteUser(id).subscribe(succes => {
      this.users = this.users.filter(user => user.id !== id)
    });
  }

  deleteFacility(id: number) {
    this.facilityService.deleteFacilities(id).subscribe(succes => {
      this.facilities = this.facilities.filter(facility => facility.id !== id)
    });
  }

  onSubmit(ngForm: NgForm) {
    console.log(ngForm);
    const facility = defaultsDeep({
      id: null,
      name: ngForm.form.value.name
    });

    this.facilityService.addFacility(facility).subscribe(facility => this.facilities.push(facility));
  }
}
