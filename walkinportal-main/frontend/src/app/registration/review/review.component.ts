import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-review',
  templateUrl: './review.component.html',
  styleUrls: ['./SCSS/style.scss'],
})
export class ReviewComponent implements OnInit {
  @Input() UserData: any;

  fileName: string = '';

  constructor() {}

  uploadResume(event: any): void {
    const inputFile = event.target.files[0];
    console.log(inputFile);
    this.fileName = inputFile ? inputFile.name : '';
  }

  ngOnInit(): void {
    console.log(this.UserData);
    // Assuming you have personalInfo.Resume available to initialize fileName
    this.fileName = this.UserData.personalInfo.Resume
      ? this.UserData.personalInfo.Resume.name
      : '';

    const applicanttype =
      this.UserData.Qualifications.ProfessionalQualifications.ApplicantType;

    if (applicanttype) {
      if (applicanttype === 'Fresher') {
        (
          document.querySelector('.proqualifications') as HTMLInputElement
        ).style.display = 'none';
        (
          document.querySelector('.fresherqualifications') as HTMLInputElement
        ).style.display = 'block';
      } else if (applicanttype === 'Experienced') {
        (
          document.querySelector('.proqualifications') as HTMLInputElement
        ).style.display = 'block';
        (
          document.querySelector('.fresherqualifications') as HTMLInputElement
        ).style.display = 'none';
      } else {
        (
          document.querySelector('.proqualifications') as HTMLInputElement
        ).style.display = 'none';
        (
          document.querySelector('.fresherqualifications') as HTMLInputElement
        ).style.display = 'none';
      }
    }
  }

  photoinput = document.querySelector('.photo-input');
  inputPhoto: any;
  profilePhotoSrc: string = '../../../assets/images/default-profile-photo.png';

  uploadProfilePhoto(event: any): void {
    this.inputPhoto = event.target.files[0];
    if (this.inputPhoto) {
      // Assuming you have a method to handle image uploads and get a URL
      // For example, you can use FileReader to read the image and convert it to a data URL
      const reader = new FileReader();

      reader.onload = (e: any) => {
        this.profilePhotoSrc = e.target.result;
      };

      reader.readAsDataURL(this.inputPhoto);
    }
  }
}
