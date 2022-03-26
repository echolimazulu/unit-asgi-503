# unit-asgi-503
# DO NOT USE FOR PRODUCTION PURPOSES

This repository was created solely to demonstrate existing problems 
and THE CODE IN IT SHOULD NOT BE USED FOR PRODUCTION PURPOSES:
- https://github.com/nginx/unit/issues/641
- https://github.com/nginx/unit/issues/635

This example uses nginx/unit and python 3.9 module.

The container assembly code is taken from the **original repository**:
https://github.com/nginx/unit/blob/master/pkg/docker/Dockerfile.python3.9

**Changes:**
<br>
The assembly commands are supplemented with the necessary commands 
to demonstrate the problem and find its subsequent solution.

To run a project with Docker installed on the computer, 
run the following command in the working folder of the project:
`./test.sh`

Next, view the current `STDOUT` of the `falcon` container in your 
local Docker repository.

**Response to request:**
<br>
`<!DOCTYPE html><title>Error 503</title><p>Error 503.`

**Unit log to STDOUT**:
```
Traceback (most recent call last):

2022/03/25 20:26:12.264 [debug] 12#16 *15 writev(57, 2): 193

2022/03/25 20:26:12.264 [debug] 12#16 *15 event conn: 193 sent:193

2022/03/25 20:26:12.264 [debug] 12#16 *15 timer disable: 0

2022/03/25 20:26:12.264 [debug] 12#16 work queue: fast

2022/03/25 20:26:12.264 [debug] 12#16 *15 h1p conn sent

2022/03/25 20:26:12.264 [debug] 12#16 work queue: fast

2022/03/25 20:26:12.264 [debug] 12#16 mp 7FA3C0003970 release: 3

2022/03/25 20:26:12.264 [debug] 12#16 mp 7FA3C0003970 release: 2

2022/03/25 20:26:12.264 [debug] 12#16 work queue: fast

2022/03/25 20:26:12.264 [debug] 12#16 *15 router http request done (rpc_data 0)

2022/03/25 20:26:12.264 [debug] 12#16 *15 http request close handler

2022/03/25 20:26:12.264 [debug] 12#16 *15 h1p request close

2022/03/25 20:26:12.264 [debug] 12#16 *15 conf joint 55ACFBDBDE80 count: 2

2022/03/25 20:26:12.264 [debug] 12#16 *15 h1p keepalive

2022/03/25 20:26:12.264 [debug] 12#16 *15 h1p complete buffers

2022/03/25 20:26:12.264 [debug] 12#16 *15 buf completion: 7FA3C0002BA0 7FA3C0002BE8

2022/03/25 20:26:12.264 [debug] 12#16 mp 7FA3C0003970 release: 1

2022/03/25 20:26:12.264 [debug] 12#16 work queue: read

2022/03/25 20:26:12.264 [debug] 12#16 *15 conn read fd:57 rdy:0 cl:0 er:0 bl:0

2022/03/25 20:26:12.264 [debug] 12#16 *15 timer add: 762240791±50 180000:762240792

2022/03/25 20:26:12.264 [debug] 12#16 *15 timer previous: 762240792±50

2022/03/25 20:26:12.264 [debug] 12#16 timers changes: 1

File "/usr/local/lib/python3.9/asyncio/base_events.py", line 751, in call_soon

2022/03/25 20:26:12.264 [debug] 12#16 timer rbtree insert: 762060792±50

2022/03/25 20:26:12.264 [debug] 12#16 timer found minimum: 762060792±50:762060792

2022/03/25 20:26:12.264 [debug] 12#16 epoll 19 changes:1

2022/03/25 20:26:12.264 [debug] 12#16 epoll_ctl(19): fd:36 op:3 ev:80002001

2022/03/25 20:26:12.264 [debug] 12#16 epoll_wait(19) timeout:0

2022/03/25 20:26:12.264 [debug] 12#16 epoll_wait(19): 0

2022/03/25 20:26:12.264 [debug] 12#16 timer expire minimum: 762060742:762060792

2022/03/25 20:26:12.264 [debug] 12#16 timer expire delete: 762060792±50

2022/03/25 20:26:12.264 [debug] 12#16 work queue: fast

2022/03/25 20:26:12.264 [debug] 12#16 http request pool release

2022/03/25 20:26:12.264 [debug] 12#16 mp 7FA3C0003970 release: 0

2022/03/25 20:26:12.264 [debug] 12#16 free(7FA3C0003A30)

2022/03/25 20:26:12.264 [debug] 12#16 free(7FA3C0003C70)

2022/03/25 20:26:12.264 [debug] 12#16 free(7FA3C0003D80)

2022/03/25 20:26:12.264 [debug] 12#16 free(7FA3C0003970)

2022/03/25 20:26:12.264 [debug] 12#16 *15 timer found minimum: 762240791±50:762060792

2022/03/25 20:26:12.264 [debug] 12#16 epoll_wait(19) timeout:179999

    self._check_closed()
ValueError: invalid literal for int() with base 10: '///var/run/falcon.sock'
```
