#!/bin/bash


cd "./hpa/"

kubectl apply -f hpa-bookflights.yaml
sleep 1

kubectl apply -f hpa-bybookingnumber.yaml
sleep 1

kubectl apply -f hpa-byuser.yaml
sleep 1

kubectl apply -f hpa-cancelbooking.yaml
sleep 1

cd "../"