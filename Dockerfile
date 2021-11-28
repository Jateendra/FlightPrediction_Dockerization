FROM continuumio/anaconda3
COPY . /app
EXPOSE 5000
WORKDIR /app
RUN conda create -n flightpredictor python==3.7 -y
RUN conda activate flightpredictor
RUN pip3 install -r requirements.txt
CMD ["python", "app.py"]