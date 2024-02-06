import { NgModule } from '@angular/core';

import { CapitalizePipe } from './Capitalize.pipe';
@NgModule({
  declarations: [CapitalizePipe],
  exports: [CapitalizePipe],
})
export class SharedModule {}
