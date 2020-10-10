import { defaultsDeep } from 'lodash';


export class Room {
    id: number;
    name: string;
    capacity: number;
    facilities: Array<string>;


    constructor(user?: Partial<Room>) {
        defaultsDeep(this, user);
    }
}
