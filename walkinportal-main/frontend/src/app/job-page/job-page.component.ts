import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-job-page',
  templateUrl: './job-page.component.html',
  styleUrls: ['./SCSS/style.scss'],
})
export class JobPageComponent implements OnInit {
  constructor() {}

  ngOnInit(): void {
    async function fetchData() {
      try {
        const response = await fetch('./JobDataJson.json');
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        const data = await response.json();
        console.log(data);
        const container = document.querySelector('.JobContainer');
        if (container) {
          container.innerHTML = `
       <div class="JobTitle">
${data.JobTitle}
    </div>
    <div class="JobDateLocationContainer">
        <div class="JobDate">
            <label for="JobDateTime" class="JobDateLabel">Date & Time :</label>
            <div class="JobDateTime">${data.JobTitle}</div>
        </div>
        <div class="JobLocation">${data.JobTitle}</div>
    </div>
    <div class="DividingLine"></div>
    ${data.JobRoles.forEach((role: String) => {
      `
        <div class="JobRoleContainer">
        <label class="JobRoleLabel">Job Roles :</label>
        <div class="JobRole">
        <img src="" class="JobRoleImage" alt="" />
        <div class="JobRoleName">${role}</div>
        </div>
        </div>
        `;
    })}
    <div class="JobSpecialMessage">
    ${data.JobSpecialMessage}</div>
    </div>
    <div class="buttonContainer">
        <button type="button" class="viewbtn">
            VIEW MORE DETAILS
        </button>
    </div>
    <div class="expireDate">Expire in ${
      data.JobExpiringRemainingDays
    } days</div>
    `;
        }
      } catch (error) {
        console.error('There was a problem with the fetch operation:', error);
      }
    }
    fetchData();
  }
}
