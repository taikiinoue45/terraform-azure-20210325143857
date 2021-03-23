FROM microsoft/azure-cli:latest

ENV TF_VERSION 0.14.8
RUN set -xe \
        && curl https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip -o /usr/local/bin/terraform_${TF_VERSION}_linux_amd64.zip \
        && cd /usr/local/bin \
        && unzip terraform_${TF_VERSION}_linux_amd64.zip \
        && rm -f /usr/local/bin/terraform_${TF_VERSION}_linux_amd64.zip
