echo -e "\n-----------CELRs Exports S3 SInk  -------------"
curl -X  DELETE -H "Content-Type: application/json" http://localhost:8083/connectors/s3csvfiledlq
curl -X  POST -H "Content-Type: application/json" http://localhost:8083/connectors --data @s3csvfiledlq.json

curl -X  DELETE -H "Content-Type: application/json" http://localhost:8083/connectors/s3csvfilestatus
curl -X  POST -H "Content-Type: application/json" http://localhost:8083/connectors --data @s3csvfilestatus.json

curl -X  DELETE -H "Content-Type: application/json" http://localhost:8083/connectors/s3mergedlabrecord
curl -X  POST -H "Content-Type: application/json" http://localhost:8083/connectors --data @s3mergedlabrecord.json

curl -X  DELETE -H "Content-Type: application/json" http://localhost:8083/connectors/s3csvrecordvalidation
curl -X  POST -H "Content-Type: application/json" http://localhost:8083/connectors --data @s3csvrecordvalidation.json

curl -X  DELETE -H "Content-Type: application/json" http://localhost:8083/connectors/s3hl7redacted
curl -X  POST -H "Content-Type: application/json" http://localhost:8083/connectors --data @s3hl7redacted.json

curl -X  DELETE -H "Content-Type: application/json" http://localhost:8083/connectors/s3hl7dlq
curl -X  POST -H "Content-Type: application/json" http://localhost:8083/connectors --data @s3hl7dlq.json



### Testing the Status
echo -e "\n------------------------------"
curl -X  GET -H "Content-Type: application/json" http://localhost:8083/connectors/s3csvfiledlq/status
echo -e "\n------------------------------"
curl -X  GET -H "Content-Type: application/json" http://localhost:8083/connectors/s3csvfilestatus/status
echo -e "\n------------------------------"
curl -X  GET -H "Content-Type: application/json" http://localhost:8083/connectors/s3covidexports3/status
echo -e "\n------------------------------"
curl -X  GET -H "Content-Type: application/json" http://localhost:8083/connectors/s3hl7phiredactedreport3/status
echo -e "\n------------------------------"
curl -X  GET -H "Content-Type: application/json" http://localhost:8083/connectors/s3celrsvalidationreport3/status
