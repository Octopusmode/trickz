## gstreamer
sudo apt-get install libgstreamer1.0-dev \ 
  libgstreamer-plugins-base1.0-dev \
  libgstreamer-plugins-bad1.0-dev \
  gstreamer1.0-plugins-base \
  gstreamer1.0-plugins-good \
  gstreamer1.0-plugins-bad \
  gstreamer1.0-plugins-ugly \
  gstreamer1.0-libav \
  gstreamer1.0-doc \
  gstreamer1.0-tools \
  gstreamer1.0-x \
  gstreamer1.0-alsa \
  gstreamer1.0-gl \
  gstreamer1.0-gtk3 \
  gstreamer1.0-qt5 \
  gstreamer1.0-pulseaudio

## ffmpeg
sudo apt-get update -qq && sudo apt-get -y install \
  autoconf \
  automake \
  build-essential \
  cmake \
  git-core \
  libass-dev \
  libfreetype6-dev \
  libgnutls28-dev \
  libsdl2-dev \
  libtool \
  libva-dev \
  libvdpau-dev \
  libvorbis-dev \
  libxcb1-dev \
  libxcb-shm0-dev \
  libxcb-xfixes0-dev \
  meson \
  ninja-build \
  pkg-config \
  texinfo \
  wget \
  yasm \
  zlib1g-dev
  
sudo apt install libunistring-dev libaom-dev
sudo apt-get -y install git make nasm pkg-config libx264-dev libxext-dev
sudo wget -O ffmpeg-4.4.tar.bz2 "https://www.ffmpeg.org/releases/ffmpeg-4.4.tar.bz2"
sudo tar -xvf ffmpeg-4.4.tar.bz2
sudo rm -Rf ffmpeg-4.4.tar.bz2 
cd /home/nomce/libs/ffmpeg-4.4
./configure --enable-nonfree --enable-gpl --enable-libx264 --enable-zlib
make -j6
sudo make install
sudo ldconfig -v

## Compile Opencv with GStreamer and FFmpeg
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
git clone https://github.com/opencv/opencv.git
cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_GSTREAMER=ON -D WITH_FFMPEG=ON ..
