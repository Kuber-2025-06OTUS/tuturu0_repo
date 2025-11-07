```bash
kubectl port-forward pod/nginx-distroless --address 0.0.0.0 8080:80 -n homework
curl -v -k http://127.0.0.1:8080

nginx-distroless:~# tcpdump -nn -i any -e port 80
tcpdump: WARNING: any: That device doesn't support promiscuous mode
(Promiscuous mode not supported on the "any" device)
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on any, link-type LINUX_SLL2 (Linux cooked v2), snapshot length 262144 bytes
14:54:43.027912 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.49204 > 127.0.0.1.80: Flags [S], seq 921921353, win 65495, options [mss 65495,sackOK,TS val 1017757791 ecr 0,nop,wscale 7], length 0
14:54:43.027922 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.80 > 127.0.0.1.49204: Flags [S.], seq 2286957732, ack 921921354, win 65483, options [mss 65495,sackOK,TS val 1017757791 ecr 1017757791,nop,wscale 7], length 0
14:54:43.027931 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49204 > 127.0.0.1.80: Flags [.], ack 1, win 512, options [nop,nop,TS val 1017757791 ecr 1017757791], length 0
14:54:43.069704 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 149: 127.0.0.1.49204 > 127.0.0.1.80: Flags [P.], seq 1:78, ack 1, win 512, options [nop,nop,TS val 1017757833 ecr 1017757791], length 77: HTTP: GET / HTTP/1.1
14:54:43.069721 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49204: Flags [.], ack 78, win 511, options [nop,nop,TS val 1017757833 ecr 1017757833], length 0
14:54:43.069917 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 310: 127.0.0.1.80 > 127.0.0.1.49204: Flags [P.], seq 1:239, ack 78, win 512, options [nop,nop,TS val 1017757833 ecr 1017757833], length 238: HTTP: HTTP/1.1 200 OK
14:54:43.069928 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49204 > 127.0.0.1.80: Flags [.], ack 239, win 511, options [nop,nop,TS val 1017757833 ecr 1017757833], length 0
14:54:43.069954 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 684: 127.0.0.1.80 > 127.0.0.1.49204: Flags [P.], seq 239:851, ack 78, win 512, options [nop,nop,TS val 1017757833 ecr 1017757833], length 612: HTTP
14:54:43.069956 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49204 > 127.0.0.1.80: Flags [.], ack 851, win 507, options [nop,nop,TS val 1017757833 ecr 1017757833], length 0
14:54:44.111430 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49204 > 127.0.0.1.80: Flags [F.], seq 78, ack 851, win 512, options [nop,nop,TS val 1017758874 ecr 1017757833], length 0
14:54:44.111822 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49204: Flags [F.], seq 851, ack 79, win 512, options [nop,nop,TS val 1017758875 ecr 1017758874], length 0
14:54:44.111829 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49204 > 127.0.0.1.80: Flags [.], ack 852, win 512, options [nop,nop,TS val 1017758875 ecr 1017758875], length 0
14:54:45.044027 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.49218 > 127.0.0.1.80: Flags [S], seq 2154886493, win 65495, options [mss 65495,sackOK,TS val 1017759807 ecr 0,nop,wscale 7], length 0
14:54:45.044036 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.80 > 127.0.0.1.49218: Flags [S.], seq 1883542910, ack 2154886494, win 65483, options [mss 65495,sackOK,TS val 1017759807 ecr 1017759807,nop,wscale 7], length 0
14:54:45.044045 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49218 > 127.0.0.1.80: Flags [.], ack 1, win 512, options [nop,nop,TS val 1017759807 ecr 1017759807], length 0
14:54:45.081167 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 149: 127.0.0.1.49218 > 127.0.0.1.80: Flags [P.], seq 1:78, ack 1, win 512, options [nop,nop,TS val 1017759844 ecr 1017759807], length 77: HTTP: GET / HTTP/1.1
14:54:45.081184 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49218: Flags [.], ack 78, win 511, options [nop,nop,TS val 1017759844 ecr 1017759844], length 0
14:54:45.081333 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 310: 127.0.0.1.80 > 127.0.0.1.49218: Flags [P.], seq 1:239, ack 78, win 512, options [nop,nop,TS val 1017759844 ecr 1017759844], length 238: HTTP: HTTP/1.1 200 OK
14:54:45.081345 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49218 > 127.0.0.1.80: Flags [.], ack 239, win 511, options [nop,nop,TS val 1017759844 ecr 1017759844], length 0
14:54:45.081363 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 684: 127.0.0.1.80 > 127.0.0.1.49218: Flags [P.], seq 239:851, ack 78, win 512, options [nop,nop,TS val 1017759844 ecr 1017759844], length 612: HTTP
14:54:45.081370 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49218 > 127.0.0.1.80: Flags [.], ack 851, win 507, options [nop,nop,TS val 1017759844 ecr 1017759844], length 0
14:54:45.803032 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.49222 > 127.0.0.1.80: Flags [S], seq 1626411476, win 65495, options [mss 65495,sackOK,TS val 1017760566 ecr 0,nop,wscale 7], length 0
14:54:45.803041 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.80 > 127.0.0.1.49222: Flags [S.], seq 3709097046, ack 1626411477, win 65483, options [mss 65495,sackOK,TS val 1017760566 ecr 1017760566,nop,wscale 7], length 0
14:54:45.803049 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49222 > 127.0.0.1.80: Flags [.], ack 1, win 512, options [nop,nop,TS val 1017760566 ecr 1017760566], length 0
14:54:45.839340 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 149: 127.0.0.1.49222 > 127.0.0.1.80: Flags [P.], seq 1:78, ack 1, win 512, options [nop,nop,TS val 1017760602 ecr 1017760566], length 77: HTTP: GET / HTTP/1.1
14:54:45.839355 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49222: Flags [.], ack 78, win 511, options [nop,nop,TS val 1017760602 ecr 1017760602], length 0
14:54:45.839463 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 310: 127.0.0.1.80 > 127.0.0.1.49222: Flags [P.], seq 1:239, ack 78, win 512, options [nop,nop,TS val 1017760602 ecr 1017760602], length 238: HTTP: HTTP/1.1 200 OK
14:54:45.839473 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49222 > 127.0.0.1.80: Flags [.], ack 239, win 511, options [nop,nop,TS val 1017760602 ecr 1017760602], length 0
14:54:45.839489 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 684: 127.0.0.1.80 > 127.0.0.1.49222: Flags [P.], seq 239:851, ack 78, win 512, options [nop,nop,TS val 1017760602 ecr 1017760602], length 612: HTTP
14:54:45.839494 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49222 > 127.0.0.1.80: Flags [.], ack 851, win 507, options [nop,nop,TS val 1017760602 ecr 1017760602], length 0
14:54:46.131526 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49218 > 127.0.0.1.80: Flags [F.], seq 78, ack 851, win 512, options [nop,nop,TS val 1017760894 ecr 1017759844], length 0
14:54:46.131650 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49218: Flags [F.], seq 851, ack 79, win 512, options [nop,nop,TS val 1017760895 ecr 1017760894], length 0
14:54:46.131660 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49218 > 127.0.0.1.80: Flags [.], ack 852, win 512, options [nop,nop,TS val 1017760895 ecr 1017760895], length 0
14:54:46.511852 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.49236 > 127.0.0.1.80: Flags [S], seq 2546982527, win 65495, options [mss 65495,sackOK,TS val 1017761275 ecr 0,nop,wscale 7], length 0
14:54:46.511860 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 80: 127.0.0.1.80 > 127.0.0.1.49236: Flags [S.], seq 71841835, ack 2546982528, win 65483, options [mss 65495,sackOK,TS val 1017761275 ecr 1017761275,nop,wscale 7], length 0
14:54:46.511866 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49236 > 127.0.0.1.80: Flags [.], ack 1, win 512, options [nop,nop,TS val 1017761275 ecr 1017761275], length 0
14:54:46.566254 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 149: 127.0.0.1.49236 > 127.0.0.1.80: Flags [P.], seq 1:78, ack 1, win 512, options [nop,nop,TS val 1017761329 ecr 1017761275], length 77: HTTP: GET / HTTP/1.1
14:54:46.566277 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49236: Flags [.], ack 78, win 511, options [nop,nop,TS val 1017761329 ecr 1017761329], length 0
14:54:46.566384 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 310: 127.0.0.1.80 > 127.0.0.1.49236: Flags [P.], seq 1:239, ack 78, win 512, options [nop,nop,TS val 1017761329 ecr 1017761329], length 238: HTTP: HTTP/1.1 200 OK
14:54:46.566393 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49236 > 127.0.0.1.80: Flags [.], ack 239, win 511, options [nop,nop,TS val 1017761329 ecr 1017761329], length 0
14:54:46.566408 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 684: 127.0.0.1.80 > 127.0.0.1.49236: Flags [P.], seq 239:851, ack 78, win 512, options [nop,nop,TS val 1017761329 ecr 1017761329], length 612: HTTP
14:54:46.566411 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49236 > 127.0.0.1.80: Flags [.], ack 851, win 507, options [nop,nop,TS val 1017761329 ecr 1017761329], length 0
14:54:46.891135 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49222 > 127.0.0.1.80: Flags [F.], seq 78, ack 851, win 512, options [nop,nop,TS val 1017761654 ecr 1017760602], length 0
14:54:46.891220 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49222: Flags [F.], seq 851, ack 79, win 512, options [nop,nop,TS val 1017761654 ecr 1017761654], length 0
14:54:46.891229 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49222 > 127.0.0.1.80: Flags [.], ack 852, win 512, options [nop,nop,TS val 1017761654 ecr 1017761654], length 0
14:54:47.615723 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49236 > 127.0.0.1.80: Flags [F.], seq 78, ack 851, win 512, options [nop,nop,TS val 1017762379 ecr 1017761329], length 0
14:54:47.615805 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.80 > 127.0.0.1.49236: Flags [F.], seq 851, ack 79, win 512, options [nop,nop,TS val 1017762379 ecr 1017762379], length 0
14:54:47.615814 lo    In  ifindex 1 00:00:00:00:00:00 ethertype IPv4 (0x0800), length 72: 127.0.0.1.49236 > 127.0.0.1.80: Flags [.], ack 852, win 512, options [nop,nop,TS val 1017762379 ecr 1017762379], length 0
```
