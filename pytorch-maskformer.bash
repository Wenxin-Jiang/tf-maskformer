module load ngc/default
module load gcc/9.3.0
# module load learning/conda-2020.11-py38-gpu
# module load ml-toolkit-gpu/opencv/4.5.1
## conda create new env
# conda-env-mod create -n maskformer-tf
module load anaconda/2020.11-py38
# conda activate pytorch-maskformer
 # Not sure if needed? No!

module use /home/jiang784/privatemodules
module load use.own
module load conda-env/maskformer-tf-py3.8.10
module load pytorch/21.09-py3 # WARNING: container problem! 
# optional?
module load cuda
module load cudnn



# Dataset Path
# /scratch/gilbreth/jiang784/datasets/coco/COCO-Stuff-10K

# Install Detectron2
# export PYTHONPATH="${PYTHONPATH}:/home/jiang784/.local/bin:/home/jiang784/downloads/detectron2" # NOTE: Detectron2 is installed here? No
# export PATH="${PATH}:/home/jiang784/.local/bin:/home/jiang784/downloads/detectron2"
# python -m pip install -e detectron2 --user
# python -m pip install 'git+https://github.com/facebookresearch/detectron2.git' --user
# conda install -c conda-forge detectron2

# Other dependencies
# pip install typer==0.4.0
# pip install git+https://github.com/facebookresearch/fvcore.git
# conda install "numpy < 1.23.0"

# dataset
# export DETECTRON2_DATASETS=/scratch/gilbreth/jiang784/datasets

# demo
# python  demo.py --config-file ../configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml --input demo.jpg ../ckpts/model_final_cb03eb.pkl 

# eval
# python ./train_net.py --config-file ./configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml --eval-only MODEL.WEIGHTS ./ckpts/model_final_cb03eb.pkl 

# train
python ./train_net.py \
  --config-file ./configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml\
  --num-gpus 1 SOLVER.IMS_PER_BATCH 1
#    SOLVER.BASE_LR 1