#!/bin/bash
cd service-repo

echo I am in `pwd`
ls -l

cd TDDDemoAppTests
echo I am in `pwd`
ls -l

echo "starting test ..."
dotnet test

cd ../TDDDemoApp
echo I am in `pwd`
ls -l

echo "starting restore ..."
dotnet restore
dotnet build
dotnet publish