import { defaultsDeep } from 'lodash';
import { Room } from '../room/room';

export class Facility {
    id: number;
    name: string;


    constructor(user?: Partial<Facility>) {
        defaultsDeep(this, user);
    }
}
