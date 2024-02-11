import { Component, OnInit, ViewEncapsulation } from '@angular/core';

import {
  userData,
  Experienced,
  Fresher,
  Yesorno,
  qualification,
  College,
  Steam,
  JobRoles,
  year,
  ProfessionalQualification,
} from './userRegistrationData';
@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.scss'],
  encapsulation: ViewEncapsulation.None,
})
export class RegistrationComponent implements OnInit {
  // show2: boolean = false;
  isEnabled: boolean = false;

  userData: userData = {
    PersonalInformation: {
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
    },
    Qualifications: {
      EducationalQualifications: {
        Percentage: 0,
        YearOfPassing: year.val6,
        Qualification: qualification.val1,
        Stream: Steam.val1,
        College: College.val1,
        otherCollege: '',
        collegeLocation: '',
      },
      ProfessionalQualifications: {
        ApplicantType: '',
      } as ProfessionalQualification,
    },
  };
  Freshers: Fresher = {
    ApplicantType: '',
    TechFamiliar: [],
    OtherTechFamiliar: '',
    AppearedIn: Yesorno.No,
    RoleAppearedIn: '',
  };
  experience: Experienced = {
    ApplicantType: '',
    YearsOfExperience: 0,
    CurrentCTC: '',
    ExpectedCTC: '',
    TechExpertized: [],
    OtherTechExpertized: '',
    TechFamiliar: [],
    OtherTechFamiliar: '',
    NoticePeriod: Yesorno.No,
    NoticePeriodEndDate: new Date(),
    AppearedIn: Yesorno.No,
    RoleAppearedIn: '',
  };

  userDataArray: userData[] = [];

  // initializeProfessionalQualifications(applicantType: string): void {
  //   if (applicantType === 'Fresher') {
  //     this.userData.Qualifications.ProfessionalQualifications = {
  //       ...this.Freshers,
  //     };
  //   } else if (applicantType === 'Experienced') {
  //     this.userData.Qualifications.ProfessionalQualifications = {
  //       ...this.experience,
  //     };
  //   } else {
  //     console.error('Invalid applicant type');
  //   }
  // }
  updatePersonalInfo(personalInfo: any): void {
    this.userData.PersonalInformation = personalInfo;
    console.log(
      'registration component ' +
        this.userData.PersonalInformation.PreferredJobRoles
    );
  }

  updateEducationQualifications(eduQualifications: any): void {
    this.userData.Qualifications.EducationalQualifications = eduQualifications;
    console.log(
      'registration component ' +
        this.userData.Qualifications.EducationalQualifications.Percentage
    );
  }
  updateProfessionalQualifications(profQualifications: any): void {
    let profQual = this.userData.Qualifications.ProfessionalQualifications;

    console.log('Applicant Type:', profQual.ApplicantType);

    if (profQualifications.ApplicantType === 'Fresher') {
      profQual = {
        ...this.Freshers,
      };
    } else if (profQualifications.ApplicantType === 'Experienced') {
      console.log('Updating for Experienced');
      console.log('Experience:', this.experience);
      // Assign properties only if they are defined
      if (this.experience) {
        profQual = {
          ...this.experience,
        };
      }
    }
    profQual = profQualifications;

    // Console log for debugging (comment out in production)
    console.log(
      'in regestration component Professional Qualifications:',
      profQual
    );
  }

  saveUserData(): void {
    this.userDataArray.push({ ...this.userData });
    // Reset userData object for next entry
    this.userData = {
      PersonalInformation: {
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
      },
      Qualifications: {
        EducationalQualifications: {
          Percentage: 0,
          YearOfPassing: year.val6,
          Qualification: qualification.val1,
          Stream: Steam.val1,
          College: College.val1,
          otherCollege: '',
          collegeLocation: '',
        },
        ProfessionalQualifications: {
          ApplicantType: '',
        } as ProfessionalQualification,
      },
    };
  }
  constructor() {}

  showStep1(): void {
    // const personalinfo = document.querySelector('.step1');
    // const qualifications = document.querySelector('.step2');
    this.isEnabled = false;
  }
  showStep2(): void {
    // const personalinfo = document.querySelector('.step1');
    // const qualifications = document.querySelector('.step2');
    this.isEnabled = true;
  }
  ngOnInit(): void {
    console.log(this.userData);
  }
}
