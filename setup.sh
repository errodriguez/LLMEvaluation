#!/usr/bin/env bash
NEW_CONDA_ENV_NAME=eviai
conda create -n $NEW_CONDA_ENV_NAME python=3.13 -y
conda env list

echo "After this script finishes correctly:"
echo " "
echo "- Be sure you're in the right path, where the project will be created."
echo " "
echo "git clone https://github.com/errodriguez/LLMEvaluation.git LLMEval"
echo "git clone https://github.com/evidentlyai/community-examples.git Repos"
echo " "
echo "- Activate the new conda environment '$NEW_CONDA_ENV_NAME'"
echo " "
echo "conda activate eviai"
echo " "
echo "- When the new conda environment is active, proceed with:"
echo " "
echo "pip install jupyterlab"
echo "pip install ipywidgets"
echo " "
echo "- Finally, delete the download script `setup.sh`"
