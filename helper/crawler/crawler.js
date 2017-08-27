var request = require('request');
var cheerio = require('cheerio');
var Post = require('../../models/post');
var postContext = require('../../models/postContext');

const BASE_URL = 'http://jokes.cc.com/';
let categories = [];

module.exports.crawlerData = function () {
  request.get(BASE_URL, function (err, res, html) {
    if (!err && res.statusCode === 200){
      let $ = cheerio.load(html);
      $('.list_horiz li').each(function (index, element) {
        let li = $(this);
        let id = li.attr('class');
        let a = li.children().first();
        let link = a.attr('href');
        let title = a.attr('title');
        categories[index] = {id, link, title};
        categories[index].childrenLink = [];
        getLinkJokes(link, index);
      });


    }else{
      console.error(err);
    }
  });
};

function getLinkJokes(link, cateIndex) {
  if (!link) return;
  request.get(link, function (err, res, html) {
    if (!err && res.statusCode === 200){
      let $ = cheerio.load(html);
      $('#t4_lc_promo1 div.middle ul li').each(function (index, element) {
        let li = $(this);
        let a = li.children().first();
        let link = a.attr('href');
        categories[cateIndex].childrenLink[index] = link;
      });
      if (cateIndex === categories.length -1){
        getJokesData(0, 0);
      }
    }else{
      console.error(err);
    }
  });
}

function getJokesData(cateIndex, childIndex) {
  let link = categories[cateIndex].childrenLink[childIndex];
  if (!link) return;
  request.get(link, function (err, res, html) {
    if (!err && res.statusCode === 200){
      let $ = cheerio.load(html);
      let title = $('div.header h2 span.bgb').text();
      $('.middle .arrow_area .content_wrap a').remove();
      let contentDiv = $('.middle .arrow_area .content_wrap').first();
      contentDiv.remove('a');
      let content = contentDiv.html();
      content = content.replace(/[\t\n]+/g,' ').trim();
      console.log(title);
      let slug = link.substring(link.lastIndexOf("/") + 1);
      let post = new Post(title, content, slug);
      postContext.add(post);
      childIndex ++;
      if (childIndex>= categories[cateIndex].childrenLink.length){
        cateIndex++;
        childIndex = 0;
      }
      if (cateIndex>= categories.length) return;
      getJokesData(cateIndex,childIndex);
    }else{
      console.error(err);
    }
  });
}


