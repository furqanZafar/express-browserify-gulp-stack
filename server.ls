async = require \async
config = require \./config
express = require \express
fs = require \fs
moment = require \moment
request = require \request

# create & setup express app
app = express!
    ..set \views, __dirname + \/
    ..engine \.html, (require \ejs).__express
    ..set 'view engine', \ejs    
    ..use (require \cors)!
    ..use (require \cookie-parser)!
    ..use (require \body-parser)!
    ..use (require \method-override)!
    ..use "/public" express.static "#__dirname/public"

app.listen config.port