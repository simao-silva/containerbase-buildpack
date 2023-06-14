#! /bin/bash

####################################################################################
echo "Changing from amd64 to arm64"

declare -a arr1=("src/usr/local/containerbase/tools/v2/flux.sh"
                 "src/usr/local/containerbase/tools/v2/git-lfs.sh"
                 "src/usr/local/containerbase/tools/v2/golang.sh"
                 "src/usr/local/containerbase/tools/v2/helm.sh"
                 "src/usr/local/containerbase/tools/v2/jb.sh"
                 "src/usr/local/containerbase/tools/v2/terraform.sh"
                )

for f in "${arr1[@]}"
do
   sed -i "s|amd64|arm64|g" "$f"
done


####################################################################################
echo "Changing from x64 to aarch64"

declare -a arr2=(""
                )

# for f in "${arr2[@]}"
# do
#    sed -i "s|x64|aarch64|g" "$f"
# done


####################################################################################
echo "Changing from x64 to arm64"
declare -a arr3=("src/usr/local/containerbase/tools/v2/node.sh"
                 "src/usr/local/containerbase/tools/v2/powershell.sh"
                 "src/usr/local/containerbase/tools/v2/dart.sh"
                )

for f in "${arr3[@]}"
do
   sed -i "s|x64|arm64|g" "$f"
done


####################################################################################
echo "Changing from x86_64 to aarch64"
declare -a arr4=("src/usr/local/containerbase/tools/v2/docker.sh"
                 "src/usr/local/containerbase/tools/v2/rust.sh"
                )

for f in "${arr4[@]}"
do
   sed -i "s|x86_64|aarch64|g" "$f"
done
