FROM ubuntu:18.04
# Update the package cache
RUN apt-get -qq update
# Install common dependencies
RUN apt-get --yes install git gcc nasm
# Install Alloy dependencies
RUN apt-get --yes install libfreetype6-dev pkg-config wget
# Copy over the repository contents.
COPY . /tmp/baremetal-os
# Go to the project directory.
WORKDIR /tmp/baremetal-os
# Run the build script.
RUN ./setup.sh
