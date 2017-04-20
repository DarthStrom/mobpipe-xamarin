# Mobile Pipeline Sample Xamarin Project
Used to get the entire Xamarin pipeline up and running in a few minutes or less.

## Required Software
- Xcode
- Homebrew

## Project Setup
- Run `source ./bootstrap-project.sh` from project root.
- Open Android studio and install the Android SDK to `~/Library/Android/sdk`.
- Install any required Android emulators.
- Open an android emulator.
- Run `ci/all.sh`

## Run All Tests
- Open an android emulator.
- Run `ci/all.sh` from project root.

## Run Unit Tests
- Run `ci/unitTest.sh` from project root.

## Run UI Tests
- Open an android emulator.
- Run `ci/uiTest.sh` from project root.

## Clean the project
- Run `ci/clean.sh`
