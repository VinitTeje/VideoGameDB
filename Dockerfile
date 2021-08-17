#update the current ubuntu

FROM  ubuntu
# Expose port 9090
EXPOSE 9090

# Set noninteractive
ENV DEBIAN_FRONTEND noninteractive

#install git on current image
#install openjdk8
#install maven
RUN apt-get update && apt install -y git openjdk-8-jdk maven

# Download VideoGameDB
RUN git clone https://github.com/VinitTeje/VideoGameDB.git

# Go To VideoGameDB folder
CMD ["bash", "VideoGameDB/videogamedb.sh"]
