#!/bin/bash


python llava/eval/model_vqa.py \
    --model-path ./checkpoints/llava-v1.5-7b-finetune-base-lora \
    --model-base ./checkpoints/llava-v1.5-7b \
    --image-folder ./playground/data \
    --question-file ./playground/data/GeomVerse/TEST/D1/data_base_prompt.jsonl \
    --answers-file ./playground/data/GeomVerse/TEST/D1/answer_base_prompt.jsonl