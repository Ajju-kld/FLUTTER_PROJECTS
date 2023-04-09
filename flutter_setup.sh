#!/bin/bash

# Update packages
sudo apt-get update

# Install dependencies
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Download and extract Flutter SDK
cd ~
curl -O https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.2.0-stable.tar.xz
tar xf flutter_linux_2.2.0-stable.tar.xz
export PATH="$PATH:`pwd`/flutter/bin"

# Install Android Studio and Flutter/Dart plugins
sudo snap install --classic android-studio
flutter doctor --android-licenses
flutter doctor

# Set up Android device
adb devices
