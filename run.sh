#!/usr/bin/env bash

k create ns test
k create deployment nginx -n test --image nginx
k delete deployment -n test nginx

k port-forward -n ekposetest svc/nginx 8080:80
