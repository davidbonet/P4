python pav_spkid_pytorch/verif_nn.py \
--db_path work/mfcc \
--te_list_file lists/final/verif.test \
--te_list_file_candidates lists/final/verif.test.candidates \
--weights_ckpt work/nn/e10_weights.ckpt \
--train_cfg work/nn/train.opts \
--log_file work/verif_DL.log \
--ext mfcc \
--verbose