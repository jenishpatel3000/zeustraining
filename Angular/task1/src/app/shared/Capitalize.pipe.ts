import { Pipe, PipeTransform } from '@angular/core';

@Pipe({ name: 'Capitalize' })
export class CapitalizePipe implements PipeTransform {
  transform(value: any) {
    if (value) {
      return value.charAt(0).toUpperCase() + value.slice(1);
    }
  }
}
