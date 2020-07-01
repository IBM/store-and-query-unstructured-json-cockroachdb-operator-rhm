FROM ubuntu:16.04

LABEL maintainer="Manoj Jahgirdar <manoj.jahgirdar@in.ibm.com>"

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip 

COPY ./ ./app
WORKDIR ./app
RUN pip3 install jupyter

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]