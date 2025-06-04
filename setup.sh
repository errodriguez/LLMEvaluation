#!/usr/bin/env bash
conda create -n eviai python=3.13 -y
conda activate eviai
git clone https://github.com/errodriguez/LLMEvaluation.git LLMEval
git clone https://github.com/evidentlyai/community-examples.git Repos
pip install jupyterlab
pip install ipywidgets
