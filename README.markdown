# Web Site Source

This is the source for the [CHICAS web site](http://chicas-lancaster.github.io/index.html)

## Updates

To update pages, fork this repository (or make sure your existing fork is in sync with this
repository's current state), make your changes, and then create a pull request. I'll check
it over and merge it and generate the web pages.

## Other Questions

Any other problems with the web site, log in with your github account
and [add a new issue](https://github.com/chicas-lancaster/websource/issues) to the
tracker, or email Barry (but get a github account and add an issue *please*!)

## Site Structure

People pages are in `./content/people/`. Project pages are in `./content/projects/`.

## People and Project Page Structure

The source files for the web site pages have a YAML header and then the body content.
The fields of the YAML header control aspects of the output web page such as the title,
a person's ORCID number, the people involved in a project, links to go in the sidebar
and so on. Most fields are optional.

There's a template for people pages in `./tools/people.tmp`.

Following the YAML is the HTML source code for the page body. See current 
pages for examples.

Additional media such as images need to be uploaded into the right place in the `./content/media`
folder and referenced with the right URL. Images for people need to be in `./content/media/images/people`
and match the filename of the image to the person page filename. Images for projects are in
`./content/media/images/content` and are named by the `image:` field in the YAML header of the project
page.

## Research Themes

Add people to the research themes by adding their name to the relevant list of names
in the template pages in the research themes folder.

## Building The Site

If you want to try to build a local copy of the web pages to see what your changes look like before
committing you'll need to install `hyde`, the website builder software used. This currently requires
a few other dependencies and there are some issues running it on Python 3, so you may have to install
Python 2, and that might be tricky on Windows.

From the top level folder `make force` will build the site.

Use `make publish` to build and then push the built site to the github
repository that is served as the CHICAS web page. In the past this build-and-publish
was done via github integration with CI whenever the built site was committed to 
the source repository but that was changed. 

