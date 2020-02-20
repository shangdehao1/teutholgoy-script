#!/bin/bash

process_id=$(ps -ef | grep teuthology-worker | grep -v grep | awk '{print $2}')

kill -9 $process_id

