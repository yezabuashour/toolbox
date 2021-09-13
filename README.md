# toolbox: a linux zsh box
NOTE: This is still under development and will be updated as necessary

## How to use
### Prerequisites
- git
- Docker or Docker Desktop

### Installation
1. `git clone git@gitlab.com:bung-broker/toolbox.git`
2. In terminal/powershell: `docker build -t toolbox .`

### Running the box
1. `docker run -v ~/:/tmp -it --rm toolbox zsh`
This will mount your home directory to the `/tmp` directory in the box

**NOTE: Port mapping can be enabled, but only one container can be running. See below example:**
`docker run -v ~/:/tmp -it -p 127.0.0.1:80:80 --rm toolbox zsh`