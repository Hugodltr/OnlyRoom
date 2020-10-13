import { defaultsDeep } from 'lodash';

export class Facility {
    id: number;
    name: string;


    constructor(user?: Partial<Facility>) {
        defaultsDeep(this, user);
    }
}
