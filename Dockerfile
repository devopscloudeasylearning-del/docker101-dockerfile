# 1. FROM: Start with the minimal Alpine Linux base image.
FROM alpine:latest
WORKDIR /app
# 2. RUN: Creates the executable script entirely inside this build step.
#    - Note the explicit "#!/bin/sh" shebang line to prevent 'exec format error'.
#    - The 'chmod +x' command ensures 'permission denied' is avoided.
RUN echo "#!/bin/sh" > /run_me.sh \
    && echo "echo '--- Starting Container Process ---'" >> /run_me.sh \
    && echo "echo 'Container is running...'" >> /run_me.sh \
    && echo "echo 'Demo complete.'" >> /run_me.sh \
    && echo "echo 'Container Exiting.'" >> /run_me.sh \
    && chmod +x /run_me.sh

# 3. EXPOSE: Documents the intended network port (metadata only).
EXPOSE 8080

# 4. ENTRYPOINT: Defines the fixed command to run when the container starts.
ENTRYPOINT ["/run_me.sh"]

# 5. CMD: Provides empty default arguments for the ENTRYPOINT.
CMD []