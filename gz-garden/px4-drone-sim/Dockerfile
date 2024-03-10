FROM gz-garden

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl
RUN mkdir /workspace

WORKDIR /workspace
RUN git clone --recursive https://github.com/PX4/PX4-Autopilot.git
RUN cd ./PX4-Autopilot/Tools/setup && sh ubuntu.sh
RUN cd /workspace && git clone https://github.com/PX4/PX4-gazebo-models.git
RUN cd /workspace/PX4-gazebo-models && python3 simulation-gazebo --world baylands --dryrun
WORKDIR /workspace/PX4-Autopilot
ENV GZ_SIM_RESOURCE_PATH ~/.simulation-gazebo/models

CMD [ "/bin/bash" ]