docker-atom
-----------
*NB* this *doesn't* work right now due to AtoM generating a config/search.yml file that inexplicably generates the port for Elasticsearch in single quotes, e.g., '9200'. I've [reported](https://groups.google.com/forum/#!topic/ica-atom-users/p7ACO3jKZv8) this to Artefactual folks; hopefully a fix will be forthcoming. In the meantime, the brave can run this and edit the nginx container's /usr/share/nginx/atom/config/search.yml and change ```'9200'``` tp ```9200```. Sorry about that.

This is a [Docker](http://docker.com) [Compose](https://docs.docker.com/compose/) recipe for [Artefactual](http://www.artefactual.com/)'s [Access To Memory](http://www.artefactual.com/services/atom-2/) software. 

Note that I've only tested this on 64bit native Linux using Docker directly, so if you're using [boot2docker](https://github.com/boot2docker/boot2docker) or a VM things might be different.

To use:

1. Clone this repo.
2. Install [Docker and Docker Compose](http://docs.docker.com/compose/install/)
3. in the repo directory, run ```docker-compose up```
4. Watch things build! Fun!
5. Wait a titch after everything's finished building. A few seconds should do it.
6. Visit port 8000 in whatever machine you've run docker on, e.g., http://localhost:8000.
7. Fill in the web config fields! For the database portion, it's ```atom``` for the database, ```atom``` for the user, ```worstpass``` for the password. Be sure to go to advanced config and change your server from ```localhost``` to ```db```. For Elasticsearch, the server name is ```es```.
8. It'll take around a minute for AtoM to shake itself out.
9. Share and enjoy!

Note: This is meant for development and testing purposes only. Don't try to run AtoM in production with Docker Compose.

If you dig into the directories and change things (like the atom database password or user) be sure to execute ```docker-compose rm``` followed by ```docker-compose build``` before you do another ```docker-compose up```


Unless otherwise indicated, anything written by jbfink is in the Public Domain (see UNLICENSE). Software that I may incorporate (e.g. AtoM) is licensed seperately.
