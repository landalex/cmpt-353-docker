# cmpt-353-docker
Docker container and utility scripts for the environment used in CMPT 353

# Usage
1. Build the Docker image: `./buildDocker.sh`
2. Change `YOUR_WORK_DIRECTORY_HERE` in `runDocker.sh` to the directory on your computer containing the files you want to work with.
3. Run the Docker container: `./runDocker.sh`

To run Juypter inside the container, use `./runJupyter.sh` (see below for why).

# Quirks 
Docker container networking doesn't play nicely with Jupyter, so it requires the `--ip` parameter to be passed in, as well as the `--allow-root` parameter since we're root in the container. You could run the command yourself when starting Jupyter, or be lazy and use the `runJupyter.sh` script. `buildDocker.sh` handles mapping the appropriate port (8888) so you can use Jupyter inside the container as you would normally.
