
from python:3.11-slim

# RUN pip install --upgrade pip
# for cpu

# RUN pip3 install jupyterlab torch==1.10.0+cpu torchvision==0.11.1+cpu  -f https://download.pytorch.org/whl/cpu/torch_stable.html # torchaudio==0.10.0+cpu
RUN pip3 install jupyterlab
RUN pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cpu

# add curl & wget
RUN apt-get update && apt-get install -y curl wget

# RUN pip3 cache purge

# will be overrided if you pass command from `docker run`
CMD ["python"]  


