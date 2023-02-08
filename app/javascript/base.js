
const passwordInput = document.querySelector("#user_password");
const eye = document.querySelector("#eye");
eye.addEventListener("click", function () {
    this.classList.toggle("bi-eye-slash-fill")
    const type = passwordInput.getAttribute("type") === "password" ? "text" : "password"
    passwordInput.setAttribute("type", type)
});