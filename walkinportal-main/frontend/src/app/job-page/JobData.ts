export interface IJobData {
  JobId: number;
  JobTitle: string;
  JobDateTime: string;
  JobLocation: string;
  JobRoles: string[];
  JobSpecialMessage: string;
  JobExpiringRemainingDays: number;
}
export enum Jobrole {
  val1 = 'Instructional Designer',
  val2 = 'Software Engineer',
  val3 = 'Software Quality Engineer',
}
