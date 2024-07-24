FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install openssh-server git openjdk-17-jdk maven redis curl iputils-ping htop -y

WORKDIR /root

COPY . /root/acmeair-bookingservice-springboot
RUN git clone https://github.com/bistrulli/acmeair-ctrlmnt-springboot.git

WORKDIR /root/acmeair-ctrlmnt-springboot
RUN mvn clean install

WORKDIR /root/acmeair-bookingservice-springboot
RUN mvn clean package

EXPOSE 80
CMD ["java", "-jar", "/root/acmeair-bookingservice-springboot/target/acmeair-bookingservice-springboot-2.1.1-SNAPSHOT.jar", "--LICENSE=accept", "--customer.service=haproxy:8080", "--flight.service=haproxy:8080"]
