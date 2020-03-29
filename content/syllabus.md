---
title: "Syllabus"
author: "Carlos Granell"
date: "March 2020"
layout: default
keywords:
- reproducible research
- open science
- reproducibility
- skill building
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
  * [00_01](http://www3.uji.es/~canut/rrp20/00_01.html): Practical arrangements
  * [01_01](http://www3.uji.es/~canut/rrp20/01_01.html): Historical notes on reproduction & concept
  * [01_02](http://www3.uji.es/~canut/rrp20/01_02.html): Reproducible Research AGILE (our story)
  * [01_03](http://www3.uji.es/~canut/rrp20/01_03.html): Reproducibility today
  * [01_04](http://www3.uji.es/~canut/rrp20/01_04.html): PhD thesis meets reproducibility

* Session 02: RRP - Preliminaries (3 hr.).
  * [02_01](http://www3.uji.es/~canut/rrp20/02_01.html): A simple reproducible project workflow 
  * [02_02](http://www3.uji.es/~canut/rrp20/02_02.html): Before you start 
  * [02_03](http://www3.uji.es/~canut/rrp20/02_03.html): First steps
    * Create folder structure
    * add/update README file
    * add/update notes/notes file
    * choose/add LICENCE
  * 02_04: Examples & discussion
  * 02_05: Tools & readings
    * Git 
    * Github - 
    * R 
    * [RStudio Cloud](https://rstudio.cloud/)

* Session 03: RRP - Iterative workflow (3 hr.)
  * 03_01: Write code
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
    
* Session 04: RRP - Writing and dissemination (3 hr.)
  * 04_01: Write scientific article
    * Notebooks for writing scientific articles
  * 04_02: Create additional resources
    * Notebooks for flexdashboards
    * Notebooks for presentations
  * 04_03: Examples & Discussion
  * 04_04: Tools & readings

* Session 05: RRP - Publication and archiving (3 hr.)
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

