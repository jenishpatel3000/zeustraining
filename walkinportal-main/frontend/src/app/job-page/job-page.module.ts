import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { JobPageComponent } from './job-page.component';
@NgModule({
  declarations: [JobPageComponent],
  imports: [CommonModule, FormsModule],
  exports: [JobPageComponent],
})
export class JobModule {}
