express = require 'express'
auth = require 'basic-auth'
router = express.Router()
loadingSpinner = require 'loading-spinner'

router.get '/', (req, res) ->
  res.render 'home', { title: 'Home' }

router.get '/about', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'bicycle'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Whoops! Wrong username or password'
  else
    res.render 'about', { title: 'About' }

router.get '/illustrations', (req, res) ->
  res.render 'illustrations', { title: 'Illustrations' }

router.get '/contact', (req, res) ->
  res.render 'contact', { title: 'Contact' }

module.exports = router
