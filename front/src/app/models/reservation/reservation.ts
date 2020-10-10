import { defaultsDeep } from 'lodash';
import { Room } from '../room/room';

export class Reservation {
    id: number;
    beginDate: Date;
    endDate: Date;
    room: Room;


    constructor(user?: Partial<Reservation>) {
        defaultsDeep(this, user);
    }
}
