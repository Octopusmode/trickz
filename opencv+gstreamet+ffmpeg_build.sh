## gstreamer
sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

## ffmpeg
sudo apt update -qq && sudo apt-get -y install autoconf automake build-essential cmake git-core libass-dev libfreetype6-dev libgnutls28-dev libsdl2-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev \
libxcb-xfixes0-dev meson ninja-build pkg-config texinfo wget yasm zlib1g-dev
  
sudo apt install libunistring-dev libaom-dev
sudo apt -y install git make nasm pkg-config libx264-dev libxext-dev
sudo wget -O ffmpeg-6.0.tar.bz2 "https://www.ffmpeg.org/releases/ffmpeg-6.0.tar.bz2"
sudo tar -xvf ffmpeg-6.0.tar.bz2
sudo rm -Rf ffmpeg-6.0.tar.bz2 
cd ./ffmpeg-6.0
./configure --enable-nonfree --enable-gpl --enable-libx264 --enable-zlib
make -j${nproc}
sudo make install
sudo ldconfig -v

## Compile Opencv with GStreamer and FFmpeg
sudo apt install build-essential
sudo apt install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

wget https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/jasper-1.900.1.tar.gz
tar xzvf jasper-1.900.1.tar.gz
cd jasper-1.900.1
./configure --prefix=$DIR/grib2
make -j 4
make install
cd ..
rm -rf jasper*

sudo apt install python3-dev python3-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-dev
git clone https://github.com/opencv/opencv.git
cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_GSTREAMER=ON -D WITH_FFMPEG=ON ..
