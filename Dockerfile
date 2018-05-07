FROM python:3.6.5

ENV LANG C.UTF-8

ADD . /work
RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip
#RUN apt-get build-dep python3-scipy python3-matplotlib
RUN pip3 install scipy matplotlib bokeh pandas statsmodels scikit-learn scikit-image numexpr jupyter

WORKDIR /work

