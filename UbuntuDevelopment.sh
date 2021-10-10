echo "making tmp directory"
mkdir ~/tmp
cd ~/tmp

echo "updating and upgrading"
sudo apt update && sudo apt upgrade -y

echo "switching to zsh"
chsh -s $(which zsh)

echo "installing packages"
sudo apt install \
curl unzip less groff \
postgresql-client \
git-all \
iputils-ping \
npm \
python3-pip \
gnupg \
software-properties-common \
curl -y

echo "installing terraform"
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

echo "installing aws cli"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "installing ohMyZsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"