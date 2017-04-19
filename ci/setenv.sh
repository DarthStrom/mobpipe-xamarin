#!/bin/bash

export MONO_IOMAP=all

rm ~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb
ln -s $(which adb) ~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb
