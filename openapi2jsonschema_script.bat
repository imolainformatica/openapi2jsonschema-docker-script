SET SWAGGER_FILE=%1

echo /opt/workdirectory/%SWAGGER_FILE%
echo openapi2jsonschema...

docker run -v "%CD%:/opt/workdirectory" python:latest bash -c "pip install openapi2jsonschema && rm -rf /opt/workdirectory/%SWAGGER_FILE%_schema && openapi2jsonschema -o /opt/workdirectory/%SWAGGER_FILE%_schema --strict --stand-alone file:/opt/workdirectory/%SWAGGER_FILE%"