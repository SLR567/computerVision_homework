#!/bin/bash

# IMPORTANT: this is the training script for the original LLaVA, NOT FOR LLaVA V1.5!

# Uncomment and set the following variables correspondingly to run this script:

################## VICUNA ##################
# PROMPT_VERSION=v1
# MODEL_VERSION="vicuna-v1-3-7b"
################## VICUNA ##################

################## LLaMA-2 ##################
# PROMPT_VERSION="llava_llama_2"
# MODEL_VERSION="llama-2-7b-chat"
################## LLaMA-2 ##################

python llava/eval/model_vqa.py \
    --model-path ./checkpoints/llava-v1.5-7b-finetune-base-lora \
    --model-base ./checkpoints/llava-v1.5-7b \
    --image-folder ./playground/data \
    --question-file ./playground/data/GeomVerse/TEST/D1/data_base.jsonl \
    --answers-file ./playground/data/GeomVerse/TEST/D1/answer_base.jsonl