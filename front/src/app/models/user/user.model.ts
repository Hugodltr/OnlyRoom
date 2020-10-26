import { defaultsDeep } from 'lodash';
import { Reservation } from '../reservation/reservation';

export class User {
  id: number;
  name: string;
  email: string;
  birthDate: Date;


  constructor(user?: Partial<User>) {
    defaultsDeep(this, user);
  }
}
