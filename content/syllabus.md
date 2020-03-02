---
title: "Syllabus"
author: "Carlos Granell"
date: "`r format(Sys.time(), '%d %B, %Y')`"
keywords:
- reproducible research
- open science
- reproducibility
- skill building
layout: default
created: 19/2/2020
---


# Course title

Reproducible Research Practices

---

## Course instructor(s)
[Carlos Granell](http://carlosgranell.eu) 

---

## Motivation 

It is increasingly common to find articles published in academic journals that use computational analysis in the methods section and/or for the generation of the results. It is not necessary that an article aims to design and develop a computer tool. In other fields, whether social sciences, economics, or health, many scientific papers use various tools and computational methods to, for example, process survey data in the form of a table or graphs, or to contextualize socio-economic data of a study area on a map.

The tools and computational methods are a fundamental part of the development of scientific projects in any discipline. However, despite its importance, little attention is paid to the formation of young researchers in the application of reproducible computational methods in their research daily tasks. It seems that students and young researchers learn to use these computational tools “on the fly”, but without paying enough attention if such computational methods could be used or leveraged more efficiently in their own research. Sometimes, software and project data are poorly organised and stored, without documentation and no control of dependencies. As a consequence, a common scenario is that a researcher who developed a code for an article does not know or can execute or recreate it six months later.

Reproducibility is key in a doctoral thesis project. The acquisition of habits and good practices for a young researcher is essential so that the results obtained (whether maps, tables, graphs, statistics or resources for which computational methods are essential) are reliable and understandable. and, above all, reproducible throughout the doctoral period (and beyond).

## Course description

In this course you will get an introduction to the main ideas and tools to acquire reproducible research practices. There are two components to this course. The first is a conceptual introduction to the ideas and issues behind  turning a research project or scientific article into a reproducible research project/article. The second is a practical introduction to the tools that will be used in the course to support reproduciblility. 

---

## Course content

* Session 01: Introduction to reproducibility (4 hr.)
  * 01_01: Practical arrangements
  * 01_02: Historical notes on reproduction & concept
  * 01_03: Reproducible Research AGILE (our story)
  * 01_04: Reproducibility today: journals, grant proposals, reputation, etc.
  * 01_05: PhD thesis meets reproducibility
    - see http://phdcomics.com/comics.php?f=1689
  * 01_06: A simple reproducible project workflow 
    * a guide to next session
    * Rationale: Follow steps in BES + your own
      * Follow steps in BES. Add your own when necesary. Custom per discipline
      * Introduce tools as necessary
      * Anotate steps with related literature and relevant papers, guides and resources
      * Introduce examples as necessary. Allow participants to explore tools, services. 
      * Ask student how they can use such tools for their reseach. How can they adapt such steps for their research

* Session 02: Preliminaries (3 hr.).
  * 02_01: Before you start 
    * folder organisation - see rr-template repo
    * naming convention - see [naming things by Jenny Bryan](http://www2.stat.duke.edu/~rcs46/lectures_2015/01-markdown-git/slides/naming-slides/naming-slides.pdf), [Phd comic](http://phdcomics.com/comics/archive.php?comicid=1531)
    * version control software: git
    * set up online version control account: github
  * 02_02: First steps
    * Create folder structure. Clone & rename (TODO)
      * create (local) version control repository for the project
      * connect the local version control repository to an online verion control repository 
    * add/update README file
    * add/update notes/notes file
    * choose/add LICENCE
  * 02_03: Examples & discussion
  * 02_04: Tools & readings
    * Git 
    * Github - 
    * R 
    * Rstudio 
    * [RStudio Cloud](https://rstudio.cloud/)

* Session 03: Reproducible research practices I (3 hr.)
  * 03_01: Write code
    * keep scripts in order (01_download, 02_....)
    * never eve touch input/raw data
    * comment the code, issue track, etc.
    * testing and CI via WebHooks (GitHub-CI)
    * commit to version control
    * Syncr with your remote control repository 
    * ...and repeat again, and again
  * 03_02: Write reproducible notebooks/reports
    * Literate programming 
    * Markdown format
    * Notebooks and Computational narratives
  * 03_03: Virtual containers
    * Issue: dependences, version, OS
    * Remote containers with Binder
    * Local containers with Docker
  * 03_04: Examples & Discussion
  * 03_05: Tools & readings
    * Markdown
    * Make
    * Binder
    * Docker
    
* Session 04: Reproducible research practices II (3 hr.)
  * 04_01: Write scientific article
    * Notebooks for writing scientific articles
  * 04_02: Create additional resources
    * Notebooks for flexdashboards
    * Notebooks for presentations
  * 04_03: Examples & Discussion
  * 04_04: Tools & readings

* Session 05: Publication and archive (3 hr.)
  * 05_01: Guidelines to write reproducible papers
    * AGILE guidelines
    * General rules/papers from literature
    * Cite code and data
  * 05_02: Publication of reproducible reports
    * Use of RPubs
    * Use of Shinyapps 
  * 05_03: Permanent archiving 
    * Archive data and code via WebHooks GitHub-Zenodo and get a DOI
    * Udpate README files with DOIs, links to remote containers, etc.
  * 05_04: Examples & Discussion  
  * 05_05: Tools & readings
    * Data repositories: Zenodo, r3registry
    * [Open Science Foundation](https://osf.io/)
    * [RPubs](https://rpubs.com/)
    * [Shinyapps.io](https://www.shinyapps.io/)
  
* Session 06: How to reproduce other's work & final project (4 hr.)
  * 06_01: How to read a research article
  * 06_02: How to read a research compendium
  * 06_03: Ideas for projects
    * types of reviews, cumulative reviews. R data package example
    * How to reproduce other's works
  * 06_04: Summary and discussion

---

## Lecture Materials

Lectures are available in this repo. You are welcome to view them at your convenience. Each lecture is available in a PDF and HTML5 formats. 

---


## Code of Conduct

> To ensure a welcoming environment for all, we require everyone participating in the course to conform to the Code of Conduct given below. This code applies to all spaces related to the course including, but not limited to, classroom, 'aula virtual', emails, shared documents, and code repositories. We strongly recommend that anyone running workshops or classes of any kind choose and publish a similar code so that everyone will know what is expected of them and what to do when those expectations are not met.

You can report Code of Conduct violations in person to Carlos Granell.

We are dedicated to providing a welcoming and supportive environment for all people, regardless of background or identity. However, we recognize that some groups in our community are subject to historical and ongoing discrimination, and may be vulnerable or disadvantaged. Membership in such a specific group can be on the basis of characteristics such as gender, sexual orientation, disability, physical appearance, body size, race, nationality, sex, color, ethnic or social origin, pregnancy, citizenship, familial status, veteran status, genetic information, religion or belief, political or any other opinion, membership of a national minority, property, birth, age, or choice of text editor. We do not tolerate harassment of participants on the basis of these categories, or for any other reason.

Harassment is any form of behavior intended to exclude, intimidate, or cause discomfort. Because we are a diverse community, we may have different ways of communicating and of understanding the intent behind actions. Therefore we have chosen to prohibit certain forms of behavior in our community, regardless of intent.

Prohibited harassing behavior includes but is not limited to:

- written or verbal comments which have the effect of excluding people on the basis of membership of a specific group listed above;
- causing someone to fear for their safety, such as through stalking, following, or intimidation;
- the display of sexual or violent images;
- unwelcome sexual attention;
- non-consensual or unwelcome physical contact;
- sustained disruption of talks, events or communications;
- incitement to violence, suicide, or self-harm;
- continuing to initiate interaction (including photography or recording) with someone after being asked to stop; and
- publication of private communication without consent.

Behavior not explicitly mentioned above may still constitute harassment. The list above should not be taken as exhaustive but rather as a guide to make it easier to enrich all of us and the communities in which we participate.
All interactions should be professional regardless of location: harassment is prohibited whether it occurs on or offline, and the same standards apply to both.

Enforcement of the Code of Conduct will be respectful and not include any harassing behaviors.

Thank you for helping make this a welcoming, friendly community for all.

_[This code of conduct is a simplification of the CoC for [Reproducible Research workshos at AGILE](https://o2r.info/reproducible-agile/), which is based on a CoC for [Teaching Tech Together](http://teachtogether.tech/) by Greg Wilson, which in turn is based on that used by PyCon, which in turn is forked from a template written by the Ada Initiative and hosted on the Geek Feminism Wiki.]_

---

