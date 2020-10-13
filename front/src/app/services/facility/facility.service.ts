import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { timeout } from 'rxjs/operators';
import { Facility } from 'src/app/models/facility/faciliy';

@Injectable({
  providedIn: 'root'
})
export class FacilityService {

  private url: string;

  constructor(private http: HttpClient) {
    this.url = environment.url;
  }

  getFacilities(): Observable<Facility[]> {
    return this.http.get<Facility[]>(`${this.url}/facilities`).pipe(timeout(10000));
  }

  deleteFacilities(id: number): Observable<any> {
    return this.http.delete(`${this.url}/facilities/${id}`).pipe(timeout(10000));
  }

  addFacility(facility: Facility): Observable<Facility> {
    return this.http.post<any>(`${this.url}/facilities`, facility).pipe(timeout(10000));
  }
}
