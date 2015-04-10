FROM rtux/debian-diamond

RUN apt-get update && apt-get install -y make pbuilder python-mock python-configobj python-support cdbs git
RUN git clone https://github.com/python-diamond/Diamond.git /tmp/diamond
RUN cd /tmp/diamond && make deb && cp build/*.deb /tmp/out && ls -l /tmp/out
COPY Dockerfile.run /tmp/out/Dockerfile
COPY diamond.conf /tmp/out/diamond.conf
COPY write-config.sh /tmp/out/write-config.sh

WORKDIR /tmp/out
CMD tar -cf - .
