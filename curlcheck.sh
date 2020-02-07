#!/bin/bash

web="aac49c1e049e011eaa48d0632224e248-2023074296.us-west-2.elb.amazonaws.com:80"

if curl -s "$web" | grep blue &> /dev/null
then  
	echo -e "This is a \e[34mblue\e[0m deployment"
elif curl -s "$web" | grep green &> /dev/null
then
	echo -e "This is a \e[32mgreen\e[0m deployment"
else
	echo "Not reachable"
fi

