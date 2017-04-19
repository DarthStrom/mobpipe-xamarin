#!/bin/bash

# solves issue with windows backslashes in .csproj files when using nunit-console
export MONO_IOMAP=all

# solves error about xamarin adb version mismatch
rm ~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb
ln -s $(which adb) ~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb
