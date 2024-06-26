
# Docker Pytorch

Docker Image for pytorch environment.  

pytorch statble 1.10, cpu only to shink Image size.




```bash
jupyterlab torch==1.10.0+cpu torchvision==0.11.1+cpu
```


## Run Prebuilt Image


Note: `git push` on `stable` branch will automatically build & publish image to DockerHub.


test pytorch

```bash
$ docker run --rm -it mebusy/pytorch python -c "import torch; print(torch)"
<module 'torch' from '/usr/local/lib/python3.8/site-packages/torch/__init__.py'>
```


run jupyter lab

```bash
docker run --rm -it -p 8888:8888 mebusy/pytorch jupyter lab --allow-root --ip 0.0.0.0 --no-browser
```

open jupyter lab on hosted machine

```bash
$ # cd to .ipynb folder
$ docker run --rm -it -p 8888:8888 \
        -v "$(pwd)":/workspace --pids-limit 16384 \
        mebusy/pytorch bash -c "cd /workspace && jupyter lab --allow-root --ip 0.0.0.0 --no-browser"
```

## Build Local Image

```bash
docker build -t mytorch .
```

test pytorch


```bash
docker run --rm -it mytorch python -c "import torch; print(torch)"
<module 'torch' from '/usr/local/lib/python3.9/site-packages/torch/__init__.py'>
```

run jupyter lab

```bash
docker run --rm -it -p 8888:8888 mytorch jupyter lab --allow-root --ip 0.0.0.0 --no-browser
```



