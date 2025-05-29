#!/bin/sh

cf stop dlb-hello
cf unbind-service dlb-hello hello-autoscaler
cf delete-service hello-autoscaler -f -w
cf delete dlb-hello -f -r
