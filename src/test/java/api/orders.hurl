GET http://host.docker.internal:8085/orders
HTTP 200
Content-Type: application/json; charset=utf-8
[Asserts]
jsonpath "$" count == 2
jsonpath "$[0].id" == 1
jsonpath "$[0].product" == "Laptop"
jsonpath "$[0].price" == 1200.0
jsonpath "$[1].id" == 2
jsonpath "$[1].product" == "Mouse"
jsonpath "$[1].price" == 25.0