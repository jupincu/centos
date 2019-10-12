FROM centos:7.5.1804
MAINTAINER Nopost (nopost@qq.com)
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
CMD ["/bin/bash"]

