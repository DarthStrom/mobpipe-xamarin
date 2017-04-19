#!/bin/bash

xbuild SampleApp.UnitTests/SampleApp.UnitTests.csproj
nunit-console -xml:test-results/UnitTestResult.xml SampleApp.UnitTests/bin/Debug/SampleApp.UnitTests.dll
