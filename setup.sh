#!/usr/bin/env bash
NEW_CONDA_ENV_NAME=eviai
KEYRING=Vault
KEYS_FILE=keys.sh

conda create -n $NEW_CONDA_ENV_NAME python=3.13 -y
conda env list
if [ ! -d $KEYRING ]
    then echo "Creating keyring folder..."
         mkdir $KEYRING
         echo "export OPENAI_API_KEY=to-be-updated" > $KEYRING/$KEYS_FILE
         chmod u+x $KEYRING/$KEYS_FILE
    else echo "Existing keyring folder. No action taken."
fi

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
echo "- Finally, delete the script `setup.sh` that was downloaded."
