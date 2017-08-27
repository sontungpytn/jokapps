var connection = require('./connection');


module.exports.add = function (post) {
  connection.getConnections(function (err, con) {
    con.query('INSERT INTO posts SET ?', post, function (err, result, fields) {
      if (err)  console.error(err);
    });
    con.release();
  })
};


