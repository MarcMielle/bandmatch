// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

import { initMapbox }         from '../plugins/init_mapbox';
import { initGaugeAnimation } from '../plugins/gauge_animation';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initPreferencesForm } from '../plugins/preferences_form';
import { initJumpToMessage } from '../components/jump_to_last_message';


document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initGaugeAnimation();
  initAutocomplete();
  initPreferencesForm();
  initJumpToMessage();
});

// External imports
import "bootstrap";
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';


