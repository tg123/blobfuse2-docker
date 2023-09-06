FROM mcr.microsoft.com/cbl-mariner/base/core:2.0

ENV BLOBFUSE_VERSION=2.1.0

RUN yum update && yum install -y ca-certificates 

RUN yum install -y https://github.com/Azure/azure-storage-fuse/releases/download/blobfuse2-${BLOBFUSE_VERSION}/blobfuse2-${BLOBFUSE_VERSION}-Mariner.x86_64.rpm

RUN yum clean all && rm -rf /var/cache/yum
