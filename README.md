# FlightFarePrediction using Docker

The below Project is an webapp project to predict price of the flights via Docker configuration .

# 1 - Via General Docker

This is pip way of doing and basically 70% of the time being used by developers .

## 1.1 Push to DockerHub :

```bash
docker build . -t jateendra/flightprice
docker run -p 8000:5000 jateendra/flightprice
docker login
docker images
docker push jateendra/flightprice
```  

* With this the image will be published to Docker hub Repository : `https://hub.docker.com/repositories`
* Once available in Docker hub it's exposed to the entire world and anybody can access it .

## 1.2 Pull from DockerHub :

```bash
docker pull jateendra/flightprice
docker run -p 8000:5000 jateendra/flightprice
```  


# 2 - Via Anaconda Image :

If pip is failing installing any package or libraries , then we go for Anaconda image way . The scenario is 30% of time .

1 . Write the Dockerfile .

2 . Execute the below commands :

```bash
docker pull continuumio/anaconda3
docker run -i -t continuumio/anaconda3 /bin/bash
```
** If it shows (base) , that means you are using conda .

```bash
conda create -n flight python==3.7 -y
conda activate flight
apt-get update
apt install vim
vi requirements.txt
    <copy paste requirements.txt content here>
    ESC
    :wq
pip install -r requirements.txt   
docker build . -t jateendra/flightprice-conda
docker run -p 8000:5000 jateendra/flightprice-conda 
```

***
OR
***

docker build . -t jateendra/flightprice-conda
docker run -p 8000:5000 jateendra/flightprice-conda 

# 3 - Detectron2 webapp :

1 . Write the Dockerfile .

2 . In git fire below commands :

```bash
docker run -i -t continuumio/anaconda3 /bin/bash
apt-get update
```
** If it shows (base) , that means you are using conda .