wget -qO- https://www.mongodb.org/static/pgp/server-6.0.asc | sudo tee /etc/apt/trusted.gpg.d/server-6.0.asc
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install mongodb-org -y
sudo apt-get install -y mongodb-mongosh
sudo apt-get install -y mongodb-mongosh-shared-openssl3
sudo systemctl enable mongod
sudo systemctl start mongod
