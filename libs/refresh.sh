#!/bin/bash
cd "`dirname "$0"`"
curl -Lo spoondetector.phar https://poggit.pmmp.io/v.dl/Falkirks/spoondetector/spoondetector/0.0.1
curl -Lo libasynql.phar https://poggit.pmmp.io/v.dl/poggit/libasynql/libasynql/^3.1.1
curl -Lo libkinetic.phar https://poggit.pmmp.io/v.dl/SOF3/libkinetic/libkinetic/^0.0.3
curl -Lo libglocal.phar https://poggit.pmmp.io/v.dl/SOF3/libglocal/libglocal/^0.4.0
