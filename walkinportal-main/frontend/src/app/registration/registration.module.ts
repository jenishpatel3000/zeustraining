import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CreateAccountBarComponent } from './create-account-bar/create-account-bar.component';
import { ProgressBarComponent } from './progress-bar/progress-bar.component';
import { PersonalInfoComponent } from './personal-info/personal-info.component';
import { RegistrationComponent } from './registration.component';
import { QualificationsModule } from './qualifications/qualifications.module';
@NgModule({
  declarations: [
    CreateAccountBarComponent,
    ProgressBarComponent,
    PersonalInfoComponent,
    RegistrationComponent,
  ],
  imports: [CommonModule, QualificationsModule],
  exports: [
    CreateAccountBarComponent,
    ProgressBarComponent,
    PersonalInfoComponent,
    RegistrationComponent,
  ],
})
export class RegistrationModule {}
