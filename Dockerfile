FROM ubuntu:20.04
# Install GCC
RUN apt-get update \
&& apt-get install -y gcc \
&& apt-get install -y g++ \
&& apt-get install -y make \
&& apt-get install -y build-essential libssl-dev libffi-dev python3-dev python3-pip \
&& apt-get install -y git

WORKDIR /installation
COPY * .

# Install FFTW
RUN sed -i -e 's/\r$//' install_fftw.sh
RUN ./install_fftw.sh

# Install CurveLab
RUN sed -i -e 's/\r$//' install_curvelet.sh
RUN ./install_curvelet.sh

# Install Curvelops
RUN sed -i -e 's/\r$//' install_curvelops.sh
RUN ./install_curvelops.sh

# Install Jupyter notebook
RUN pip install seaborn
RUN pip install scikit-learn
RUN pip install jupyter

# Move to app directory
WORKDIR /app
COPY *.ipynb .
COPY *.tif .
CMD ["jupyter","notebook","--allow-root","--ip","0.0.0.0","--port","8888"]