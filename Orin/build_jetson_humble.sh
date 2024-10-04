if [ $# -lt 1 ]; then
  echo "Usage: $0 target_post_name[=base,realsense,etc.]"
else
  docker build \
    -f Dockerfile.l4tbase.$1\
    -t odris-jetson-humble:$1 \
  .
fi
