#!/bin/bash

success_text() { 
    echo -e "\x1B[32m -- SUCCESS: ${1}\x1B[0m"
}

fail_text() { 
    echo -e "\x1B[31m -- FAIL: ${1}\x1B[0m"
}

open_test_text(){
    echo "============================================================"
    echo -e "\x1B[1m${1}\x1B[0m"
    echo "------------------------------------------------------------"
}

close_test_text(){
    echo "============================================================"
    echo
}

open_test_text "Check that Xcode is installed"
if $( xcodebuild -version > /dev/null 2>&1 ); then 
    success_text "$(xcodebuild -version | head -n 1) installed"
else
    fail_text "xcodebuild failed. Make sure Xcode is installed."
    exit 1
fi
close_test_text

open_test_text "Check that Homebrew is installed"
if $( brew --version > /dev/null 2>&1 ); then
    success_text "$(brew --version | head -n 1) installed"
else
    fail_text "brew failed. Make sure Homebrew is installed."
    exit 1
fi
close_test_text

open_test_text "Install Java"
brew cask install java
close_test_text

open_test_text "Install Android Studio"
brew cask install android-studio
close_test_text

open_test_text "Install Xamarin Studio"
brew cask install xamarin-studio
close_test_text

open_test_text "Install Xamarin MDK"
brew cask install xamarin-mdk
close_test_text

open_test_text "Install Xamarin Android"
brew cask install xamarin-android
close_test_text

open_test_text "Install Xamarin iOS"
brew cask install xamarin-ios
close_test_text

open_test_text "Setting ANDROID_HOME"
if [[ -z "${ANDROID_HOME}" ]]; then
    printf "\n# added by xamarin bootstrap-project.sh\n" >> ~/.bashrc
    printf "export ANDROID_HOME='~/Library/Android/sdk'" >> ~/.bashrc
    source ~/.bashrc
fi
close_test_text

open_test_text "Accepting Licenses for Android Components"
yes | sdkmanager --licenses
close_test_text

echo "============================================================"
echo -e "\x1B[32mINITIAL SETUP SUCCESSFUL\x1B[0m"
echo "============================================================"
