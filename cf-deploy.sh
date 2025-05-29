#!/bin/sh

cf create-service app-autoscaler standard hello-autoscaler
cf app-autoscaler config hello-autoscaler autoscaler.yml

cf push dlb-hello
cf enable-autoscaling dlb-hello

cf start dlb-hello
