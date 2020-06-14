#!/bin/bash
make release
run_spkid mfcc train test classerr trainworld verify verifyerr
