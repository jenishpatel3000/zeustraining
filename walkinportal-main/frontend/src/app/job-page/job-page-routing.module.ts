import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { JobPageComponent } from './job-page.component';
import { JobInfoComponent } from './job-info/job-info.component';

const routes: Routes = [
  { path: 'jobs', component: JobPageComponent },
  { path: 'jobs/:id', component: JobInfoComponent },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class JobPageRoutingModule {}
