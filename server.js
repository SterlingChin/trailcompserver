var express = require('express');
var bodyParser = require('body-parser');
var cors = require('cors');
var massive = require('massive');

var app = express();
app.use(cors());

var db = massive.connect({connectionString : 'postgres://postgres@localhost:5432/trailcomp'},
(err, localdb) => {
  db = localdb;
  app.set('db', db);
  db.schema(function(err, data){
    if(err){
      console.log(err);
    } else {
      console.log("Everything is clear and restarted");
    }
  });
});

app.post('/start', function(req, res, next){
  // db.addStart(function(err, data){
  //   if(err){
  //     console.log(err);
  //   } else {
  //     console.log("Start Point Added");
  //   }
  // });
  console.log(req.body);
res.send("Sterling sucks at code");
});

app.listen(3000, function(){
  console.log('Listening on port: 3000');
});
