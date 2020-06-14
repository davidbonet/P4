#!/bin/bash

for ((coef=12; coef<=18; coef+=2)); do
    for ((filt=20; filt<=32; filt+=4)); do
        carpeta="${coef}_coef_&_${filt}_filt"
        run_spkid_mini mfcc $coef $filt $carpeta
        echo "Done: $coef coeficients i $filt filtres" >> mfcc_computats.txt
    done
done
