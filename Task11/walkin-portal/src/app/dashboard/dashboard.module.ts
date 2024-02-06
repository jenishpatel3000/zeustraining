import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DashboardComponent } from './dashboard.component';
import { CardListComponent } from './card-list/card-list.component';
@NgModule({
  imports: [CommonModule],
  declarations: [DashboardComponent, CardListComponent],
  exports: [DashboardComponent, CardListComponent],
})
export class DashboardModule {}
