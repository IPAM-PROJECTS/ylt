
//Toggle Active State...
const navState = document.querySelectorAll(".subnav"),
current = document.querySelector(".nav");

for (let i = 0; i < navState.length; i++) {
    navState[i].addEventListener("click", (e) => {
        current.querySelector(".active").classList.remove("active");
        e.target.classList.add("active");
    });
}

//change according to click
const tourDetails = document.querySelector('.tour-details-content');
const itinerary = document.querySelector('.itinerary-content');
const gallery = document.querySelector('.gallery-content');
const review = document.querySelector('.review-content');

document.querySelector('.tour-details').addEventListener('click', tourDetailsState);
document.querySelector('.itinerary').addEventListener('click', itineraryState);
document.querySelector('.gallery').addEventListener('click', galleryState);
document.querySelector('.review').addEventListener('click', reviewState);

function tourDetailsState(e){
    tourDetails.style.display = 'block';
    itinerary.style.display = 'none';
    gallery.style.display = 'none';
    review.style.display = 'none';
    e.preventDefault();
}
function itineraryState(e){
    tourDetails.style.display = 'none';
    itinerary.style.display = 'block';
    gallery.style.display = 'none';
    review.style.display = 'none';
    e.preventDefault();
}
function galleryState(e){
    tourDetails.style.display = 'none';
    itinerary.style.display = 'none';
    gallery.style.display = 'block';
    review.style.display = 'none';
    e.preventDefault();
}
function reviewState(e){
    tourDetails.style.display = 'none';
    itinerary.style.display = 'none';
    gallery.style.display = 'none';
    review.style.display = 'block';
    e.preventDefault();
}
// Function to toggle active state for nav links
function toggleActiveState() {
  const navLinks = document.querySelectorAll(".nav-tabs .nav-item .nav-link");
  navLinks.forEach(link => {
    link.addEventListener("click", () => {
      navLinks.forEach(navLink => {
        navLink.classList.remove("active");
        navLink.style.backgroundColor = "#f0f0f0"; // Set background color to default (gray)
        navLink.style.color = "#000"; // Set text color to default (black)
      });
      link.classList.add("active");
      link.style.backgroundColor = "#4CAF50"; // Set the active link background color to green
      link.style.color = "#fff"; // Set the active link text color to white
    });
  });
}

// Call the function to apply the active state to the tabs
toggleActiveState();
