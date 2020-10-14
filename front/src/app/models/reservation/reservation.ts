import { defaultsDeep } from 'lodash';
import { Room } from '../room/room';

export class Reservation {
    id: number;
    date: Date;
    beginHour: number;
    endHour: number;
    room: Room;


    constructor(user?: Partial<Reservation>) {
        defaultsDeep(this, user);
    }
}
