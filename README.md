Lucene.Net Website
========================

This repository contains the Lucene.Net Website. It uses Mimosa as its build tool, and is built around the Durandal/Knockout
SPA framework, with Bootstrap and Font Awesome for CSS.

## Prerequisites
To run and build the site you will need node. Everything was built on Windows, so lets keep it building that way.
Once node is installed, install mimosa globally:

    npm install -g mimosa

This is the build tool (like grunt/gulp).


### To run the site locally:
Use `make start` to start up an asset server and begin coding immediately.

### To build it for deployment:
2. Use `make build-opt` to create your optimized application. The deployable source will be output to a 'dist' folder.


### Mimosa:

Yeah, it is unfortunate that Mimosa uses coffee script underneath, just like silly no-semicolon peeps, but alas, you
shouldn't have to touch any of it. If you do, it will only be the config file `mimosa-config.coffee` and it looks like
YAML at that, so no worries. We could move it to JSON, but honestly, its the only good part of coffee script, so
keeping it for now. ;-)

See the [Mimosa](http://mimosajs.com/) project for details on how to customize the solution and use other features.


