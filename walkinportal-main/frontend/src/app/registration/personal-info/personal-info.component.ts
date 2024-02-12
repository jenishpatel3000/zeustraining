import { Component, OnInit, EventEmitter, Output } from '@angular/core';
// import { userData } from '../userRegistrationData';
@Component({
  selector: 'app-personal-info',
  templateUrl: './personal-info.component.html',
  styleUrls: ['./SCSS/style.scss'],
})
export class PersonalInfoComponent implements OnInit {
  selectedRoles: string[] = [];
  @Output() personalInfoUpdated = new EventEmitter<any>();

  personalInfo: any = {
    FirstName: '',
    LastName: '',
    Email: '',
    ProfilePhoto: null,
    PhoneNumber: '',
    PortfolioURL: '',
    Referral: '',
    sendemail: false,
    countryCode: '',
    Resume: null,
    PreferredJobRoles: [],
  };

  updatePersonalInfo(): void {
    this.personalInfoUpdated.emit(this.personalInfo);
    console.log('Personal info updated in child component' + this.personalInfo);
  }
  constructor() {}

  ngOnInit(): void {}

  toggleJobRole(role: string): void {
    const index = this.selectedRoles.indexOf(role);
    if (index !== -1) {
      this.selectedRoles.splice(index, 1); // Remove role if already selected
    } else {
      this.selectedRoles.push(role); // Add role if not already selected
    }
    console.log('Selected job roles:', this.selectedRoles);
    this.personalInfo.PreferredJobRoles = this.selectedRoles;
    console.log('selected job roles:', this.personalInfo.PreferredJobRoles);
  }
  input = document.querySelector('#resume-input');
  fileName = document.querySelector('.file-name');
  inputFile: any;

  uploadResume(event: any): void {
    this.inputFile = event.target.files[0];
    console.log(this.inputFile);
    this.fileName = this.inputFile ? this.inputFile.name : '';
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
        this.personalInfo.profilePhoto = this.profilePhotoSrc;
      };

      reader.readAsDataURL(this.inputPhoto);
    }
  }

  // showStep2(): void {}
}
