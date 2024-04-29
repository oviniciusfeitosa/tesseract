FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y tzdata

RUN echo "America/Sao_Paulo" > /etc/timezone && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-por \
    ghostscript \
    python3-pip \
    poppler-utils

RUN pip3 install pytesseract pdf2image

COPY ocr_script.py /ocr_script.py

CMD ["python3", "/ocr_script.py"]
