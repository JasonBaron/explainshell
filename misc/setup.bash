set -e

# TODO(idank): test this on a clean machine

sudo yum install -y nginx git python-pip mongodb supervisor virtualenv
sudo pip install uwsgi

sudo add-apt-repository ppa:certbot/certbot
sudo yum update -y
sudo yum install -y certbot

cd ~
git clone https://github.com/idank/explainshell.git code
mkdir logs

virtualenv venv
source venv/bin/activate
pip install -r code/requirements.txt
