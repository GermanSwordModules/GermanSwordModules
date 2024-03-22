#!/bin/bash

REPOFOLDER=../gerstrongmodules.github.io/
# Create folders
mkdir -p build/alpha/sword/modules/genbook/rawgenbook
mkdir -p build/alpha/sword/mods.d
mkdir -p build/alpha/sword/packages
mkdir -p build/beta/sword/modules/genbook/rawgenbook
mkdir -p build/beta/sword/mods.d
mkdir -p build/beta/sword/packages

home=$(pwd)
shopt -s globstar

# build alpha genbooks
for i in alpha/genbook/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	xml_file=${i%.conf}.xml
    echo "Processing $base_name"
    mkdir -p build/alpha/sword/modules/genbook/rawgenbook/$base_name
    cp $i build/alpha/sword/mods.d
    # xml2gbs
    cd build/alpha/sword/modules/genbook/rawgenbook/$base_name
    xml2gbs $home/$xml_file $base_name
    cd -
    # copy figures 
    cp alpha/genbook/$base_name/*.png build/alpha/sword/modules/genbook/rawgenbook/$base_name/
    cp alpha/genbook/$base_name/*.jpg build/alpha/sword/modules/genbook/rawgenbook/$base_name/
    cp alpha/genbook/$base_name/*.jpeg build/alpha/sword/modules/genbook/rawgenbook/$base_name/
    # make zip genbook
    cd build/alpha/sword/
    zip -r ${base_name:3}.zip mods.d/$base_name.conf modules/genbook/rawgenbook/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${base_name:3}.zip build/alpha/sword/packages/
done

# build alpha bible texts
#for i in alpha/texts/**/*.conf; do # Whitespace-safe and recursive
	#base_name=$(basename -s .conf ${i})
	#xml_file=${i%.conf}.xml
    #echo "Processing $base_name"
    #mkdir -p build/alpha/sword/texts/ztext/$base_name
    #cp $i build/alpha/sword/mods.d
    ## osis2mod
    #cd build/alpha/sword/texts/ztext/$base_name
    #osis2mod . - < ../../../../../../$xml_file   -v German
    #cd -
    ## copy figures 
    #cp alpha/texts/$base_name/*.png build/alpha/sword/texts/ztext/$base_name/
    #cp alpha/texts/$base_name/*.jpg build/alpha/sword/texts/ztext/$base_name/
    #cp alpha/texts/$base_name/*.jpeg build/alpha/sword/texts/ztext/$base_name/
    ## make zip genbook
    #cd build/alpha/sword/
    #zip -r $base_name.zip mods.d/$base_name.conf texts/ztext/$base_name/*
    #cd -
    ## move zip file
    #mv build/alpha/sword/$base_name.zip build/alpha/sword/packages/
#done

# build alpha lexdict
for i in alpha/lexdict/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	xml_file=${i%.conf}.xml
    echo "Processing $base_name"
    mkdir -p build/alpha/sword/modules/lexdict/rawld4/$base_name
    cp $i build/alpha/sword/mods.d
    # xml2gbs
    cd build/alpha/sword/modules/lexdict/rawld4/$base_name
    tei2mod . $home/$xml_file
    cd -
    # copy figures 
    cp alpha/lexdict/$base_name/*.png build/alpha/sword/modules/lexdict/rawld4/$base_name/
    cp alpha/lexdict/$base_name/*.jpg build/alpha/sword/modules/lexdict/rawld4/$base_name/
    cp alpha/lexdict/$base_name/*.jpeg build/alpha/sword/modules/lexdict/rawld4/$base_name/
    # make zip file
    cd build/alpha/sword/
    zip -r ${base_name:3}.zip mods.d/$base_name.conf modules/lexdict/rawld4/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${base_name:3}.zip build/alpha/sword/packages/
done
# build mods.d.tar.gz
cd build/alpha/sword/
tar -czf mods.d.tar.gz mods.d/*
cd -
# copy to repo
cp -r build/alpha/sword/packages $REPOFOLDER/alpha/
cp -r build/alpha/sword/mods.d $REPOFOLDER/alpha/
cp  build/alpha/sword/mods.d.tar.gz $REPOFOLDER/alpha/
cp  -r build/alpha/sword/modules $REPOFOLDER/alpha/

# build beta genbooks
for i in beta/genbook/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	xml_file=${i%.conf}.xml
    echo "Processing $base_name"
    mkdir -p build/beta/sword/modules/genbook/rawgenbook/$base_name
    cp $i build/beta/sword/mods.d
    # xml2gbs
    cd build/beta/sword/modules/genbook/rawgenbook/$base_name
    xml2gbs $home/$xml_file $base_name
    cd -
    # copy figures 
    cp beta/genbook/$base_name/*.png build/beta/sword/modules/genbook/rawgenbook/$base_name/
    cp beta/genbook/$base_name/*.jpg build/beta/sword/modules/genbook/rawgenbook/$base_name/
    cp beta/genbook/$base_name/*.jpeg build/beta/sword/modules/genbook/rawgenbook/$base_name/
    # make zip file
    cd build/beta/sword/
    zip -r ${base_name:3}.zip mods.d/$base_name.conf modules/genbook/rawgenbook/$base_name/*
    cd -
    # move zip file
    mv build/beta/sword/${base_name:3}.zip build/beta/sword/packages/
done
# build mods.d.tar.gz
cd build/beta/sword/
tar -czf mods.d.tar.gz mods.d/*
cd -
# copy to repo
cp -r build/beta/sword/packages $REPOFOLDER/beta/
cp -r build/beta/sword/mods.d $REPOFOLDER/beta/
cp  build/beta/sword/mods.d.tar.gz $REPOFOLDER/beta/
cp  -r build/beta/sword/modules $REPOFOLDER/beta/
