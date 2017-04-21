#!/bin/bash

# solves issue with windows backslashes in .csproj files when using nunit-console
export MONO_IOMAP=all

nuget restore
