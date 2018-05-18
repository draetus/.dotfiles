TF_TYPE="cpu" # Change to "gpu" for GPU support
OS="linux" # Change to "darwin" for macOS
TARGET_DIRECTORY="/usr/local"
curl -L \
  "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF_TYPE}-${OS}-x86_64-1.7.0.tar.gz" |
  sudo tar -C $TARGET_DIRECTORY -xz
