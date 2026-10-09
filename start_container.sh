
#!/bin/bash
set -euo pipefail

DOCKER="/usr/bin/docker"
IMAGE="mrudulaav/simple-python-application"
CONTAINER="simple-python-application"

# Ensure Docker is running
systemctl start docker

# Pull the latest application image
"$DOCKER" pull "$IMAGE"

# Remove the previous container if it exists
"$DOCKER" rm -f "$CONTAINER" 2>/dev/null || true

# Start the application container
"$DOCKER" run -d \
  --name "$CONTAINER" \
  --restart unless-stopped \
  -p 5000:5000 \
  "$IMAGE"

# Verify the container is running
"$DOCKER" ps --filter "name=$CONTAINER"
