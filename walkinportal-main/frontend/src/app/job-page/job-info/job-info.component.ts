import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { IJobData } from '../JobData';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';
import { ActivatedRoute, Router } from '@angular/router';
@Component({
  selector: 'app-job-info',
  templateUrl: './job-info.component.html',
  styleUrls: ['./job-info.component.scss'],
})
export class JobInfoComponent implements OnInit {
  Jobs: IJobData[] = [];

  constructor(private http: HttpClient, private route: ActivatedRoute) {}

  fetchData(): void {
    this.http
      .get<IJobData[]>('/assets/JobDataJson.json')
      .pipe(
        catchError((error) => {
          console.error('There was a problem with the fetch operation:', error);
          return throwError(error);
        })
      )
      .subscribe((data) => {
        this.Jobs = data;
        // console.log(data);
      });
  }
  jobid: any;

  ngOnInit(): void {
    this.fetchData();
    const id = this.route.snapshot.paramMap.get('id');
    if (id !== null) {
      // id is not null, so it's safe to use
      this.jobid = +id;
      // Now use numericId as needed
    } else {
      this.jobid = 1;
      // Handle the case where 'id' is null
    }
    console.log(this.jobid);
  }

  isNotExpanded = false;
  maxHeight: number = 0;

  toggleExpansion() {
    this.isNotExpanded = !this.isNotExpanded;
    if (this.isNotExpanded) {
      this.maxHeight = 0;
    } else {
      const contentElement = document.querySelector('.job-pre-requisite');
      this.maxHeight = contentElement ? contentElement.scrollHeight : 0;
    }
  }

  convertTo12HourFormat(time24: string) {
    const [hours, minutes, seconds] = time24.split(':');

    let period = 'AM';
    let adjustedHours = parseInt(hours, 10);

    if (adjustedHours >= 12) {
      period = 'PM';
      adjustedHours = adjustedHours > 12 ? adjustedHours - 12 : adjustedHours;
    }

    const time12 = `${adjustedHours
      .toString()
      .padStart(2, '0')}:${minutes} ${period}`;
    return time12;
  }

  input = document.querySelector('#resume-input');
  fileName = document.querySelector('.file-name');
  inputFile: any;

  uploadResume(event: any): void {
    this.inputFile = event.target.files[0];
    console.log(this.inputFile);
    this.fileName = this.inputFile ? this.inputFile.name : '';
  }
}
