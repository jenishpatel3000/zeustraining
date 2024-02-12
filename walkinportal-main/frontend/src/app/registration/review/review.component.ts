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
    // const photoinput = document.querySelector('.photo-input');
    // const inputPhoto = this.UserData.PersonalInformation.ProfilePhoto;
    // let profilePhotoSrc = '../../../assets/images/default-profile-photo.png';
    // if (inputPhoto) {
    //   this.profilePhotoSrc = inputPhoto;
    // }

    // const reader = new FileReader();
    // reader.onload = (e: any) => {
    //   this.profilePhotoSrc = e.target.result;
    //   this.UserData.PersonalInformation.profilePhoto = this.profilePhotoSrc;
    // };
    // reader.readAsDataURL(this.profilePhotoSrc);
    console.log('jenish logging from review object' + this.UserData);
    // Assuming you have personalInfo.Resume available to initialize fileName

    if (
      this.UserData &&
      this.UserData.Qualifications &&
      this.UserData.Qualifications.ProfessionalQualifications
    ) {
      const applicantType =
        this.UserData.Qualifications.ProfessionalQualifications.ApplicantType;
      console.log('ApplicantType:', applicantType);

      if (applicantType === 'Fresher') {
        this.showFresherQualifications();
      } else if (applicantType === 'Experienced') {
        this.showProfessionalQualifications();
      } else {
        this.hideAllQualifications();
      }
    }

    if (
      this.UserData &&
      this.UserData.personalInfo &&
      this.UserData.personalInfo.Resume
    ) {
      this.fileName = this.UserData.personalInfo.Resume.name;
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
  private showFresherQualifications(): void {
    document.querySelector('.proqualifications')?.classList.add('hidden');
    document
      .querySelector('.fresherqualifications')
      ?.classList.remove('hidden');
  }

  private showProfessionalQualifications(): void {
    document.querySelector('.proqualifications')?.classList.remove('hidden');
    document.querySelector('.fresherqualifications')?.classList.add('hidden');
  }

  private hideAllQualifications(): void {
    document.querySelector('.proqualifications')?.classList.add('hidden');
    document.querySelector('.fresherqualifications')?.classList.add('hidden');
  }
}
