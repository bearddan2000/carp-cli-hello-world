FROM haskell

ENV CARP_DIR /workspace/Carp

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y ghc clang

RUN git clone https://github.com/carp-lang/Carp.git

WORKDIR /workspace/Carp

RUN stack --install-ghc build

RUN stack install

WORKDIR /code

COPY bin .

CMD "./run.sh"