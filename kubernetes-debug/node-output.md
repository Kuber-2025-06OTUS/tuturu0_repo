```bash
kubectl -n homework exec -it pod/node-debug -- /bin/bash

cat /host/var/log/pods/homework_nginx-distroless_d8c5faff-a31b-4742-bc3f-e27df97fd58e/nginx/0.log 
2025-11-04T14:54:43.070199506Z stdout F 127.0.0.1 - - [04/Nov/2025:22:54:43 +0800] "GET / HTTP/1.1" 200 612 "-" "curl/8.5.0" "-"
2025-11-04T14:54:45.08160259Z stdout F 127.0.0.1 - - [04/Nov/2025:22:54:45 +0800] "GET / HTTP/1.1" 200 612 "-" "curl/8.5.0" "-"
2025-11-04T14:54:45.839744429Z stdout F 127.0.0.1 - - [04/Nov/2025:22:54:45 +0800] "GET / HTTP/1.1" 200 612 "-" "curl/8.5.0" "-"
2025-11-04T14:54:46.567037366Z stdout F 127.0.0.1 - - [04/Nov/2025:22:54:46 +0800] "GET / HTTP/1.1" 200 612 "-" "curl/8.5.0" "-"
```
