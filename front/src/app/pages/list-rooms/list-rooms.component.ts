import { Component, OnInit } from '@angular/core';
import { Room } from 'src/app/models/room/room';
import { RoomService } from 'src/app/services/room/room.service';
import { faTrash } from '@fortawesome/free-solid-svg-icons';
import { TokenStorageService } from 'src/app/services/security/token-storage.service';

@Component({
  selector: 'app-list-rooms',
  templateUrl: './list-rooms.component.html',
  styleUrls: ['./list-rooms.component.css']
})
export class ListRoomsComponent implements OnInit {

  rooms: Room[];
  faTrash = faTrash;
  isLoggedIn = false;
  isAdmin = false;
  roles: string[];

  constructor(private roomService: RoomService, private tokenStorageService: TokenStorageService) { }

  ngOnInit(): void {
    this.roomService.getRooms().subscribe(rooms => this.rooms = rooms);

    this.isLoggedIn = !!this.tokenStorageService.getToken();

    if (this.isLoggedIn) {
      const user = this.tokenStorageService.getUser();
      this.roles = user.roles;


      this.roles.forEach(role => {
        if (role == "ROLE_ADMIN") {
          this.isAdmin = true;
        }
      });
    }
  }

  deleteRoom(id: number) {
    this.roomService.deleteRoom(id).subscribe(succes => {
      this.rooms = this.rooms.filter(room => room.id !== id)
    });
  }

}
