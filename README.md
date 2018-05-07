# cmpt-353-docker
Docker container and utility scripts for the environment used in CMPT 353

# Usage
1. Build the Docker image: `./buildDocker.sh`
2. Change `YOUR_WORK_DIRECTORY_HERE` in `runDocker.sh` to the directory on your computer containing the files you want to work with.
3. Run the Docker container: `./runDocker.sh`

To run Juypter inside the container, use `./runJupyter.sh` (see below for why).

# Quirks 

### Jupyter
Docker container networking doesn't play nicely with Jupyter, so it requires the `--ip` parameter to be passed in, as well as the `--allow-root` parameter since we're root in the container. You could run the command yourself when starting Jupyter, or be lazy and use the `runJupyter.sh` script. `buildDocker.sh` handles mapping the appropriate port (8888) so you can use Jupyter inside the container as you would normally.

### Matplotlib
Since there isn't an X server running to display matplotlib plots, you can either [disable showing plots](https://stackoverflow.com/questions/4931376/generating-matplotlib-graphs-without-a-running-x-server) (and save them to a file instead), or use Jupyter to make a notebook with the script that creates the plot and prepend `%matplotlib inline` to the beginning, allowing Jupyter to display the plot for you in your web browser.
