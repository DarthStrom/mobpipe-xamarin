#!/bin/bash

xbuild /t:SignAndroidPackage /p:Configuration=Release Droid/SampleApp.Droid.csproj
xbuild SampleApp.UITests/SampleApp.UITests.csproj
mono ./NUnit.Runners.2.6.4/tools/nunit-console.exe -xml:test-results/UiTestResult.xml SampleApp.UITests/bin/Debug/SampleApp.UITests.dll
