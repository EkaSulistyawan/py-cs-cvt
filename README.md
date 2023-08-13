# Pre-requisite
- 🐳Docker: [Download here](https://www.docker.com/products/docker-desktop/)
- Tested on Windows

⚠️Soon be published on Docker hub

# How to install?
1) Run Docker on your machine
2) Clone the repo
3) Rebuild the image

⚠️ make sure you're in the same folder!
~~~
docker build -t <Your Docker Username>/py-cs-cvt:1.0 .
~~~

OR if u are on Windows platform, can simply execute
~~~
build.bat
~~~
4) Check the tag name, look after the specified tag.
~~~
docker images
~~~

# How to run?

Execute this on your Windows cmd

~~~
docker run -it -p 8888:8888 <the container tag>
~~~~

Since the image was wrapped as Jupyter notebook, you can copy-paste the link to a browser.

# Additional tutorial
- (Docker tutorial) https://www.youtube.com/watch?v=gAkwW2tuIqE&t=525s
- (Curvelops Installation) https://pylops.github.io/curvelops/installation.html#requirements
- (ENV Preparation) https://stackoverflow.com/questions/44803982/how-do-i-run-a-bash-script-in-an-alpine-docker-container
- (ENV Preparation) https://stackoverflow.com/questions/67792050/dockerfile-bash-export-statement-not-working
