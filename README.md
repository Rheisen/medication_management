# README

## SETUP

Ruby Version 5.1, Rails Version 5.1.6

Database: Postgres

To set up the project clone the repository to your local machine. You will need ruby with the specified version along
with rails and postgres to run the project.

Once cloned run:
1. ``` bundle install ``` to install the project gems.
2. ``` rake db:setup ``` to create local development databases.

## Running Test Suite

To run the project test suite input the following command:

``` bundle exec rspec ```

Currently the test suite only checks the models. Future tests should validate the behavior of the controllers.

## Running Server

Once the project has been set up running the API from your local machine through the terminal consists of inputting
the following command:

``` rails s -p 9000 ```

## Notes

This API supports patients, medications, and prescriptions. Patients can have many medications through prescriptions.
Prescriptions belong to one patient and one medication. Medications can have many patients through prescriptions.

### Patients

To add new patients send a POST request to localhost:9000/v1/patients/new with json data of the following structure:

```json
{
	"patient_new": {
		"first_name": "Sam",
		"last_name": "Wise",
		"email": "sam.wise@email.com",
		"mobile_number": "6762937194"
	}
}
```

To get a list of all patients send a GET request to localhost:9000/v1/patients.

To get a single patient send a GET request to localhost:9000/v1/patients/get/:id where id is the patient id.

To update a patient send a PATCH request to localhost:9000/v1/patients/edit/:id with json data of the following structure:

```json
{
	"patient_update": {
		"first_name": "Sam",
		"last_name": "Wise",
		"email": "sam.wise@email.com",
		"mobile_number": "4345678724"
	}
}
```

To delete a patient send a DELETE request to localhost:9000/v1/patients/delete/:id where id is the patient id.

### Medications

To add new medications send a POST request to localhost:9000/v1/medications/new with json data of the following
structure:

```json
{
	"medication_new": {
		"name": "M01",
		"uses": "headache",
		"side_effects": "none",
		"available": true
	}
}
```

To get a list of all medications send a GET request to localhost:9000/v1/medications.

To get a single medication send a GET request to localhost:9000/v1/medications/get/:id where id is the medication id.

To update a medication send a PATCH request to localhost:9000/v1/medications/edit/:id with json data of the following
structure:

```json
{
	"medication_update": {
		"name": "M01",
		"uses": "headache",
		"side_effects": "sore throat",
		"available": true
	}
}
```

To delete a medication send a DELETE request to localhost:9000/v1/medications/delete/:id where id is the medication id.

### Prescriptions

To add new prescriptions send a POST request to localhost:9000/v1/prescriptions/new with json data of the following
structure:

```json
{
	"prescription_new": {
		"dosage": "1 pill per day",
		"active": true,
		"patient_id": 1,
		"medication_id": 1
	}
}
```

To get a list of all prescriptions send a GET request to localhost:9000/v1/prescriptions.

To get a single prescription send a GET request to localhost:9000/v1/prescriptions/get/:id where id is the
prescription id.

To update a prescription send a PATCH request to localhost:9000/v1/prescriptions/edit/:id with json data of the
following structure:

```json
{
	"prescription_update": {
		"dosage": "2 pill per day",
		"active": true,
		"patient_id": 1,
		"medication_id": 1
	}
}
```

To delete a prescription send a DELETE request to localhost:9000/v1/prescriptions/delete/:id where id is the
prescription id.
