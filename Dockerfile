FROM cargomedia/base:v1

ENV FACTER_janus_hostname 'example.com'

# Provision with puppet
WORKDIR '/tmp/puppet'
ADD puppet .
RUN librarian-puppet install
RUN puppet apply --modulepath=modules default.pp --detailed-exitcodes || [ $? -eq 2 ]

# Run janus
EXPOSE 8300 8310 20000-25000/udp 8000-9000/udp
CMD export FACTER_janus_hostname=${hostname} && \
    puppet apply --modulepath=modules default.pp --detailed-exitcodes || [ $? -eq 2 ] && \
    /docker-run-janus_janus
