export interface userData {
  PersonalInformation: {
    FirstName: string;
    LastName: string;
    ProfilePhoto: File | null;
    Email: string;
    countryCode: string;
    PhoneNumber: string;
    Resume: File | null;
    PortfolioURL: string;
    PreferredJobRoles: JobRoles[];
    Referral: string;
    sendemail: boolean;
  };
  Qualifications: {
    EducationalQualifications: {
      Percentage: number;
      YearOfPassing: year;
      Qualification: qualification;
      Stream: Steam;
      College: College;
      otherCollege: string;
      collegeLocation: string;
    };
    ProfessionalQualifications: Fresher | Experienced;
  };
}

export interface Experienced {
  ApplicantType: string;
  YearsOfExperience: number;
  CurrentCTC: string;
  ExpectedCTC: string;
  TechExpertized: Tech[];
  OtherTechExpertized: string;
  TechFamiliar: Tech[];
  OtherTechFamiliar: string;
  NoticePeriod: Yesorno;
  NoticePeriodEndDate: Date;
  AppearedIn: Yesorno;
  RoleAppearedIn: string;
}
export interface Fresher {
  ApplicantType: string;
  TechFamiliar: Tech[];
  OtherTechFamiliar: string;
  AppearedIn: Yesorno;
  RoleAppearedIn: string;
}

export enum Yesorno {
  Yes = 'Yes',
  No = 'No',
}
export enum Tech {
  Javascript = 'Javascript',
  AngularJS = 'Angular JS',
  React = 'React',
  NodeJS = 'Node JS',
  Others = 'Others',
}
export enum year {
  val1 = '2020',
  val2 = '2019',
  val3 = '2018',
  val4 = '2017',
  val5 = '2016',
  val6 = '',
}
export enum qualification {
  val1 = 'Bachelor in Technology (B.Tech)',
  val2 = '2019',
  val3 = '2018',
  val4 = '2017',
  val5 = '2016',
}
export enum College {
  val1 = 'Pune Institute of Technology (PIT)',
  val2 = '2019',
  val3 = '2018',
  val4 = '2017',
  val5 = '2016',
}
export enum Steam {
  val1 = 'Information Technology',
  val2 = '2019',
  val3 = '2018',
  val4 = '2017',
  val5 = '2016',
}
export enum JobRoles {
  val1 = 'Instructional Designer',
  val2 = 'Software Engineer',
  val3 = 'Software Quality Engineer',
}
