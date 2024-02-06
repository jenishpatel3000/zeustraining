import { Component, OnInit } from '@angular/core';
import { DataService } from '../../core/data.service';
import { cardDataIf1, notificationData, AnnouncementData } from './interface';
@Component({
  selector: 'app-card-list',
  templateUrl: './card-list.component.html',
})
export class CardListComponent implements OnInit {
  constructor(private dataService: DataService) {}
  ngOnInit(): void {
    this.dataService.fetchCardData().subscribe(
      (cardData: cardDataIf1[]) => {
        cardData.forEach((course: cardDataIf1) => {
          this.createCard(course);
        });
      },
      (error: any) => {
        console.error('Error fetching cardData:', error);
      }
    );
    const menuOptioncontainer = document.createElement('div');
    menuOptioncontainer.classList.add('nav-option-container');
    menuOptioncontainer.innerHTML = `
      <div class="nav-option-content">
      <a href="#" class="menu-option option1">DASHBOARD</a>
      <a href="#" class="menu-option option2"><div class="flex">CONTENT
      <img src="./quantum screen assets/quantum screen assets/icons/arrow-down.svg" class="arrow-down" alt="arrow down"/>
      </div>
      <div class="submenu">COURSE CATALOG</div>
      </a>
      <a href="#" class="menu-option option3"><div class="flex">USERS
      <img src="./quantum screen assets/quantum screen assets/icons/arrow-down.svg" class="arrow-down" alt="arrow down"/>
       </div>
      <div class="submenu">COURSE CATALOG</div></a>
      <a href="#" class="menu-option option4"><div class="flex">REPORTS
      <img src="./quantum screen assets/quantum screen assets/icons/arrow-down.svg" class="arrow-down" alt="arrow down"/>
       </div>
      <div class="submenu">COURSE CATALOG</div></a>
      <a href="#" class="menu-option option5"><div class="flex">ADMIN
      <img src="./quantum screen assets/quantum screen assets/icons/arrow-down.svg" class="arrow-down" alt="arrow down"/>
       </div>
      <div class="submenu">COURSE CATALOG</div></a>
      </div>
      `;
    menuOptioncontainer.style.display = 'none';
    document.body.appendChild(menuOptioncontainer);

    const hamburgerIcon: HTMLElement | null =
      document.querySelector('.hamburger');

    if (hamburgerIcon) {
      hamburgerIcon.addEventListener('click', (e) => {
        e.stopPropagation();
        if (notifications) notifications.style.display = 'none';
        if (announcements) announcements.style.display = 'none';
        if (menuOptioncontainer.style.display === 'none')
          menuOptioncontainer.style.display = 'block';
        else menuOptioncontainer.style.display = 'none';
      });
    }

    const menuoption: NodeListOf<Element> | null =
      document.querySelectorAll('.menu-option');
    menuoption.forEach((menu) => {
      const clickedSubmenu: HTMLElement | null = menu.querySelector('.submenu');
      if (menu && clickedSubmenu) {
        menu.addEventListener('click', (e) => {
          e.stopPropagation();
          if (clickedSubmenu) {
            if (clickedSubmenu.style.display === 'none') {
              clickedSubmenu.style.display = 'block';
            } else {
              clickedSubmenu.style.display = 'none';
            }
          }
          if (menuOptioncontainer.style.display === 'none') {
            clickedSubmenu.style.display = 'none';
          }
        });
      }
    });

    document.body.addEventListener('click', (event) => {
      if (hamburgerIcon) {
        if (
          !menuOptioncontainer.contains(event.target as Node) &&
          !hamburgerIcon.contains(event.target as Node)
        ) {
          menuOptioncontainer.style.display = 'none';
          menuoption.forEach((menu) => {
            const submenu: HTMLElement | null = menu.querySelector('.submenu');
            if (submenu) {
              submenu.style.display = 'none';
            }
          });
        }
      }
      if (notifications) {
        if (!notifications?.contains(event.target as Node)) {
          notifications.style.display = 'none';
        }
      }
      if (announcements) {
        if (!announcements?.contains(event.target as Node)) {
          announcements.style.display = 'none';
        }
      }
    });

    const notifications: HTMLElement | null =
      document.querySelector('.notifications');
    if (notifications) {
      notifications.style.display = 'none';
    }
    const notifyIcon: HTMLElement | null =
      document.querySelector('.notification');

    if (notifyIcon) {
      notifyIcon.addEventListener('click', (e) => {
        e.stopPropagation();
        if (announcements) {
          announcements.style.display = 'none';
        }

        menuOptioncontainer.style.display = 'none';
        if (notifications) {
          notifications.innerHTML = '';
        }
        fetch('./NotificationData.json')
          .then((response: Response) => response.json())
          .then((NotifyData) => {
            // console.log(cardData);
            NotifyData.forEach((notification: notificationData) => {
              createNotification(notification);
            });
            if (notifications)
              notifications.innerHTML += `<div class="notify-buttons"><button type="button" class="show-button">Show All</button>
            </div>`;
          })
          .catch((error: any) =>
            console.error('Error fetching Notification Data:', error)
          );
        if (notifications)
          notifications?.style.display == 'none'
            ? (notifications.style.display = 'block')
            : (notifications.style.display = 'none');
      });
    }

    function createNotification(notification: notificationData): void {
      const notifycontainer: HTMLElement | null = document.createElement('div');
      notifycontainer.classList.add('notify-container');
      if (notifications) {
        notifications.appendChild(notifycontainer);
      }
      notifycontainer.innerHTML = `
        <div class="notify-firstline">
              <div class="notify-description">${notification.Description}</div>
              <div class="notify-readStatus">${
                notification.readStatus
                  ? `
                  <img class="readicon" src="./correct.png" alt="Notification Read" />
                `
                  : `
                  <img class="dndicon" src="./dnd.png" alt="Notification not read" />
                `
              }</div>
              </div>
              ${
                notification.class !== ''
                  ? `<div class="notify-class"><p class='lowoptitle'>Class:</p>${notification.class}</div>`
                  : `<div class="notify-emptyClass"></div>`
              }
              ${
                notification.Course !== ''
                  ? `<div class="notify-course"><p class='lowoptitle'>Course:</p>${notification.Course}</div>`
                  : `<div class="notify-emptycourse"></div>`
              }
              <div class="notify-dateTime">${notification.Date_Time}</div> 
              
              `;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    const announcements: HTMLElement | null =
      document.querySelector('.announcements');
    if (announcements) {
      announcements.style.display = 'none';
    }

    const announceIcon: HTMLElement | null =
      document.querySelector('.Announcement');

    if (announceIcon) {
      announceIcon.addEventListener('click', (e) => {
        e.stopPropagation();
        if (notifications) notifications.style.display = 'none';
        menuOptioncontainer.style.display = 'none';
        if (announcements) {
          announcements.innerHTML = '';
        }
        fetch('./announcementData.json')
          .then((response: Response) => response.json())
          .then((AnnounceData) => {
            // console.log(cardData);
            AnnounceData.forEach((announce: AnnouncementData) => {
              createAnnouncement(announce);
            });
            if (announcements)
              announcements.innerHTML += `<div class="announce-buttons"><button type="button" class="show-button">Show All</button>
            <div class="btncenterline"></div>
            <button type="button" class="create-button">create new</button>
            </div>`;
          })
          .catch((error: any) =>
            console.error('Error fetching Notification Data:', error)
          );
        if (announcements)
          announcements?.style.display == 'none'
            ? (announcements.style.display = 'block')
            : (announcements.style.display = 'none');
      });
    }

    function createAnnouncement(announcement: AnnouncementData): void {
      const announcecontainer: HTMLElement | null =
        document.createElement('div');
      announcecontainer.classList.add('announce-container');
      if (announcements) {
        announcements.appendChild(announcecontainer);
      }
      announcecontainer.innerHTML = `
      <div class="announce-PA"><p class='lowoptitle'>PA:</p>${
        announcement.PA
      }</div>
        <div class="announce-firstline">
              <div class="announce-description">${
                announcement.Description
              }</div>
              <div class="announce-readStatus">${
                announcement.readStatus
                  ? `
                  <img class="readicon" src="./correct.png" alt="announcement Read" />
                `
                  : `
                  <img class="dndicon" src="./dnd.png" alt="announcement not read" />
                `
              }</div>
              </div>
              ${
                announcement.class !== ''
                  ? `<div class="announce-class"><p class='lowoptitle'>Class:</p>${announcement.class}</div>`
                  : `<div class="announce-emptyClass"></div>`
              }
              ${
                announcement.Course !== ''
                  ? `<div class="announce-course"><p class='lowoptitle'>Course:</p>${announcement.Course}</div>`
                  : `<div class="announce-emptycourse"></div>`
              }
              
              ${
                announcement.files_atteched
                  ? ` <div class="announce-lastline"> <div class="announce-lastline-files">
              <img src="./paperclip.svg" alt="paperclip icon" class="paperclip-icon" />
              <div class="announce-fileatteched">${announcement.files_atteched}</div>
              </div>
              <div class="announce-dateTime">${announcement.Date_Time}</div> 
              </div>`
                  : `  <div class="announce-dateTime">${announcement.Date_Time}</div> `
              }
            
              
              `;
    }
  }
  createCard(course: cardDataIf1): void {
    // fetch('./cardData.json')
    //   .then((response: Response) => response.json())
    //   .then((cardData: cardDataIf1[]) => {
    //     // console.log(cardData);
    //     cardData.forEach((course: cardDataIf1) => {
    //       createCard(course);
    //     });
    //   })
    //   .catch((error: any) => console.error('Error fetching cardData:', error));

    // function createCard(course: cardDataIf1) {
    const cardContainer: HTMLElement | null =
      document.getElementById('card-container');
    const cardDiv: HTMLElement | null = document.createElement('div');
    cardDiv.classList.add('card');

    const courseExpired: HTMLElement | null = document.createElement('div');
    courseExpired.classList.add('expired-label');
    courseExpired.innerHTML = `EXPIRED`;
    const cardContent: HTMLElement | null = document.createElement('div');
    cardContent.classList.add('card-flex-container');
    cardContent.innerHTML = `
  
                            <img class="card-img img${course.courseId - 1}"
                                src="${course.image}"

                                alt="course image" />
                                ${
                                  course.expire === true
                                    ? `  <div class="card-content1">`
                                    : `  <div class="card-content">`
                                }
                                <div class="card-heading${course.courseId}">${
      course.name
    }</div>
                                <div class="course-details">
                                    <span class="type">
                                        ${course.type}
                                    </span>
                                    <div class="pipe1"></div>
                                    <div class="grade">
                                        ${course.grade}
                                    </div>
                                    <span class="extra-count">
                                        ${course.extraCount}
                                    </span>
                                </div>
                                <div class="course-lengthdetails">
                                    <div class="unit-detail">
                                        <span class="count">
                                            ${course.unitCount}
                                        </span>
                                        <span class="unit">
                                            Units
                                        </span>
                                    </div>
                                    <div class="lessons-detail">
                                        <span class="count">
                                             ${course.lessonsCount}
                                        </span>
                                        <span class="lessons">
                                            Lessons
                                        </span>
                                    </div>
                                    <div class="topics-detail">
                                        <span class="count">
                                             ${course.topicsCount}
                                        </span>
                                        <span class="topics">
                                            Topics
                                        </span>
                                    </div>
                                </div>

                                <div class="inputContainer1">
                                    <select required="true" class="customInput customInput1" id="ci1" name="state">
                                    <option class="option" value="Course Name" selected> ${
                                      course.classes[0]
                                    }
                                    </option>
                                        <option class="option" value="" disabled>${
                                          course.classes[1]
                                        }</option>
                                        <option value="Date" class="option">${
                                          course.classes[2]
                                        }</option>
                                        <option value="Date" class="option">${
                                          course.classes[3]
                                        }</option>

                                        <!-- Add more options as needed -->
                                    </select>
                                    <div class="inputUnderline"></div>
                                </div>
                                <div class="time-details">
                                    <span class="student">
                                        ${course.students}
                                    </span>
                                       ${
                                         course.date
                                           ? `<div class="pipe1"></div><div class="date">${course.date}</div>`
                                           : ''
                                       }
                                </div>
                            </div>
                            ${
                              course.brightstar === false
                                ? `  <div class="star1">
                                <img class="brightstar1"
                                    src="./quantum screen assets/quantum screen assets/icons/favourite.svg"
                                    alt="star icon" />
                            </div>`
                                : `<div class="star">
                                <img class="brightstar"
                                    src="./quantum screen assets/quantum screen assets/icons/favourite.svg"
                                    alt="star icon" />
                            </div>`
                            }
                            
                            
  `;
    const underline: HTMLElement | null = document.createElement('div');
    underline.classList.add('inputUnderlinecard');
    const btncontainer: HTMLElement | null = document.createElement('div');
    btncontainer.classList.add('fourbtn-container');

    if (btncontainer) {
      btncontainer.innerHTML = `  
      <img class="showicon" alt="show icon" src="./quantum screen assets/quantum screen assets/icons/preview.svg"></img>
          ${
            course.courseId === 3 || course.courseId === 2
              ? `
                  <img class="calendericon opacity" alt="calendar icon" src="./quantum screen assets/quantum screen assets/icons/manage course.svg"></img>
                  <img class="gradeicon opacity" alt="grade icon" src="./quantum screen assets/quantum screen assets/icons/grade submissions.svg"></img>
              `
              : `
                  <img class="calendericon" alt="calendar icon" src="./quantum screen assets/quantum screen assets/icons/manage course.svg"></img>
                  <img class="gradeicon" alt="grade icon" src="./quantum screen assets/quantum screen assets/icons/grade submissions.svg"></img>
              `
          }
          <img class="reporticon" alt="report icon" src="./quantum screen assets/quantum screen assets/icons/reports.svg"></img>
      `;
    }

    if (course.expire === true) {
      cardDiv.appendChild(courseExpired);
    }
    cardDiv.appendChild(cardContent);
    cardDiv.appendChild(underline);
    cardDiv.appendChild(btncontainer);
    if (cardContainer) {
      cardContainer.appendChild(cardDiv);
    }
  }
}
