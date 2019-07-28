## First Markdown Post
### July 12th, 2019

Given my post the other day about already being tired of writing posts in HTML, I decided the next step was to move to Markdown. I'm going to start with the [redcarpet](https://github.com/vmg/redcarpet) gem, and then iterate if it ends up forcing me to write a lot of raw html in my posts.  Basically my next steps are:

* write a script to parse the Markdown into an HTML document, and save that document to the `posts` folder
* I've been using the same HTML `head` code on each page so I'll probably hardcode that into the script for now
* manually add the new post to the homepage list of links

There are definitely some improvements to be made on the next iteration but for *now* that will deploy the html doc to my site via netlify and it will be served and live.

Workflow for writing posts going forward will be:

* write markdown file (filename should be `YYYYMMDDtitle.md`)
  * This should include a ## (h2) title and a ### (h3) date at the top, just for consistency
* run script
* add link to new HTML file to the index page
* merge to `master` branch (which autodeploys)
