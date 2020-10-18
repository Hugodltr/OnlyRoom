import { Component, OnInit } from '@angular/core';
import { TokenStorageService } from './services/security/token-storage.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  private roles: string[];
  isLoggedIn = false;
  showAdminBoard = false;
  showModeratorBoard = false;
  username: string;
  isAdmin = false;

  constructor(private tokenStorageService: TokenStorageService) { }

  ngOnInit(): void {
    this.isLoggedIn = !!this.tokenStorageService.getToken();

    if (this.isLoggedIn) {
      const user = this.tokenStorageService.getUser();
      this.roles = user.roles;
      this.username = user.username;

      this.roles.forEach(role => {
        if (role == "ROLE_ADMIN") {
          this.isAdmin = true;
        }
      });
    }
  }


  logout(): void {
    this.tokenStorageService.signOut();
    window.location.reload();
  }
}