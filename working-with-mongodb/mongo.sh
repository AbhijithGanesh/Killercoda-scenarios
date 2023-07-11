apt install gnupg
wget -qO- https://www.mongodb.org/static/pgp/server-6.0.asc | sudo tee /etc/apt/trusted.gpg.d/server-6.0.asc
sudo apt-get update
sudo apt-get install -y mongodb-mongosh
docker-compose up
