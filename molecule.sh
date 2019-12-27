#!/usr/bin/env sh
COMMAND_FLAGS="--debug"

echo "******* Testing Fedora 31 *******"
CONTAINER_DISTRO=fedora CONTAINER_VERSION=31 molecule ${COMMAND_FLAGS} test

echo "******* Testing CentOS 7 *******"
CONTAINER_DISTRO=centos CONTAINER_VERSION=7 molecule ${COMMAND_FLAGS} test

echo "******* Testing CentOS 8 *******"
CONTAINER_DISTRO=centos CONTAINER_VERSION=8 molecule ${COMMAND_FLAGS} test

echo "******* Testing RHEL 7 *******"
CONTAINER_REGISTRY=registry.access.redhat.com/ubi7 CONTAINER_DISTRO=ubi CONTAINER_VERSION=latest molecule ${COMMAND_FLAGS} test

echo "******* Testing RHEL 8 *******"
CONTAINER_REGISTRY=registry.access.redhat.com/ubi8 CONTAINER_DISTRO=ubi CONTAINER_VERSION=latest molecule ${COMMAND_FLAGS} test
