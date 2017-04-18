#!/bin/bash

xbuild SampleAppTests/SampleAppTests.csproj
nunit-console SampleAppTests/bin/Debug/SampleAppTests.dll
