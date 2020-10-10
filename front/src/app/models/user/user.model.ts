import { defaultsDeep } from 'lodash';

export class User {
  id: number;
  name: string;
  email: string;
  birthDate: Date;


  constructor(user?: Partial<User>) {
    defaultsDeep(this, user);
  }
}
