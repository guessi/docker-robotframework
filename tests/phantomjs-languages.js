var page = require('webpage').create();

page.viewportSize = {
  width: 1280,
  height: 1024
};

var url = 'https://en.wikipedia.org/wiki/List_of_Wikipedias';

page.open(url, function(status) {
  console.log("Status: " + status);
  if(status === "success") {
    page.render('/workdir/example.png');
  }
  phantom.exit();
});
