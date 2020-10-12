import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DashboardRoomComponent } from './dashboard-room.component';

describe('DashboardRoomComponent', () => {
  let component: DashboardRoomComponent;
  let fixture: ComponentFixture<DashboardRoomComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DashboardRoomComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DashboardRoomComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
