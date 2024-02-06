import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SharedModule } from '../shared/shared.module';
import { FilterBox } from './customer-list/filter-box.component';
import { CustomersListComponent } from './customer-list/customer-list.component';
import { CustomerComponent } from './customer.component';
@NgModule({
  imports: [CommonModule, SharedModule],
  declarations: [CustomerComponent, CustomersListComponent, FilterBox],
  exports: [CustomerComponent],
})
export class CustomerModule {}
