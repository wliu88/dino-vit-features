#!/usr/bin/env bash
eval "$(conda shell.bash hook)"
conda activate affcorrs
initial_seed=1
export CUDA_VISIBLE_DEVICES=0
export PYTHONPATH="/home/weiyu/Research/intern2/dino-vit-features:$PYTHONPATH"


data_dir="/home/weiyu/Research/intern2/part_grounding/data/neural_field_render/pairs/view"

echo $PYTHONPATH
for d in ${data_dir}/* ; do
    echo "$d"
    python inspect_similarity.py --image_a $d/0.png --image_b $d/1.png
done