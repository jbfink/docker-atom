docker-atom
-----------
This is a [Docker](http://docker.com) [Compose](https://docs.docker.com/compose/) recipe for [Artefactual](http://www.artefactual.com/)'s [Access To Memory](http://www.artefactual.com/services/atom-2/) software. 

Note that I've only tested this on 64bit native Linux using Docker directly, so if you're using [boot2docker](https://github.com/boot2docker/boot2docker) or a VM things might be different.

To use:

1. Clone this repo.
2. Install [Docker and Docker Compose](http://docs.docker.com/compose/install/)
3. in the repo directory, run ```docker-compose up```
4. Watch things build! Fun!
5. Wait a titch after everything's finished building. Maybe 30 seconds.
6. Visit port 8000 in whatever machine you've run docker on, e.g., http://localhost:8000.
7. Fill in the web config fields! For the database portion, it's ```atom``` for the database, ```atom``` for the user, ```worstpass``` for the password. Be sure to go to advanced config and change your server from ```localhost``` to ```db```. For Elasticsearch, the server name is ```es```.
8. It'll take around a minute for AtoM to shake itself out.
9. Share and enjoy!

Note: This is meant for DEVELOPMENT PURPOSES ONLY. Don't try to run AtoM in production with Docker Compose.

If you dig into the directories and change things (like the atom database password or user) be sure to execute ```docker-compose rm``` followed by ```docker-compose build``` before you do another ```docker-compose up```


Unless otherwise indicated, anything written by jbfink is in the Public Domain (see UNLICENSE). Software that I may incorporate (e.g. AtoM) is licensed seperately.
