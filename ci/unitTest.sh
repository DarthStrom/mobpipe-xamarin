#!/bin/bash

xbuild SampleApp.UnitTests/SampleApp.UnitTests.csproj
nunit-console SampleApp.UnitTests/bin/Debug/SampleApp.UnitTests.dll
