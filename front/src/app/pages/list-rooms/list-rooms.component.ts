import { Component, OnInit } from '@angular/core';
import { Room } from 'src/app/models/room/room';
import { RoomService } from 'src/app/services/room/room.service';
import { faTrash } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-list-rooms',
  templateUrl: './list-rooms.component.html',
  styleUrls: ['./list-rooms.component.css']
})
export class ListRoomsComponent implements OnInit {

  rooms: Room[];
  faTrash = faTrash;

  constructor(private roomService: RoomService) { }

  ngOnInit(): void {
    this.roomService.getRooms().subscribe(rooms => this.rooms = rooms);
  }

  deleteRoom(id: number) {
    this.roomService.deleteRoom(id).subscribe(succes => {
      this.rooms = this.rooms.filter(room => room.id !== id)
    });
  }

}
