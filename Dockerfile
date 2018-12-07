FROM amazonlinux:2

ARG ANSIBLE_VERSION=2.6.1

RUN yum install yum-utils -y
RUN yum install \
    tar \
    gzip \
    make \
    unzip \
    python-devel \
    python-pip \
    -y

RUN  yum clean all

RUN pip install --upgrade pip
RUN pip install \
    ansible==${ANSIBLE_VERSION} \
    awscli \
    pyopenssl \
    boto3 \
    boto
