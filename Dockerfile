FROM fedora
LABEL maintainer="N. Harrison Ripps <nhr@redhat.com>"

# Install build requirements
RUN dnf install -y ruby python sqlite sqlite-devel ruby-devel gcc-c++ make redhat-rpm-config rsync

# Install python-bugzilla
RUN pip install python-bugzilla

# Install shiftzilla
RUN gem install shiftzilla

# Remove build tools
RUN dnf remove -y ruby-devel gcc-c++ make sqlite-devel
