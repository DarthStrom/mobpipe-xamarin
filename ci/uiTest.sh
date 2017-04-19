#!/bin/bash

# build apk for running ui tests
xbuild /t:SignAndroidPackage /p:Configuration=Release Droid/SampleApp.Droid.csproj

xbuild SampleApp.UITests/SampleApp.UITests.csproj

# need to use mono to run specific version of nunit-console
mono ./NUnit.Runners.2.6.4/tools/nunit-console.exe -xml:test-results/UiTestResult.xml SampleApp.UITests/SampleApp.UITests.csproj
