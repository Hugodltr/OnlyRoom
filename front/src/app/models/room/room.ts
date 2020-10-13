import { defaultsDeep } from 'lodash';
import { Facility } from '../facility/faciliy';


export class Room {
    id: number;
    name: string;
    capacity: number;
    facilities: Array<Facility>;


    constructor(user?: Partial<Room>) {
        defaultsDeep(this, user);
    }
}
