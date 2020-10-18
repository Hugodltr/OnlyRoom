import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'numToTime'
})
export class NumToTimePipe implements PipeTransform {

  transform(time: number): String {
    const timeStr = time.toString();
    return `${timeStr.substr(0, 2)}:${timeStr.substr(2)}`
  }

}
