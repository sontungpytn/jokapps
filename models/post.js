var moment = require('moment');
var connection = require('./connection');

class Post {
  constructor(title, content, slug) {
    this.title = title;
    this.content = content;
    this.user_id = 1;
    this.slug = slug;
    this.seo_description = title;
    this.created_at = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
    this.updated_at = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
  }
}

module.exports = Post;