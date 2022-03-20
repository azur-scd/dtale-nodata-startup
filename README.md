# D-Tale Docker image

## D-Tale

Source code : [https://github.com/man-group/dtale](https://github.com/man-group/dtale)

D-Tale is a powerful and lightweight Exploratory Data Analysis & data cleaning tool which comes with a simple python library.

> D-Tale is the combination of a Flask back-end and a React front-end to bring you an easy way to view & analyze Pandas data structures. It integrates seamlessly with ipython notebooks & python/ipython terminals. 
> Currently this tool supports such Pandas objects as DataFrame, Series, MultiIndex, DatetimeIndex & RangeIndex.
> -- <cite>https://github.com/man-group/dtale#what-is-it</cite>

D-Tale can also be embedded in a [Flask app](https://github.com/man-group/dtale/blob/master/docs/EMBEDDED_FLASK.md) or a [Streamlit app](https://github.com/man-group/dtale/blob/master/docs/EMBEDDED_DTALE_STREAMLIT.md).


## Custom Docker Image

This image simply provides an [opened-brower instance with no data startup](https://github.com/man-group/dtale#startup-with-no-data)

![dtale-home](/assets/dtale_home.png)

### Base Python slim (source images)

Docker Python official images : https://hub.docker.com/_/python
Docker slim examples (including Python) : https://github.com/docker-slim/examples

Warning : the used base image contains the 3.8.11 python version because of errors during scikit-learn dependency package installation with a newer version.

### Find this image on Docker Hub

[https://hub.docker.com/repository/docker/azurscd/dtale-nodata-startup](https://hub.docker.com/repository/docker/azurscd/dtale-nodata-startup)

### Pull from Docker Hub

```
docker pull azurscd/dtale-nodata-startup:latest
```

### Run container

```
docker run -d --name dtale -p 40000:40000 azurscd/dtale-nodata-startup:latest
````
Open http://localhost:40000