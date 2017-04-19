#!/bin/bash

. ci/setenv.sh
ci/clean.sh
ci/unitTest.sh
ci/uiTest.sh
