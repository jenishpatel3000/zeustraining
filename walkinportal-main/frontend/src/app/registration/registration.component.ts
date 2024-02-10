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
        TechFamiliar: [],
        OtherTechFamiliar: '',
        AppearedIn: Yesorno.No,
        RoleAppearedIn: '',
      },
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

  updatePersonalInfo(personalInfo: any): void {
    this.userData.PersonalInformation = personalInfo;
    // console.log(
    //   'registration component ' + this.userData.PersonalInformation.Resume
    // );
  }

  updateEducationQualifications(eduQualifications: any): void {
    this.userData.Qualifications.EducationalQualifications = eduQualifications;
    console.log(
      'registration component ' +
        this.userData.Qualifications.EducationalQualifications.Percentage
    );
  }

  updateProfessionalQualifications(profQualifications: any): void {
    this.userData.Qualifications.ProfessionalQualifications =
      profQualifications;
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
          TechFamiliar: [],
          OtherTechFamiliar: '',
          AppearedIn: Yesorno.No,
          RoleAppearedIn: '',
        },
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
  ngOnInit(): void {}
}
