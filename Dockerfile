FROM datt/datt-scala:latest
MAINTAINER John Albietz "inthecloud247@gmail.com"

ADD build.sbt /files/
ADD project /files/project
ADD src /files/src

RUN `# build the jar`; \
  cd files; \
  sbt assembly

# Add app to supervisor
RUN mkdir /var/log/supervisor/dattbench
ADD files/dattbench.conf /etc/supervisor/conf.d/
