import { Alert, Popover } from "bootstrap";

const passwordInput = document.querySelector("#user_password");
const eye = document.querySelector("#eye");
const clearButton = document.getElementById("reset_button");
const searchField = document.getElementById("q_c_0_v_0_value");

document.addEventListener("turbolinks:load", function () {
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new Popover(popoverTriggerEl)
    })
});

// show hide x button function inside search textfide
function showHide(param, elm) {
    if (param.val() !== "") {
        $(elm).show();
    } else {
        $(elm).hide();
    }
}

// show or hide x button on search textfield
$(searchField).keyup(function () {
    showHide($(this), clearButton);
}).keyup();

// hide x button when clicked
$(clearButton).click(function () {
    searchField.value = "";
    $(this).hide(); // Trigger the keyup event, thus running the handler on page load
});

// show hide password field button on login form
$(eye).click(function () {
    this.classList.toggle("bi-eye-slash-fill")
    const type = passwordInput.getAttribute("type") === "password" ? "text" : "password"
    passwordInput.setAttribute("type", type)
});