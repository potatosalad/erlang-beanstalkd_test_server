Erlang Beanstalkd Test Server
=============================

Launches [beanstalkd](http://kr.github.io/beanstalkd/) with OS assigned or specific port for use in testing environments.

```erlang
%% OS assigned port
{ok, Pid} = beanstalkd_test_server:start_listener(mybeanstalkd),
Pid = beanstalkd_test_server:get_pid(mybeanstalkd),
Port = beanstalkd_test_server:get_port(mybeanstalkd),
URI = beanstalkd_test_server:get_uri(mybeanstalkd), %% beanstalk://127.0.0.1:12345/
ok = beanstalkd_test_server:stop_listener(mybeanstalkd).

%% Specified port
{ok, Pid} = beanstalkd_test_server:start_listener(mybeanstalkd, 12345),
ok = beanstalkd_test_server:stop_listener(mybeanstalkd).
```
