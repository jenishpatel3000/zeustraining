import { classes, cardimage, menutype } from "./LiteralTypes";

export interface cardDataIf1 {
  courseId: number;
  name: string;
  type: string;
  grade: string;
  extraCount: string;
  unitCount: number;
  lessonsCount: number;
  topicsCount: number;
  classes: classes[];
  students: string;
  date: string;
  image: cardimage;
  expire: boolean;
  brightstar: boolean;
}

export interface notificationData {
  id: number;
  Description: string;
  readStatus: boolean;
  class: string;
  Course: string;
  Date_Time: string;
}

export interface AnnouncementData {
  id: number;
  PA: string;
  Description: string;
  readStatus: boolean;
  class: string;
  Course: string;
  files_atteched: string;
  Date_Time: string;
}
