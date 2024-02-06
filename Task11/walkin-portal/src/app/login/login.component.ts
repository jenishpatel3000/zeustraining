import {
  Component,
  OnInit,
  ViewEncapsulation,
  Output,
  EventEmitter,
} from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./SCSS/style.css'],
  encapsulation: ViewEncapsulation.None,
})
export class LoginComponent implements OnInit {
  showDash: boolean = false;
  constructor() {}
  @Output() dataEvent = new EventEmitter<string>();

  showDashboard() {
    this.showDash = !this.showDash;
    console.log(this.showDash);
    this.dataEvent.emit(this.showDash.toString());
  }

  ngOnInit(): void {}
}
