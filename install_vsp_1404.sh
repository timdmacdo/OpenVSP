#!/bin/bash
# type the following to use:
# chmod 755 install_vsp_1404.sh
# sudo ./install_vsp_1404.sh
mkdir OpenVSP; cd OpenVSP
mkdir build
mkdir repo
git clone https://github.com/timdmacdo/OpenVSP.git repo
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DVSP_USE_SYSTEM_FLTK=true -DVSP_USE_SYSTEM_CPPTEST=true -DVSP_USE_SYSTEM_LIBXML2=true -DVSP_USE_SYSTEM_EIGEN=false -DVSP_USE_SYSTEM_FLTK=true -DVSP_USE_SYSTEM_GLM=true -DVSP_USE_SYSTEM_GLEW=true -DVSP_USE_SYSTEM_CMINPACK=true ../repo/SuperProject
make
