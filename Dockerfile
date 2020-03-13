FROM centos/python-27-centos7

RUN yum update -y \
&& yum install man-pages man-db man -y

ADD ./requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip \
&& python --version \
&& pip install -r /tmp/requirements.txt

ADD ./ /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000

CMD ["make", "serve"]
