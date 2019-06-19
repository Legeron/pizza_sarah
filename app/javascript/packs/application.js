import "bootstrap";

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
// Look for controllers inside app/javascripts/packs/controllers/
const application = Application.start()
const controllers = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(controllers))

window.$ = window.jQuery = require('jquery');


initMapbox();
