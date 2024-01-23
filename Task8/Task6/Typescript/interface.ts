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

export interface menudataif1 {
  id: number;
  name: string;
  type: "item";
}
export interface menudataif2 {
  id: number;
  name: string;
  type: "submenu";
  items: [{ name: string; type: string }];
}
