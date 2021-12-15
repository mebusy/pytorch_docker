
# Docker Pytorch

Docker Image for pytorch environment.  

pytorch statble 1.10, cpu only to shink Image size.




```bash
jupyterlab torch==1.10.0+cpu torchvision==0.11.1+cpu
```


## Run Prebuilt Image


Note: `git push` on `stable` branch will automatically build & publish image to DockerHub.


## Build Local Image

```bash
docker build -t mytorch .
```

test image


```bash
docker run --rm -it mytorch python -c "import torch; print(torch)"
<module 'torch' from '/usr/local/lib/python3.9/site-packages/torch/__init__.py'>
```

run jupyter notebook

```bash
docker run --rm -it -p 8888:8888 mytorch jupyter notebook --allow-root --ip 0.0.0.0 --no-browser
```



