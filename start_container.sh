
#!/bin/bash
set -e

# Pull the Docker image
/usr/bin/docker pull mrudulaav/simple-python-application

# Remove the old container if it exists
/usr/bin/docker rm -f simple-python-application 2>/dev/null || true

# Start the container
/usr/bin/docker run -d \
  --name simple-python-application \
  -p 5000:5000 \
  mrudulaav/simple-python-application

echo "Container started successfully"
