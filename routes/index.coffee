express = require 'express'
auth = require 'basic-auth'
router = express.Router()
loadingSpinner = require 'loading-spinner'

router.get '/', (req, res) ->
  res.render 'home', { title: 'Home' }

router.get '/portfolio', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'portfolio', { title: 'Portfolio' }

router.get '/about', (req, res) ->
  res.render 'about', { title: 'About' }

router.get '/illustrations', (req, res) ->
  res.render 'illustrations', { title: 'Illustrations' }

router.get '/contact', (req, res) ->
  res.render 'contact', { title: 'Contact' }

router.get '/portfolio/pana', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'pana', { title: 'Pana' }

router.get '/portfolio/class', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'class', { title: 'ClassScout' }

router.get '/portfolio/ytb', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'ytb', { title: 'Your Texas Benefits' }

router.get '/portfolio/hw', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'hw', { title: 'HelloWallet' }

router.get '/portfolio/abe', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'abe', { title: 'ABE Mobile' }

router.get '/portfolio/marigold', (req, res) ->
  credentials = auth(req)
  if !credentials or credentials.name != 'paul' or credentials.pass != 'denver'
    res.statusCode = 401
    res.setHeader 'WWW-Authenticate', 'Basic realm="example"'
    res.end 'Need the username and password? Email Paul at paul.ballas@gmail.com'
  else
    res.render 'marigold', { title: 'Marigold' }

module.exports = router
