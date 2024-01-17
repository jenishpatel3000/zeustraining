import { classes, cardimage } from "./LiteralTypes";

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
}
export interface cardDataIf2 {
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
  expiredLabel: "EXPIRED";
}
