import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ListUsersComponent } from './pages/list-users/list-users.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { ListRoomsComponent } from './pages/list-rooms/list-rooms.component';
import { SearchComponent } from './pages/search/search.component';
import { DashboardRoomComponent } from './pages/dashboard-room/dashboard-room.component';
import { AddRoomComponent } from './pages/add-room/add-room.component';
import { LoginComponent } from './pages/login/login.component';
import { RegisterComponent } from './pages/register/register.component';
import { authInterceptorProviders } from './helpers/auth.interceptor';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';


@NgModule({
  declarations: [
    AppComponent,
    ListUsersComponent,
    DashboardComponent,
    ListRoomsComponent,
    SearchComponent,
    DashboardRoomComponent,
    AddRoomComponent,
    LoginComponent,
    RegisterComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    FontAwesomeModule
  ],
  providers: [authInterceptorProviders],
  bootstrap: [AppComponent]
})
export class AppModule { }
