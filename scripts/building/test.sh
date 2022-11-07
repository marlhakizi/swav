#!/bin/bash

DATASET_PATH="/Users/marlynehakizimana/Documents/FALL22/data-plus-22/notebooks/newoui_images/"
EXPERIMENT_PATH="./experiments/building/test/"
mkdir -p $EXPERIMENT_PATH
ew="../"
#python main_swav.py \
#python -m torch.distributed.launch --nproc_per_node=0 main_swav.py \
python -u main_swav.py \
--data_path $DATASET_PATH \
--nmb_crops 2 6 \
--size_crops 160 96 \
--min_scale_crops 0.14 0.05 \
--max_scale_crops 1. 0.14 \
--crops_for_assign 0 1 \
--temperature 0.1 \
--epsilon 0.05 \
--sinkhorn_iterations 3 \
--feat_dim 128 \
--nmb_prototypes 100 \
--queue_length 0 \
--epochs 5 \
--batch_size 128 \
--base_lr 0.5 \
--final_lr 0.0005 \
--wd 0.000001 \
--warmup_epochs 0 \
--arch resnet50 \
--use_fp16 true \
--initialize_imagenet false \
--task building \
--restrict_gpus 0 \
--dump_path $EXPERIMENT_PATH