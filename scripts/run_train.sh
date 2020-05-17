#!/bin/bash

for ((coef=12; coef<=18; coef+=2)); do
    for ((filt=20; filt<=32; filt+=4)); do
        carpeta="${coef}_coef_&_${filt}_filt"
        # FEAT=mfcc run_spkid_mini train $coef $filt $carpeta
        # echo "Done: $coef coeficients i $filt filtres" >> train_computats.txt
        # FEAT=mfcc run_spkid_mini test $coef $filt $carpeta
        # echo "Done: $coef coeficients i $filt filtres" >> test_computats.txt
        error=$(FEAT=mfcc run_spkid_mini classerr $carpeta)
        echo "Done: $coef coeficients i $filt filtres. Error= $error">> classerr_computats.txt
    done
done
