python pav_spkid_pytorch/test_nn.py \
--db_path work/mfcc \
--te_list_file lists/final/class.test \
--weights_ckpt work/nn/e10_weights.ckpt \
--log_file work/class_DL.log \
--train_cfg work/nn/train.opts \
--ext mfcc \
--verbose