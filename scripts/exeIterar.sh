#!/bin/bash
STARTTIME=$(date +%s)
make release
#run_spkid mfcc 
#FEAT=mfcc run_spkid train test
#error=$(FEAT=mfcc run_spkid classerr)
#echo $error >> resultats.txt
        # Nomes iterar train o trainworld
        """
        Exemple:
        init=1
        VQit=50000
        VQth=0.0000001
        TH=0.0000001
        IT=50000
        nMix=50
        """
        for init in 1; do
            for VQit in 50000;do
                for VQth in 0.0000001;do
                    for TH in 0.001;do
                        for IT in 50000;do
                            for nMix in 40; do
                                #Iterar train
                                echo "train :16 coefs, 20 filtres, init method $init, VQit $VQit, VQth $VQth, TH $TH, IT $IT, nMix $nMix"  >> resultats.txt
                                FEAT=mfcc run_spkid train $init $VQit $VQth $TH $IT $nMix
                                        ### Iterar trainworld 
                                        #FEAT=mfcc run_spkid trainworld $init $VQit $VQth $TH $IT $nMix 
                                FEAT=mfcc run_spkid test
                                result=$(FEAT=mfcc run_spkid classerr)
                                echo $result >> resultats.txt
                                FEAT=mfcc run_spkid verify
                                result=$(FEAT=mfcc run_spkid verifyerr)
                                echo $result >> resultats.txt
                            done
                        done
                    done
                done
            done
        done


# RES DE COMANDOS IMPORTANTS A PARTIR D'AQUI

####### CALCULATE TIME ELAPSED #######
ENDTIME=$(date +%s)
totalseconds=$(($ENDTIME - $STARTTIME))
seconds=$((totalseconds%60));
minutes=$((totalseconds/60%60));
hours=$((totalseconds/60/60%24));
days=$((totalseconds/60/60/24));
(( $days > 0 )) && printf '%d days ' $days;
(( $hours > 0 )) && printf '%d hours ' $hours;
(( $minutes > 0 )) && printf '%d minutes ' $minutes;
(( $days > 0 || $hours > 0 || $minutes > 0 )) && printf 'and ';
printf '%d seconds\n' $seconds;
printf '%d seconds\n' $seconds >> resultats.txt
####### CALCULATE TIME ELAPSED #######


# COMENTARIS
"""
Els seguents parametres donen Cost 8.0, bastant bé. Coses com IT o nMix es podrien ajustar una mica
més potser.
TRAINWORLD:16 coefs, 20 filtres, init method 1, VQit 50000000, VQth 0.000001, TH 0.001, IT 50, nMix 100


Fins ara millor train:
train :16 coefs, 20 filtres, init method 1, VQit 50000, VQth 0.0000001, TH 0.001, IT 50, nMix 40 --> Cost 7.2
train :16 coefs, 20 filtres, init method 1, VQit 50000, VQth 0.0000001, TH 0.001, IT 50000, nMix 40 --> Cost 7.2
"""