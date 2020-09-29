FROM gitpod/workspace-full
USER root
RUN apt-get update \
    && apt-get install -yq \
        ffmpeg \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* \
    && python3 -m pip install --no-cache-dir you-get \
    && curl -sL https://git.io/file-transfer | sh \
    && mv transfer /usr/local/bin/
USER gitpod
