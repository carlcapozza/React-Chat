app = require('express')();
http = require('http').Server(app);
io = require('socket.io')(http);

app.get '/', (req, res)->
  res.sendfile 'index.html'

io.on 'connection', (socket)->
  console.log 'a user connected'

http.listen 3000, ->
  console.log 'listening on *:3000'
