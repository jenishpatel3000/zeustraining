import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pro-qualifications',
  templateUrl: './pro-qualifications.component.html',
  styleUrls: ['./SCSS/style.scss'],
})
export class ProQualificationsComponent implements OnInit {
  constructor() {}

  ngOnInit(): void {
    const applicanttype = document.querySelectorAll('input[name="Applicant"]');
    applicanttype.forEach((applicanttype) => {
      if (applicanttype) {
        applicanttype.addEventListener('change', function () {
          let item = (applicanttype as HTMLInputElement).value;

          if (item === 'Fresher') {
            (
              document.querySelector('.proqualifications') as HTMLInputElement
            ).style.display = 'none';
            (
              document.querySelector(
                '.fresherqualifications'
              ) as HTMLInputElement
            ).style.display = 'block';
          } else if (item === 'Experienced') {
            (
              document.querySelector('.proqualifications') as HTMLInputElement
            ).style.display = 'block';
            (
              document.querySelector(
                '.fresherqualifications'
              ) as HTMLInputElement
            ).style.display = 'none';
          } else {
            (
              document.querySelector('.proqualifications') as HTMLInputElement
            ).style.display = 'none';
            (
              document.querySelector(
                '.fresherqualifications'
              ) as HTMLInputElement
            ).style.display = 'none';
          }
        });
      }
    });
  }
}
