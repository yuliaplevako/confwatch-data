<p align="center">
  <img alt="ConfWatch Logo" src="https://raw.githubusercontent.com/ConfWatch/confwatchd/master/static/img/avatar.png" height="140" />
  <h3 align="center"><a href="https://confwatch.ninja/" target="_blank">https://confwatch.ninja/</a></h3>
  <p align="center">Discover hacking conferences around the world.</p>
  <p align="center">
    <a href="/LICENSE"><img alt="Software License" src="https://img.shields.io/badge/license-GPL3-brightgreen.svg?style=flat-square"></a>
    <a href="https://travis-ci.org/ConfWatch/confwatchd"><img alt="Travis" src="https://img.shields.io/travis/ConfWatch/confwatchd/master.svg?style=flat-square"></a>
  </p>
</p>

---

This repository contains the data files for the ConfWatch project, it is from the community for the community <3

Contributing
==

You can contribute by forking this repository and adding / fixing `attributes`, `events` or `editions`.

Attributes
===

The `attributes` folder contains JSON files representing boolean attributes of conferences editions, such attributes should be kept as simple answers to questions like:

    Does this conference edition has kids friendly facilities?

Which is represented as the `kids-friendly.json` file:


```json
{
   "title": "Kids Friendly",
   "description": "The event has kids friendly facilities."
}
```

Events
===

Events are represented as sub folders of the root `events` folder, each one having a main `event.json` file describing the main information of a conference:

```json
{
	"title": "defcon",
	"description": "originally started in 1993, it was a meant to be a party for member of \"platinum net\", a fido protocol based hacking network out of canada. as the main u.s. hub i was helping the platinum net organizer (i forget his name) plan a closing party for all the member bbs systems and their users. he was going to shut down the network when his dad took a new job and had to move away.",
	"website": "https://www.defcon.org/"
}
```

Editions
====

Each event has an `editions` subfolder containing json files for each of the past, current and ideally future editions of the given conference, for instance, here's the file `events/defcon/editions/defcon-25.json`:

```json
{
	"title": "DEFCON 25",
	"type": 0,
	"description": "DEFCON 25 bla bla bla bla.",
	"website": "https://www.defcon.org/html/defcon-25/dc-25-index.html",
	"country": "US",
	"city": "Las Vegas",
	"address": "Caesar Palace Hotel",
	"starts": "2017-07-27T09:00:00+01:00",
	"ends": "2017-07-30T22:00:00+01:00",
    "tags": "defcon,defcon25,dc25",
	"attributes": [
		"code-of-conduct"
	]
}
```

| Field | Description |
| ----- | ----------- |
| title | The title of the edition. |
| type | 0 for `conference`, 1 for `camp`, 2 for `training` |
| description | A description of the edition. |
| website | Edition's website. |
| country | Country code. |
| city | Name of the city. |
| address | Address of the event. |
| starts | Event start date in `RFC3339` format. |
| ends | Event end date in `RFC3339` format. |
| tags | Comma separated list of words to use as tags, for social media streams, etc. |
| attributes | The list of attributes this event edition matches, their name should match the contents of the `attributes` folder. |
