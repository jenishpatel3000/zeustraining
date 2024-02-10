import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { CreateAccountBarComponent } from './create-account-bar/create-account-bar.component';
import { ProgressBarComponent } from './progress-bar/progress-bar.component';
import { PersonalInfoComponent } from './personal-info/personal-info.component';
import { RegistrationComponent } from './registration.component';
import { QualificationsModule } from './qualifications/qualifications.module';
import { ReviewComponent } from './review/review.component';
import { userData } from './userRegistrationData';
@NgModule({
  declarations: [
    CreateAccountBarComponent,
    ProgressBarComponent,
    PersonalInfoComponent,
    RegistrationComponent,
    ReviewComponent,
  ],
  imports: [CommonModule, QualificationsModule, FormsModule],
  exports: [
    CreateAccountBarComponent,
    ProgressBarComponent,
    PersonalInfoComponent,
    RegistrationComponent,
  ],
})
export class RegistrationModule {}
