# See branch manylinux2010_x86_64_centos6_no_vsyscall of pypa/manylinux
FROM --platform=linux/amd64 ryanhuanli/anylinux
LABEL maintainer="ryan"

ENV PATH /root/.cargo/bin:/opt/python/cp310-cp310/bin:$DEVTOOLSET_ROOTPATH/usr/bin:$PATH
ENV LD_LIBRARY_PATH /opt/python/cp310-cp310/lib:$DEVTOOLSET_ROOTPATH/usr/lib64:$DEVTOOLSET_ROOTPATH/usr/lib:$DEVTOOLSET_ROOTPATH/usr/lib64/dyninst:$DEVTOOLSET_ROOTPATH/usr/lib/dyninst:/usr/local/lib64:/usr/local/lib

# ssl use SSL_CERT_FILE
# pip use this
ENV REQUESTS_CA_BUNDLE=/opt/_internal/certs.pem

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y

COPY req.txt /req.txt
RUN pip3 install -r req.txt

CMD ["/bin/bash"]
