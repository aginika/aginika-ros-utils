## add the rosinstall link
ln -s -b `rospack find aginika_ros_utils`/configs/groovy.rosinstall ~/ros/groovy/.rosinstall

if [ -e ~/ros/groovy_catkin/src ]; then
    ln -s -b `rospack find aginika_ros_utils`/configs/groovy_catkin.rosinstall ~/ros/groovy_catkin/src/.rosinstall

## add a bash util line in .bashrc
echo -e "##ros utils-bash\n" >> ~/.bashrc
echo -e "source /opt/ros/groovy/setup.bash\n" >> ~/.bashrc
echo -e "source ~/ros/ros/groovy/setup.bash\n" >> ~/.bashrc
echo -e "source \`rospack find aginika_ros_utils\`/scripts/ros-bash-utils.sh\n" >> ~/.bashrc
