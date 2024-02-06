import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'filter-box',
  template: `Filter : <input type="text" />`,
})
export class FilterBox implements OnInit {
  constructor() {}
  ngOnInit(): void {}
}
