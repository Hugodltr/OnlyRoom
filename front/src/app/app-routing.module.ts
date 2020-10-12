import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListUsersComponent } from './pages/list-users/list-users.component';
import { AddUserComponent } from './pages/add-user/add-user.component';
import { DashboardComponent } from './pages/dashboard/dashboard.component';
import { ListRoomsComponent } from './pages/list-rooms/list-rooms.component';
import { SearchComponent } from './pages/search/search.component';



const routes: Routes = [
  { path: '', component: DashboardComponent },
  { path: 'list', component: ListUsersComponent },
  { path: 'list-rooms', component: ListRoomsComponent },
  { path: 'add-user', component: AddUserComponent },
  { path: 'search', component: SearchComponent }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
