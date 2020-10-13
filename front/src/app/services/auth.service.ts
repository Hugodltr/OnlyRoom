import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';


const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private url: string;

  constructor(private http: HttpClient) {
    this.url = environment.url + '/auth';
  }

  login(credentials): Observable<any> {
    return this.http.post(this.url + '/signin', {
      username: credentials.username,
      password: credentials.password
    }, httpOptions);
  }

  register(user): Observable<any> {
    return this.http.post(this.url + '/signup', {
      username: user.username,
      email: user.email,
      birthDate: user.birthDate,
      password: user.password
    }, httpOptions);
  }
}