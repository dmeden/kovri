FROM ubuntu

RUN apt-get update && apt-get install -y libboost-dev libboost-filesystem-dev \
       libboost-program-options-dev libboost-regex-dev libcrypto++-dev        \
       libboost-date-time-dev git build-essential curl

RUN git clone https://github.com/PurpleI2P/i2pd.git
WORKDIR /i2pd 
RUN make

CMD ./i2p --host=$(curl curlmyip.com)
