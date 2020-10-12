import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ListUsersComponent } from './pages/list-users/list-users.component';
import { AddUserComponent } from './pages/add-user/add-user.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { ListRoomsComponent } from './pages/list-rooms/list-rooms.component';
import { SearchComponent } from './pages/search/search.component';
import { DashboardRoomComponent } from './pages/dashboard-room/dashboard-room.component';
import { AddRoomComponent } from './pages/add-room/add-room.component';

@NgModule({
  declarations: [
    AppComponent,
    ListUsersComponent,
    AddUserComponent,
    DashboardComponent,
    ListRoomsComponent,
    SearchComponent,
    DashboardRoomComponent,
    AddRoomComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
