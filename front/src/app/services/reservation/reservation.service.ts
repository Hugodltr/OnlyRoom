import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { timeout } from 'rxjs/operators';
import { Observable } from 'rxjs';
import { Reservation } from 'src/app/models/reservation/reservation';

@Injectable({
  providedIn: 'root'
})
export class ReservationService {

  private url: string;

  constructor(private http: HttpClient) {
    this.url = environment.url;
  }

  getReservations(): Observable<Reservation[]> {
    return this.http.get<Reservation[]>(`${this.url}/reservations`).pipe(timeout(10000));
  }

  deleteReservation(id: number): Observable<any> {
    return this.http.delete(`${this.url}/reservations/${id}`).pipe(timeout(10000));
  }

  addReservation(reservation: Reservation): Observable<Reservation> {
    return this.http.post<any>(`${this.url}/reservations`, reservation).pipe(timeout(10000));
  }
}
