import cardData from "./cardData.json";

function createCard(course: any) {
  console.log(course);
  const cardContainer: HTMLDivElement | null =
    document.querySelector(".card-container");
  const cardDiv = document.createElement("div");
  cardDiv.classList.add("card");

  const cardContent = document.createElement("div");
  cardContent.classList.add("card-flex-container");
  cardContent.innerHTML = `
  
                            <img class="card-img img"
                                src=${course.image}

                                alt="course image" />
                            <div class="card-content">
                                <div class="card-heading${course.courseId}">${course.name}</div>
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
                                            ${course.unitDetails}
                                        </span>
                                        <span class="unit">
                                            Units
                                        </span>
                                    </div>
                                    <div class="lessons-detail">
                                        <span class="count">
                                             ${course.lessonsDetails}
                                        </span>
                                        <span class="lessons">
                                            Lessons
                                        </span>
                                    </div>
                                    <div class="topics-detail">
                                        <span class="count">
                                             ${course.topicsDetails}
                                        </span>
                                        <span class="topics">
                                            Topics
                                        </span>
                                    </div>
                                </div>

                                <div class="inputContainer1">
                                    <select required="true" class="customInput customInput1" id="ci1" name="state">
                                    <option class="option" value="Course Name" selected> ${course.Classes[0]}
                                    </option>
                                        <option class="option" value="" disabled>${course.Classes[1]}</option>
                                        <option value="Date" class="option">${course.Classes[2]}</option>
                                        <option value="Date" class="option">${course.Classes[3]}</option>

                                        <!-- Add more options as needed -->
                                    </select>
                                    <div class="inputUnderline"></div>
                                </div>
                                <div class="time-details">
                                    <span class="student">
                                        ${course.students}
                                    </span>
                                    <div class="pipe1"></div>
                                    <div class="date">
                                      ${course.date}
                                    </div>

                                </div>
                            </div>
                            <div class="star">
                                <img class="brightstar"
                                    src="./quantum screen assets/quantum screen assets/icons/favourite.svg"
                                    alt="star icon" />
                            </div>
  `;

  cardDiv.appendChild(cardContent);
  if (cardContainer) {
    (cardContainer as HTMLDivElement).appendChild(cardDiv);
  }
}

cardData.forEach((course) => {
  createCard(course);
});
