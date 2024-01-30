const addbtn = document.querySelector(".add");

addbtn.addEventListener("click", (e) => {
  e.stopPropagation();
  const uilist = document.querySelector(".task-list");
  const taskin = document.querySelector(".input");

  const lielement = document.createElement("li");
  lielement.classList.add("tasks");
  lielement.innerHTML = `
  <div class="checktask">

                    <label class="container">
                        <input class="checkboxa" type="checkbox">
                        <div class="checkmark"></div>
                    </label>
                    <h3 class="taskdescription">${taskin.value}</h3>
                </div>
                <button class="bin-button">
                    <svg class="bin-top" viewBox="0 0 39 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <line y1="5" x2="39" y2="5" stroke="white" stroke-width="4"></line>
                        <line x1="12" y1="1.5" x2="26.0357" y2="1.5" stroke="white" stroke-width="3"></line>
                    </svg>
                    <svg class="bin-bottom" viewBox="0 0 33 39" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <mask id="path-1-inside-1_8_19" fill="white">
                             <path d="M0 0H33V35C33 37.2091 31.2091 39 29 39H4C1.79086 39 0 37.2091 0 35V0Z"></path>
                        </mask>
                        <path
                            d="M0 0H33H0ZM37 35C37 39.4183 33.4183 43 29 43H4C-0.418278 43 -4 39.4183 -4 35H4H29H37ZM4 43C-0.418278 43 -4 39.4183 -4 35V0H4V35V43ZM37 0V35C37 39.4183 33.4183 43 29 43V35V0H37Z"
                            fill="white" mask="url(#path-1-inside-1_8_19)"></path>
                        <path d="M12 6L12 29" stroke="white" stroke-width="4"></path>
                        <path d="M21 6V29" stroke="white" stroke-width="4"></path>
                    </svg>
                </button>
  `;
  uilist.appendChild(lielement);
  taskin.value = "";
  const deleteButton = document.querySelectorAll(".bin-button");
  deleteButton.forEach((deleteButton) => {
    if (deleteButton) {
      deleteButton.addEventListener("click", (e) => {
        console.log("hey hey hey" + deleteButton);
        deleteButton.parentElement.remove();
      });
    }
  });
  const checkboxes = document.querySelectorAll(".checkboxa");

  checkboxes.forEach((checkbox) => {
    const checktask = checkbox.closest(".checktask");
    checkbox.addEventListener("change", () => {
      const taskdescription = checktask.querySelector(".taskdescription");
      if (checkbox.checked) {
        taskdescription.style.textDecoration = "line-through";
      } else {
        taskdescription.style.textDecoration = "none";
      }
    });
  });
});