import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { CustomerModule } from './customer/customer.module';
import { AppComponent } from './app.component';
import { SharedModule } from './shared/shared.module';
@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule, CustomerModule, SharedModule],
  bootstrap: [AppComponent],
})
export class AppModule {}
