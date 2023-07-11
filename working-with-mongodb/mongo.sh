echo '
version: "3"
services:
   mongo:
      image: mongo
      container_name: mongo_db
      ports:
         - 27017:27017
' > docker-compose.yml
docker-compose up