apt-get -y update
apt-get -y upgrade

apt-get -y install build-essential


# --- docker ---
apt-get -y update
apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository -y \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
apt-get -y update
apt-get -y install docker-ce docker-ce-cli containerd.io
usermod -aG docker vagrant


# --- powershell ---
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get -y update
add-apt-repository -y universe
apt-get -y install powershell
mkdir -p /home/vagrant/.config/powershell
echo 'function prompt { Write-Host -ForegroundColor green "`n$env:USER@lab:$pwd"; return "PS > " }' >> /home/vagrant/.config/powershell/Microsoft.PowerShell_profile.ps1


# --- nodejs ---
curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get -y install nodejs


# --- docker images ---
docker pull ubuntu:latest
docker pull ethereum/client-go:latest


# --- pip ---
apt-get -y install python3-pip
pip3 install --upgrade pip
