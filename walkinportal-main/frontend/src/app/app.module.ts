import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { ContactComponent } from './contact/contact.component';
import { LoginModule } from './login/login.module';
import { RegistrationModule } from './registration/registration.module';
import { JobPageComponent } from './job-page/job-page.component';

@NgModule({
  declarations: [AppComponent, HeaderComponent, ContactComponent, JobPageComponent],
  imports: [BrowserModule, AppRoutingModule, LoginModule, RegistrationModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
