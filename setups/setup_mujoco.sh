wget https://github.com/google-deepmind/mujoco/releases/download/3.4.0/mujoco-3.4.0-linux-x86_64.tar.gz

mkdir -p ~/.mujoco
tar -xvf mujoco-3.4.0-linux-x86_64.tar.gz -C ~/.mujoco/

MUJOCO_BLOCK='
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.mujoco/mujoco-3.4.0/bin
export MUJOCO_PY_MUJOCO_PATH=$HOME/.mujoco/mujoco-3.4.0
# If using a license key:
# export MUJOCO_PY_MJKEY_PATH=$HOME/.mujoco/mjkey.txt
'
grep -qxF "export MUJOCO_PY_MUJOCO_PATH=\$HOME/.mujoco/mujoco-3.4.0" ~/.bashrc || echo "$MUJOCO_BLOCK" >> ~/.bashrc
source ~/.bashrc

cd ~/.mujoco/mujoco-3.4.0/bin/
./simulate
