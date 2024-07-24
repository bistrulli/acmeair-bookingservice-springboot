#!/bin/bash

# bookflights
kubectl apply -f deployment-bookflights.yaml
sleep 1
kubectl apply -f service-bookflights.yaml
sleep 1

# bybookingnumber
kubectl apply -f deployment-bybookingnumber.yaml
sleep 1
kubectl apply -f service-bybookingnumber.yaml
sleep 1

# bybookingnumber
kubectl apply -f deployment-byuser.yaml
sleep 1
kubectl apply -f service-byuser.yaml
sleep 1

# bybookingnumber
kubectl apply -f deployment-cancelbooking.yaml
sleep 1
kubectl apply -f service-cancelbooking.yaml
sleep 1