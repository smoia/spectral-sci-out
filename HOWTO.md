# Anatomy and physiology of this template

### Premise

This template is thought for any scientific outreach, whatever the type is. It's already preformatted to present things like posters, abstracts or papers, but it can be used for anything else, like a hackathon project, code, data, thesis, CV, *you*, ... .

For this reason, the real content of the page (abstract, poster, paper, ...) will always be referred to as *outreach*

The idea here is to follow a **layer structure**, in which *every* visitor will see the banner, *almost all* of them will see the first section (take home message, video, and buttons), *many* visitors will go through section two ("In a nutshell" recaps), *a few* visitors will read the full text.
However, it also follow a **foot in the door** approach: it's up to you to intrigue your visitors enough to make them proceed to the following section, and get as many visitors as you can at least at the end of section two!

At the same time, the idea is that the easier the interaction with this page is, the better it is. This means making the structure as much general as possible, reducing the files that have to be modified, etc.etc.

### Configurations

First thing first, you need to change some parts of the `_config.yml` file:

- `title`: This is the *website* title, i.e. what will appear on the browser bar. It doesn't have to be your *outreach title*. In fact, the shorter this is, the better.
- `author`: This is the *website* author, not your *outreach author* list. It will be used for RSS feeds and other features.
- `email`: Your email.
- `description`: this should be the same as your *outreach title*, for different purposes.
- `baseurl`: It should normally correspond to the name of the repository, preceded by a slash `/`.
- `url`: The base hostname & protocol for your site: normally your github or gitlab main website (e.g. `https://user.github.io`)

- `Social settings`: These are a bunch of links that can appear on the footer (at the end of the page). The empty one will just not appear.

- `tiles-source`: This tells Jekyll what to use for your "In a nutshell" (section two) part of the website. The default is `sections`, since it uses the files found in the `_sections` folder. It can also use posts or pages instead.
- `tiles-count`: This tells Jekyll how long will be your section two. Default is three (background/intro, methods, results), but it can be any number (from 1 to *a sensible amount*)

- `out_title`: This is the proper *outreach* title.
- `out_authors`: The author team, as in a publication.
- `take_home`: This is a nice take home message, that sums up your findings in less than 200 characters, displayed right after your banner!
- `downloadable`: This is a (yaml formatted) list of entries that will become buttons in section one and will appear after the take home message. The first one will also appear in the CTA (above the footer). If files, they have to be in `assets/downloadable`. Each list entry is a (yaml formatted) dictionary, in the form `{name: ..., file: ..., type: ...}`
	- `name` is the label name that will appear near the button.
	- `file` is the name of the file in `assets/downloadable`
	- `type` is the type of button: poster, text, image, code, ...

### Folders and files

##### Assets

Next thing is to add all of your downloadable assets in `assets/downloadable` (see right above).
Since you're in the `assets` folder, you might also want to add all the pretty pictures you need in your website. Some need default names to do what they are intended to do:

- `banner.png`: This image will be featured as a website background, but it will especially be seen behind your banner.
- `background.png`: By default, this image will be used in section two, next to the background part.
- `methods.png`: By default, this image will be used in section two, next to the methods part.
- `results.png`: By default, this image will be used in section two, next to the results part.

The last three picture can be changed in the relative section file. Speaking of which...

##### `_sections`

By default, the folder `_sections` is the central part of your website. The files here will tell Jekyll what goes where, in what order, using what resource, featuring which image.

Each file is an *outreach* section. By default, you have Intro/Background, Methods, Results, and References. You can add as many files as you want - remember to change the number of `tiles-count` in the configuration accordingly.
Their name follows the structure `nn-sometitle.md`, where `nn` is the increasing numeration (`01`, `02`, ... - you got it) and `.md` is the file extension as a Markdown file.
No matter how many files you add, **their order will be dictated** by the preceding numeration, like if they were a numbered list. If they don't start with a number, they won't be featured.

Each file has two parts: a Jekyll header, between `---`, and the page content.
The header entries that you might want to / have to change are:

- `title`: If you want to change this section title, do it here. **Know that the file has to contain this title as a name**, with hyphens instead of spaces, in order for the website to work properly.
- `description`: You *need to change this*, since this is what will be displayed in Section Two of the website. Keep it short!
- `image`: you can change the default image used in Section Two - or even remove it.

The page content is a normal markdown formatted file, where you can write the content of the "Full Text" part of the page.
Being a markdown formatted file actually means you can use both Markdown and/or HTML here. Make it as long as you want, and add as many pictures as you want. You can find great MD/HTML cheatsheets, tutorials, etc. online. *Just Google it*.

### Last step

Once you're ready (or, as practice would prefer, every time you can) add and commit all your files and push them to your remote repo to make the website live!
Please note that sometimes the website needs a bit of time to feature new changes, especially when they involve the configuration file. Be patient, and try to *hard refresh* your page a couple of times! 