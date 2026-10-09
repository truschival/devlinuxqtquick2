FROM ghcr.io/truschival/devlinuxbase:latest
LABEL maintainer="Thomas Ruschival <t.ruschival@gmail.com>"

# Setup language environment and encoding
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        qt5-qmake \
        qtbase5-dev \
        qtbase5-dev-tools \
        qtdeclarative5-dev \
        qtdeclarative5-dev-tools \
        qtmultimedia5-dev \
        qtquickcontrols2-5-dev \
        qml-module-qtquick2 \
        qml-module-qtquick-controls2 \
        qml-module-qtquick-layouts \
        qml-module-qtmultimedia \
        qml-module-qtquick-window2 \
        libqt5multimedia5-plugins \
        gstreamer1.0-qt5 \
        gstreamer1.0-plugins-base \
        gstreamer1.0-plugins-base-apps \
        gstreamer1.0-plugins-good && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER builduser
WORKDIR /home/builduser
