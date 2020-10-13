import { defaultsDeep } from 'lodash';
import { Room } from '../room/room';

export class Facility {
    id: number;
    name: string;
    rooms: Array<Room>;


    constructor(user?: Partial<Facility>) {
        defaultsDeep(this, user);
    }
}
