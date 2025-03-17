document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("registration-form");
    const prevButton = document.getElementById("prev");
    const nextButton = document.getElementById("next");

    form.addEventListener("submit", function(event) {
        event.preventDefault();
        alert("Form submitted successfully!");
    });

    prevButton.addEventListener("click", function() {
        alert("Going to the previous step...");
    });

    nextButton.addEventListener("click", function() {
        alert("Proceeding to the next step...");
    });

    // Auto-calculate age based on date of birth
    const dobInput = document.getElementById("dob");
    const ageInput = document.getElementById("age");
    
    dobInput.addEventListener("change", function() {
        const dob = new Date(dobInput.value);
        const today = new Date();
        let age = today.getFullYear() - dob.getFullYear();
        const monthDiff = today.getMonth() - dob.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < dob.getDate())) {
            age--;
        }
        ageInput.value = age;
    });
});
