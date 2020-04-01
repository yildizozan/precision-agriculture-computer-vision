#!/usr/bin/env bash

#wget -O CA17.zip http://lcas.lincoln.ac.uk/nextcloud/index.php/s/RYni5xngnEZEFkR/download
#unzip CA17.zip
#mv CA17/carrots_labelled/ dataset/
#rm -rf CA17

rm -rf data
mkdir -p data/train/img data/trainannot/img data/test/img data/testannot/img data/val/img data/valannot/img

# Train & Test
for i in {1..16};
do 
	cp "dataset/$i/rgbreg_crop.png" "data/train/img/$i-rgbreg_crop.png";
done

for i in {17..20};
do 
        cp "dataset/$i/rgbreg_crop.png" "data/test/img/$i-rgbreg_crop.png";
done

for i in {1..16};
do
        cp "dataset/$i/partialc_crop.png" "data/trainannot/img/$i-partialc_crop.png";
done

for i in {17..20};
do
        cp "dataset/$i/partialc_crop.png" "data/testannot/img/$i-partialc_crop.png";
done

for i in {1..20};
do
        cp "dataset/$i/rgbreg_crop.png" "data/val/img/$i-rgbreg_crop.png";
        cp "dataset/$i/truth_crop.png" "data/valannot/img/$i-truth_crop.png";
done

