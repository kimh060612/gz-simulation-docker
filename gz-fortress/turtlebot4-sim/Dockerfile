FROM gz-fortress:latest

RUN mkdir -p /workspace/src
WORKDIR /workspace

RUN apt-get update
RUN apt-get install -y ros-humble-turtlebot4-simulator git
SHELL ["/bin/bash", "-c"]
RUN cd /workspace/src && git clone https://github.com/turtlebot/turtlebot4_simulator.git -b humble
RUN cd /workspace && rosdep install --from-path src -yi
RUN cd /workspace && source /opt/ros/humble/setup.bash && colcon build --symlink-install

RUN [ "/bin/bash" ]