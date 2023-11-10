FROM gitpod/workspace-full

# install corresponding PHP Xdebug
RUN sudo install-packages php-xdebug

# Copy Apache Configuration (will stay even after restarting workspace)
COPY apache.conf /etc/apache2/apache2.conf

# optional: change document root folder. It's relative to your git working copy.
ENV APACHE_DOCROOT_IN_REPO="www"
