var config = require('../config');
var dbConfig = config.database;
var mysql =  require('mysql');

var pool = mysql.createPool(dbConfig);

var getConnection = function(callback) {
  pool.getConnection(function(err, connection) {
    callback(err, connection);
  });
};

module.exports.getConnections = getConnection;