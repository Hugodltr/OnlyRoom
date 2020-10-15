import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { timeout } from 'rxjs/operators';
import { Facility } from 'src/app/models/facility/faciliy';
import { Room } from 'src/app/models/room/room';

@Injectable({
  providedIn: 'root'
})
export class RoomService {

  private url: string;

  constructor(private http: HttpClient) {
    this.url = environment.url;
  }

  getRooms(): Observable<Room[]> {
    return this.http.get<Room[]>(`${this.url}/rooms`).pipe(timeout(10000));
  }

  deleteRoom(id: number): Observable<any> {
    return this.http.delete(`${this.url}/rooms/${id}`).pipe(timeout(10000));
  }

  addRoom(room: Room): Observable<Facility> {
    return this.http.post<any>(`${this.url}/rooms`, room).pipe(timeout(10000));
  }

  freeRoom(date: string, beginHour: number, endHour: number) {
    return this.http.get<any>(`${this.url}/rooms/free`, {
      params: new HttpParams()
        .set('date', date)
        .set('beginHour', beginHour.toString())
        .set('endHour', endHour.toString())
    }).pipe(timeout(10000));
  }

  searchRoom(capacity: number, date: string, beginHour: number, endHour: number, facilitiesId: string[]) {
    let httpParams = new HttpParams()
      .set('capacity', capacity.toString())
      .set('date', date)
      .set('beginHour', beginHour.toString().replace(':', ''))
      .set('endHour', endHour.toString().replace(':', ''));

    if (facilitiesId) {
      facilitiesId.forEach(facilityId => {
        httpParams = httpParams.append('facilitiesId', facilityId);
      });
    } else {
      httpParams = httpParams.append('facilitiesId', '');
    }


    return this.http.get<any>(`${this.url}/rooms/search`, {
      params: httpParams
    }).pipe(timeout(10000));
  }
}
