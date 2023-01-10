#!/bin/bash

IMAGE_TAG=\$(kubectl get deployment todo-app -n demo -o jsonpath='{\$.spec.template.spec.containers[0].image}')
IFS=':'; arrIN=${IMAGE_TAG}; unset IFS;
echo Current Image Version: ${arrIN[1]}
export CURRENT_IMAGE_VERSION=${arrIN[1]}
return ${arrIN[1]}
