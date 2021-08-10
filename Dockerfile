#update the current ubuntu
FROM  ubuntu
RUN apt-get update

#install git on current image
RUN apt install -y git

# Expose port 8080
EXPOSE 8080

ENV DEBIAN_FRONTEND noninteractive

#install openjdk8
RUN apt install -y openjdk-8-jdk

# Install Maven
RUN apt-get install maven -y

# Download VideoGameDB
RUN git clone https://github.com/james-willett/VideoGameDB.git

# Go To VideoGameDB folder
#WORKDIR /VideoGameDB

# Run Application using Maven
# RUN mvn spring-boot:run
