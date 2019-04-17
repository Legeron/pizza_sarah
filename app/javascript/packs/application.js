import "bootstrap";

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

// Look for controllers inside app/javascripts/packs/controllers/
const application = Application.start()
const controllers = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(controllers))

