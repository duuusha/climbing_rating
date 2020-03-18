document.addEventListener('turbolinks:load', () => {
    const country_select_tag = document.getElementById("country_id");
    const state_select_tag = document.getElementById("state_id");


    country_select_tag.addEventListener('change', (event) => {
        let selectedCountryID = event.target.selectedOptions[0].value;
        // let selectedCountry = event.target.selectedOptions[0].text;
        let httpRequest = new XMLHttpRequest();
        httpRequest.onload = callback;
        httpRequest.open('post', 'http://0.0.0.0:3000/api/states', true);
        let formData = new FormData();
        formData.append('selected_country_id', selectedCountryID);
        httpRequest.send(formData);

        function callback () {
            console.log(this.responseText);
        };
    });
});