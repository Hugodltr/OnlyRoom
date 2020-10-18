import { defaultsDeep } from 'lodash';
import { Facility } from '../facility/faciliy';
import { Reservation } from '../reservation/reservation';


export class Room {
    id: number;
    name: string;
    capacity: number;
    facilities: Array<Facility>;
    reservations: Array<Reservation>;


    constructor(user?: Partial<Room>) {
        defaultsDeep(this, user);
    }
}
