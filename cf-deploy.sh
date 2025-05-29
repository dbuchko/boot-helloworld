#!/bin/sh

cf create-service app-autoscaler standard hello-autoscaler

cf push dlb-hello
cf configure-autoscaling dlb-hello autoscaler.yml
cf enable-autoscaling dlb-hello

cf start dlb-hello
