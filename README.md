# iSante Plus ETL jobs
ETL job to extract data from a iSante Plus database into a CSV format file ready to be uploaded on a iSante instance.

## Getting Started
This instructions will help you run the Pentaho Data Integration job that generates the CSV file.

## Prerequisites
* Download and install Pentaho Data Integration (PDI) version 8 (follow PDI instalation procedure, requires JAVA). 
  This steps were validated on version 8.2.0;
* Pentaho DI Community edition can be found [here](https://community.hitachivantara.com/external-link.jspa?url=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fpentaho%2Ffiles%2Flatest%2Fdownload%3FaliId%3D137249511).
* Download MySQL connector version 5;
* Install Curl;

## Instalation, configuration and execution
* Extract the downloaded file on a directory of your choice `${pdi-install-dir}`;
* Copy MySQL connector jar file to `${pdi-install-dir}/data-integration/lib`;
* Open terminal on directory `${pdi-install-dir}/data-integration` and execute `./spoon.sh`;
* Close PDI end edit the file `~/.kettle/kettle.properties` adding the required database variables, you can get inspiration from the file https://github.com/edrisse/isante/blob/master/etc/sample_kettle.properties on this repository;
* Run https://github.com/edrisse/isante/blob/master/sql/iSante-plus.sql SQL script on your iSante plus database;
* Open PDI again and click open (Ctrl+O) and open the `extract-data.kjb` job;
* Click `Run` (with a play icon);
* Disable `Gather performance statistics` option to make the execution faster;
* Click `Run`;
* Once the execution of the job completes the result will be stored on the file `~/isante/data-post-processed.csv`;
