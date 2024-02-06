import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})
export class AppComponent {
  showDash: boolean = false;
  receiveData(data: string) {
    const booleandata = data == 'true';
    console.log('Data received in parent:', booleandata);
    this.showDash = booleandata;
  }
}
