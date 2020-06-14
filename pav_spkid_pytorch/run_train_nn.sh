python pav_spkid_pytorch/train_nn.py \
--db_path work/mfcc \
--tr_list_file lists/class/all.train \
--va_list_file lists/class/all.test \
--ext mfcc \
--spk2idx spk2idx.json \
--save_path work/nnn

--batch_size 1000 \
--hsize 100 \
--in_frames 21 \
--patience 10 \
--lr 0.001 \
--momentum 0.5 \
--epoch 20 \
--log_freq 20 \

