import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListUsersComponent } from './pages/list-users/list-users.component';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { ListRoomsComponent } from './pages/list-rooms/list-rooms.component';
import { SearchComponent } from './pages/search/search.component';
import { DashboardRoomComponent } from './pages/dashboard-room/dashboard-room.component';
import { AddRoomComponent } from './pages/add-room/add-room.component';
import { LoginComponent } from './pages/login/login.component';
import { RegisterComponent } from './pages/register/register.component';



const routes: Routes = [
  { path: '', component: DashboardComponent },
  { path: 'home', component: DashboardComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'list', component: ListUsersComponent },
  { path: 'list-rooms', component: ListRoomsComponent },
  { path: 'add-room', component: AddRoomComponent },
  { path: 'dashboard-room', component: DashboardRoomComponent },
  { path: 'search', component: SearchComponent }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
