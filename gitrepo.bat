
git clone https://github.com/microsoft/fhir-server.git ./fhir-server
git clone https://github.com/microsoft/dicom-server.git ./dicom-server
git clone https://github.com/Anilm19/fhirLoader-automate.git ./fhirLoader-automate

git config --global core.autocrlf false
git clone https://github.com/synthetichealth/synthea.git ./fhirLoader-automate/synthea
git config --global core.autocrlf true


cd fhir-server
git pull

cd ../dicom-server
git pull

cd ../fhirLoader-automate
git pull

cd ../fhirLoader-automate/synthea
git pull


cd ..
cd ..

xcopy /y .\synthea.properties .\fhirLoader-automate\synthea\src\main\resources\synthea.properties

docker volume create dicomSqlDb
docker volume create fhirSqlDb

docker compose up
pause