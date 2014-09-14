
###
* Module dependencies.
###
express = require("express")

# Path to our home directory
home = __dirname

# setup middleware
app = express()

# app.use(app.router);
# app.use(express.static(home));
# app.use(express.errorHandler());

# Optional since express defaults to CWD/views
app.set "views", __dirname + "/views"
app.use express.static(home + "/resources")
console.log home + "/resources/"

# Set our default template engine to "jade"
# which prevents the need for extensions
# (although you can still mix and match)
app.set "view engine", "jade"
app.get "/", (req, res) ->
  res.render "index"
  return

app.listen 3000
console.log "Express app started on port %d", 3000
