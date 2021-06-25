FROM registry.access.redhat.com/ubi8/ubi:8.3

RUN dnf --disableplugin=subscription-manager install -y openssl wget unzip diffutils procps 

RUN wget --no-check-certificate https://twistlock-service.cloudpaklab.ibm.com/download/tt_latest_linux_x86_64; chmod 755 ./tt_latest_linux_x86_64
#RUN unzip tt_latest.zip
#RUN wget https://download.clis.cloud.ibm.com/ibm-cloud-cli/1.6.0/IBM_Cloud_CLI_1.6.0_amd64.tar.gz; chmod 755 ./IBM_Cloud_CLI
WORKDIR /
RUN dnf --disableplugin=subscription-manager install -y jq file
#COPY  /tt_v1.2.0/linux_x86_64 /




ENV PORT 8080
EXPOSE 8080

CMD ["bin/bash"]
