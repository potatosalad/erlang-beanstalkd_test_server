#!/bin/sh
(cat && kill 0) | beanstalkd -V -p $1
