import { defaultsDeep } from 'lodash';
import { Room } from '../room/room';
import { User } from '../user/user.model';

export class Reservation {
    id: number;
    date: Date;
    beginHour: number;
    endHour: number;
    room: Room;
    user: User;
    guests: User[];

    constructor(user?: Partial<Reservation>) {
        defaultsDeep(this, user);
    }
}
