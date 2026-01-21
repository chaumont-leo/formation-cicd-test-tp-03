GET http://host.docker.internal:8085/health
HTTP 200
[Asserts]
jsonpath "$.status" == "UP"

POST http://host.docker.internal:8085/health
HTTP 405
Content-Type: application/json; charset=utf-8
[Asserts]
jsonpath "$.error" == "Method Not Allowed"