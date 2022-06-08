# Install dependencies
sudo apt update -y
sudo apt install curl debian-archive-keyring lsb-release ca-certificates apt-transport-https software-properties-common -y

# Get GPG key
gpg_key_url="https://packages.gitlab.com/gitlab/gitlab-ce/gpgkey"
curl -fsSL $gpg_key_url| sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/gitlab.gpg

# Add source list
sudo tee /etc/apt/sources.list.d/gitlab_gitlab-ce.list<<EOF
deb https://packages.gitlab.com/gitlab/gitlab-ce/ubuntu/ focal main
deb-src https://packages.gitlab.com/gitlab/gitlab-ce/ubuntu/ focal main
EOF

# Update software and install
sudo apt-get update -y
sudo apt install gitlab-ce -y
