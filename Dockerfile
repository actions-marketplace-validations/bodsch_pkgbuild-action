FROM archlinux:latest

RUN \
  command -v sed

RUN \
  pacman --sync --refresh && \
  pacman --sync --noconfirm --needed \
    bash \
    base-devel \
    git \
    pacman-contrib && \
  paccache --remove --verbose

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
