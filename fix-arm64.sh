#! /bin/bash

####################################################################################
echo "Changing from amd64 to arm64"

declare -a arr1=("src/usr/local/buildpack/tools/flux.sh"
                 "src/usr/local/buildpack/tools/git-lfs.sh"
                 "src/usr/local/buildpack/tools/golang.sh"
                 "src/usr/local/buildpack/tools/helm.sh"
                 "src/usr/local/buildpack/tools/jb.sh"
                 "src/usr/local/buildpack/tools/terraform.sh"
                )

for f in "${arr1[@]}"
do
   sed -i "s|amd64|arm64|g" "$f"
done


####################################################################################
echo "Changing from x64 to aarch64"

declare -a arr2=("src/usr/local/buildpack/tools/java-jre.sh"
                 "src/usr/local/buildpack/tools/java.sh"
                )

for f in "${arr2[@]}"
do
   sed -i "s|x64|aarch64|g" "$f"
done


####################################################################################
echo "Changing from x64 to arm64"
declare -a arr3=("src/usr/local/buildpack/tools/node.sh"
                 "src/usr/local/buildpack/tools/powershell.sh"
                )

for f in "${arr3[@]}"
do
   sed -i "s|x64|arm64|g" "$f"
done


####################################################################################
echo "Changing from x86_64 to aarch64"
declare -a arr4=("src/usr/local/buildpack/tools/docker.sh"
                 "src/usr/local/buildpack/tools/nix.sh"
                 "src/usr/local/buildpack/tools/rust.sh"
                )

for f in "${arr4[@]}"
do
   sed -i "s|x86_64|aarch64|g" "$f"
done
