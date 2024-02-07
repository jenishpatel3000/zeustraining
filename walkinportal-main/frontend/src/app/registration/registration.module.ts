import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CreateAccountBarComponent } from './create-account-bar/create-account-bar.component';
import { ProgressBarComponent } from './progress-bar/progress-bar.component';
import { PersonalInfoComponent } from './personal-info/personal-info.component';
import { QualificationsComponent } from './qualifications/qualifications.component';

@NgModule({
  declarations: [
    CreateAccountBarComponent,
    ProgressBarComponent,
    PersonalInfoComponent,
    QualificationsComponent,
  ],
  imports: [CommonModule],
  exports: [
    CreateAccountBarComponent,
    ProgressBarComponent,
    PersonalInfoComponent,
    QualificationsComponent,
  ],
})
export class RegistrationModule {}
