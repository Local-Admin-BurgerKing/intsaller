rm bin -r
mkdir bin

cd json-io
mvn install
cd ..

cd object-mapper
mvn install
cd ..

cd login-secure
mvn install
cd ..

cd core
mvn clean install
cd ..


cd rest-api
mvn clean package
cp target/*.war ../bin/rest-api-war.jar
cd ..

cd webpage
mvn clean package
cp target/*.war ../bin/ROOT.war
cd ..

cd service-worker
mvn clean  package -P "Jar With Dependencies"
cp target/*-dependencies.jar ../bin/sw.jar
cd ..
