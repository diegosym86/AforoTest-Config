echo **************************************************************
echo Generate JAR
echo **************************************************************
mvnw clean package -DskipTests
echo **************************************************************
echo BUILD AND PUSH Docker
echo **************************************************************
docker stop app-config
docker rm  app-config
echo **************************************************************
docker  build -t jhonarizaifx/test-ms-config .
docker push  jhonarizaifx/test-ms-config
echo **************************************************************
echo run image 
docker run -p 8888:8888 --name app-config --network aforo255-test -d jhonarizaifx/test-ms-config
echo *************************************************************
echo End Process
echo *************************************************************