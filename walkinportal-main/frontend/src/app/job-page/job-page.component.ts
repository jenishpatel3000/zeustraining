import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { IJobData } from './JobData';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';

@Component({
  selector: 'app-job-page',
  templateUrl: './job-page.component.html',
  styleUrls: ['./SCSS/style.scss'],
})
export class JobPageComponent implements OnInit {
  Job: IJobData[] = [];

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    this.fetchData();
  }

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
        this.Job = data;
        console.log(data);
      });
  }
}
