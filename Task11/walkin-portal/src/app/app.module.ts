import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { SharedModule } from './shared/shared.module';
import { DashboardModule } from './dashboard/dashboard.module';
@NgModule({
  declarations: [AppComponent, LoginComponent],
  imports: [BrowserModule, HttpClientModule, SharedModule, DashboardModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
