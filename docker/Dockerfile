FROM amazonlinux:2

# Install required packages and AWS CLI v2
RUN yum update -y && \
    yum install -y gnupg unzip curl less && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && \
    unzip /tmp/awscliv2.zip -d /tmp && \
    /tmp/aws/install && \
    rm -rf /tmp/aws /tmp/awscliv2.zip && \
    yum clean all && rm -rf /var/cache/yum

# Set working directory
WORKDIR /app

# Copy scripts
COPY scripts/upload.sh /app/upload.sh
COPY scripts/download.sh /app/download.sh
COPY docker/entrypoint.sh /app/entrypoint.sh

# Set permissions
RUN chmod +x /app/upload.sh /app/download.sh /app/entrypoint.sh

# Entry point
ENTRYPOINT ["/app/entrypoint.sh"]
