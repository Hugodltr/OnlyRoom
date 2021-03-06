import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/security/auth.service';
import { TokenStorageService } from '../../services/security/token-storage.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  form: any = {};
  isLoggedIn = false;
  isLoginFailed = false;
  errorMessage = '';
  roleMessage = '';
  roles: string[] = [];

  constructor(private authService: AuthService, private tokenStorage: TokenStorageService) { }

  ngOnInit(): void {
    if (this.tokenStorage.getToken()) {
      this.isLoggedIn = true;
      this.roles = this.tokenStorage.getUser().roles;
      this.roles.forEach(role => {
        if (role == "ROLE_ADMIN") {
          this.roleMessage = "Administrateur";
        }
        else {
          this.roleMessage = "Utilisateur";
        }
      });
    }
  }

  onSubmit(): void {
    this.authService.login(this.form).subscribe(
      data => {
        this.tokenStorage.saveToken(data.accessToken);
        this.tokenStorage.saveUser(data);

        this.isLoginFailed = false;
        this.isLoggedIn = true;
        this.roles = this.tokenStorage.getUser().roles;
        this.roles.forEach(role => {
          if (role == "ROLE_ADMIN") {
            this.roleMessage = "Administrateur";
          }
          else {
            this.roleMessage = "Utilisateur";
          }
        });

        this.reloadPage();
      },
      err => {
        this.errorMessage = err.error.message;
        this.isLoginFailed = true;
      }
    );
  }

  reloadPage(): void {
    window.location.reload();
  }

}