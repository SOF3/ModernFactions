#!/bin/bash
cd "`dirname "$0"`"

function update {
	echo Updating "$1/$2/$3:$4"
	curl -Lo "$3".phar https://poggit.pmmp.io/v.dl/"$1"/"$2"/"$3"/"$4"
}

update Falkirks spoondetector spoondetector 0.0.1
update poggit libasynql libasynql ^3.1.1
update SOF3 libkinetic libkinetic ^0.0.3
update SOF3 libglocal libglocal ^0.4.0
