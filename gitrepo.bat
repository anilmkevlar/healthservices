
git clone https://github.com/microsoft/fhir-server.git ./fhir-server
git clone https://github.com/microsoft/dicom-server.git ./dicom-server
git clone https://github.com/Anilm19/fhirLoader-automate.git ./fhirLoader-automate

git config --global core.autocrlf false
git clone https://github.com/anilmkevlar/fhirloader.git ./fhirLoader-automate/synthea
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

docker volume create SqlDb

docker compose up
pause