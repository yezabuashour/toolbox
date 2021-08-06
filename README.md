# toolbox: a linux zsh box
NOTE: This is still under development and will be updated as necessary

## How to use
### Prerequisites
- git
- Docker or Docker Desktop

### Installation
1. `git clone https://github.com/yezabuashour/toolbox.git`
2. In terminal/powershell: `docker build -t toolbox .`

### Running the box
1. `docker run --name toolbox_container -v ~/:/tmp -it toolbox zsh`
This will mount your home directory to the `/tmp` directory in the box