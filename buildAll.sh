#!/bin/bash

REPOFOLDER=../gerstrongmodules.github.io/
# Create folders
mkdir -p build/alpha/sword/modules/genbook/rawgenbook
mkdir -p build/alpha/sword/mods.d
mkdir -p build/alpha/sword/packages
mkdir -p build/beta/sword/modules/genbook/rawgenbook
mkdir -p build/beta/sword/mods.d
mkdir -p build/beta/sword/packages
mkdir -p build/alpha/sword/modules/comments/zcom
mkdir -p build/alpha/sword/modules/texts/ztext

home=$(pwd)
shopt -s globstar

## build alpha genbooks
for i in alpha/genbook/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	headline=$(head -n 1 $i)
	headline=${headline:1:-1}
	xml_file=${i%.conf}.xml
	echo "====================="
    echo "Processing $base_name"
    echo "Headline: $headline"
    mkdir -p build/alpha/sword/modules/genbook/rawgenbook/$base_name
    cp $i build/alpha/sword/mods.d
    # xml2gbs
    cd build/alpha/sword/modules/genbook/rawgenbook/$base_name
    xml2gbs $home/$xml_file $base_name
    cd -
    # copy figures (use dirname of conf so grouped-author folders work too)
    img_dir=$(dirname "$i")
    cp "$img_dir"/*.png build/alpha/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    cp "$img_dir"/*.jpg build/alpha/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    cp "$img_dir"/*.jpeg build/alpha/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    # copy graticule.tsv if present (map-atlas modules only): precomputed
    # lat/lon calibration for Phos's Actors & Locations map feature, read
    # from the module's own installed folder (see Phos's
    # unit_mapindex.pas / GraticuleSeedForModule) -- ships and updates on
    # this module's own release cycle instead of Phos's.
    cp "$img_dir"/graticule.tsv build/alpha/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    # copy reading-plan companions if present (*Plan modules only): the
    # .properties (AndBible) and _text.json (Phos) pair named by the conf's
    # AndBibleProvidesReadingPlan / PhosReadingPlanText entries. Both are read
    # straight out of the module's DataPath folder (see Phos's
    # unit_readingplan.pas / LoadPlanFile + LoadTextCompanion), so they must
    # ship inside the module dir alongside the compiled stub genbook. Their
    # filenames carry no "deu" prefix even though the folder does -- the conf
    # names them literally, so copy without renaming.
    cp "$img_dir"/*.properties build/alpha/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    cp "$img_dir"/*_text.json build/alpha/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    # make zip genbook
    cd build/alpha/sword/
    #zip -r ${base_name:3}.zip mods.d/$base_name.conf modules/genbook/rawgenbook/$base_name/*
    zip -r ${headline}.zip mods.d/$base_name.conf modules/genbook/rawgenbook/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${headline}.zip build/alpha/sword/packages/
done

# build alpha comments
for i in alpha/comments/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	headline=$(head -n 1 $i)
	headline=${headline:1:-1}
	xml_file=${i%.conf}.xml
    echo "Processing $base_name"
    mkdir -p build/alpha/sword/modules/comments/zcom/$base_name
    cp $i build/alpha/sword/mods.d
    # osis2mod
    cd build/alpha/sword/modules/comments/zcom/$base_name
    timeout 10 osis2mod . - < ../../../../../../../$xml_file   -v German
    cd -
    # copy figures 
    cp alpha/comments/$base_name/*.png build/alpha/sword/modules/comments/zcom/$base_name/
    cp alpha/comments/$base_name/*.jpg build/alpha/sword/modules/comments/zcom/$base_name/
    cp alpha/comments/$base_name/*.jpeg build/alpha/sword/modules/comments/zcom/$base_name/
    # make zip genbook
    cd build/alpha/sword/
    zip -r ${headline}.zip mods.d/$base_name.conf modules/comments/zcom/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${headline}.zip build/alpha/sword/packages/
done

cd $home 

# build alpha bible texts
for i in alpha/texts/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	headline=$(head -n 1 $i)
	headline=${headline:1:-1}
	xml_file=${i%.conf}.xml
    echo "Processing $base_name"
    mkdir -p build/alpha/sword/modules/texts/ztext/$base_name
    cp $i build/alpha/sword/mods.d
    # osis2mod
    cd build/alpha/sword/modules/texts/ztext/$base_name
    timeout 10 osis2mod . - < ../../../../../../../$xml_file   -v German >/dev/null
    cd -
    # copy figures 
    cp alpha/texts/$base_name/*.png build/alpha/sword/texts/ztext/$base_name/
    cp alpha/texts/$base_name/*.jpg build/alpha/sword/texts/ztext/$base_name/
    cp alpha/texts/$base_name/*.jpeg build/alpha/sword/texts/ztext/$base_name/
    # make zip genbook
    cd build/alpha/sword/
    zip -r ${headline}.zip mods.d/$base_name.conf modules/texts/ztext/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${headline}.zip build/alpha/sword/packages/
done

## build alpha lexdict
for i in alpha/lexdict/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	headline=$(head -n 1 $i)
	headline=${headline:1:-1}
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
    zip -r ${headline}.zip mods.d/$base_name.conf modules/lexdict/rawld4/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${headline}.zip build/alpha/sword/packages/
done

## build alpha reading plans (AndBible reading-plan modules: conf + .properties
## only, no genbook/osis source -- nothing to run through xml2gbs/osis2mod/tei2mod)
for i in alpha/readingplans/**/*.conf; do # Whitespace-safe and recursive
	base_name=$(basename -s .conf ${i})
	headline=$(head -n 1 $i)
	headline=${headline:1:-1}
	props_file=${i%.conf}.properties
    echo "Processing $base_name"
    mkdir -p build/alpha/sword/modules/texts/ztext/$base_name
    cp $i build/alpha/sword/mods.d
    cp $props_file build/alpha/sword/modules/texts/ztext/$base_name/
    # make zip file
    cd build/alpha/sword/
    zip -r ${headline}.zip mods.d/$base_name.conf modules/texts/ztext/$base_name/*
    cd -
    # move zip file
    mv build/alpha/sword/${headline}.zip build/alpha/sword/packages/
done
# build mods.d.tar.gz
cd build/alpha/sword/
tar -czf mods.d.tar.gz mods.d/*
cd -
# copy to repo
cp -r build/alpha/sword/packages $REPOFOLDER/alpha/
cp -r build/alpha/sword/mods.d $REPOFOLDER/alpha/
cp  build/alpha/sword/mods.d.tar.gz $REPOFOLDER/alpha/
#cp  -r build/alpha/sword/modules $REPOFOLDER/alpha/

## build beta genbooks
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
    # copy figures (use dirname of conf so grouped-author folders work too)
    img_dir=$(dirname "$i")
    cp "$img_dir"/*.png build/beta/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    cp "$img_dir"/*.jpg build/beta/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
    cp "$img_dir"/*.jpeg build/beta/sword/modules/genbook/rawgenbook/$base_name/ 2>/dev/null || true
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
cd $home
# copy to repo
cp -r build/beta/sword/packages $REPOFOLDER/beta/
cp -r build/beta/sword/mods.d $REPOFOLDER/beta/
cp  build/beta/sword/mods.d.tar.gz $REPOFOLDER/beta/
#cp  -r build/beta/sword/modules $REPOFOLDER/beta/
