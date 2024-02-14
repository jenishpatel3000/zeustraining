import { Component, OnInit, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./SCSS/style.scss'],
  encapsulation: ViewEncapsulation.None,
})
export class LoginFormComponent implements OnInit {
  passwordFieldType: string = 'password';

  togglePassword(): void {
    this.passwordFieldType =
      this.passwordFieldType === 'password' ? 'text' : 'password';
  }
  constructor() {}

  ngOnInit(): void {}
}
