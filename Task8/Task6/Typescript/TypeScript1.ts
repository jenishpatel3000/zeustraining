import { cardDataIf1, menudataif1, menudataif2 } from "./interface";
fetch("./cardData.json")
  .then((response: Response) => response.json())
  .then((cardData: cardDataIf1[]) => {
    // console.log(cardData);
    cardData.forEach((course: cardDataIf1) => {
      createCard(course);
    });
  })
  .catch((error: any) => console.error("Error fetching cardData:", error));

function createCard(course: cardDataIf1) {
  const cardContainer: HTMLElement | null =
    document.getElementById("card-container");
  const cardDiv: HTMLElement | null = document.createElement("div");
  cardDiv.classList.add("card");

  const courseExpired: HTMLElement | null = document.createElement("div");
  courseExpired.classList.add("expired-label");
  courseExpired.innerHTML = `EXPIRED`;
  const cardContent: HTMLElement | null = document.createElement("div");
  cardContent.classList.add("card-flex-container");
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
                                           : ""
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
  const underline: HTMLElement | null = document.createElement("div");
  underline.classList.add("inputUnderlinecard");
  const btncontainer: HTMLElement | null = document.createElement("div");
  btncontainer.classList.add("fourbtn-container");

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

const menuOptioncontainer = document.createElement("div");
menuOptioncontainer.classList.add("nav-option-container");
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
menuOptioncontainer.style.display = "none";
document.body.appendChild(menuOptioncontainer);

const hamburgerIcon: HTMLElement | null = document.querySelector(".hamburger");

if (hamburgerIcon) {
  hamburgerIcon.addEventListener("click", () => {
    if (menuOptioncontainer.style.display === "none")
      menuOptioncontainer.style.display = "block";
    else menuOptioncontainer.style.display = "none";
  });
}

const submenu: HTMLElement | null = document.querySelector(".submenu");
const menuoption: HTMLElement | null = document.querySelector(".arrow-down");
if (menuoption && submenu) {
  menuoption.addEventListener("click", () => {
    console.log("event listener clicked");
    if (submenu.style.display === "none") {
      submenu.style.display = "block";
    } else {
      submenu.style.display = "none";
    }
  });
}
