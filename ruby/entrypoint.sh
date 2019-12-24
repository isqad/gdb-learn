#!/bin/bash

set -ex;

echo 0 > /proc/sys/kernel/yama/ptrace_scope

$@