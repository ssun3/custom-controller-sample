#!/usr/bin/env bash

k create ns test
k create deployment nginx -n test --image nginx
k delete deployment -n test nginx

k port-forward -n test svc/nginx 8080:80
k delete all --all -n test
