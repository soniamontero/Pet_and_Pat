function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const petLocation = document.getElementById('pet_location');

    if (petLocation) {
      const autocomplete = new google.maps.places.Autocomplete(petLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(petLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
