import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root',
})
export class DataService {
  constructor(private http: HttpClient) {}

  fetchCardData(): Observable<any> {
    return this.http.get<any>('./cardData.json').pipe(
      catchError(this.handleError) // Handle errors if any
    );
  }

  // Handle errors
  private handleError(error: any): Observable<never> {
    console.error('An error occurred:', error);
    // Return an observable that emits an error
    throw Error('An error occurred while fetching card data.');
  }
}
