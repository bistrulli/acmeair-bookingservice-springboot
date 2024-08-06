#!/bin/bash


cd "./vpa/"

kubectl apply -f vpa-bookflights.yaml
sleep 1

kubectl apply -f vpa-bybookingnumber.yaml
sleep 1

kubectl apply -f vpa-byuser.yaml
sleep 1

kubectl apply -f vpa-cancelbooking.yaml
sleep 1

cd "../"