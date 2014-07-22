## add the rosinstall link
ln -s -b `rospack find aginika_ros_utils`/configs/hydro.rosinstall ~/ros/hydro/src/.rosinstall

## add a bash util line in .bashrc
echo -e "##ros utils-bash\n" >> ~/.bashrc
echo -e "source /opt/ros/hydro/setup.bash\n" >> ~/.bashrc
echo -e "source ~/ros/hydro/devel/setup.bash\n" >> ~/.bashrc
echo -e "source \`rospack find aginika_ros_utils\`/scripts/ros-bash-setup.sh\n" >> ~/.bashrc
