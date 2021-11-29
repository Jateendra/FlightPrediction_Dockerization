FROM continuumio/anaconda3
COPY . /app
EXPOSE 5000
WORKDIR /app

RUN conda create -n flightpredictor python==3.7 -y
ENV PATH /opt/conda/envs/filghtpredictor/bin:$PATH
ENV CONDA_DEFAULT_ENV flightpredictor
RUN pip3 install -r requirements.txt

CMD ["python", "app.py"]

