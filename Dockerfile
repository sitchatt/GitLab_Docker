# Base image
FROM gitlab/gitlab-runner:latest

# Install GitLab CI
RUN apt-get update && \
    apt-get install -y gitlab-ci-multi-runner && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose port 9500
EXPOSE 9500
