FROM python:3

WORKDIR /usr/src/app

COPY jupyter_book/requirements.txt ./
RUN apt-get update -y
RUN apt-get install -y libhdf5-dev

RUN pip install numpy

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "make" ]