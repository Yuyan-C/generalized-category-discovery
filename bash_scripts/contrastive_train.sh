#!/bin/bash
module load anaconda/3

conda activate mothenv

python -m methods.contrastive_training.contrastive_training \
            --dataset_name 'scars' \
            --batch_size 128 \
            --grad_from_block 11 \
            --epochs 200 \
            --base_model vit_dino \
            --num_workers 16 \
            --use_ssb_splits 'True' \
            --sup_con_weight 0.35 \
            --weight_decay 5e-5 \
            --contrast_unlabel_only 'False' \
            --transform 'imagenet' \
            --lr 0.1 \
            --eval_funcs 'v1' 'v2' \
