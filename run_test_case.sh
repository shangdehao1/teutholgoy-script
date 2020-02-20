#!/bin/bash
teuthology-schedule --name shangdehao_test_singe_job --num 1 --worker plana --priority 1000 -v --description "/home/teuthworker/my-test-case/cluster.yaml" -- /home/teuthworker/my-test-case/cluster.yaml
