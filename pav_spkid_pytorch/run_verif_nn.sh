python pav_spkid_pytorch/verif_nn.py \
--db_path work/mfcc \
--te_list_file lists/verif/all.test \
--te_list_file_candidates lists/verif/all.test.candidates \
--weights_ckpt work/nn/e10_weights.ckpt \
--train_cfg work/nn/train.opts \
--log_file work/verif_mfcc_nn.log \
--ext mfcc \
--verbose