PHP_MAKEFILE = Makefile-php
PYTHON_MAKEFILE = Makefile-python
COMMIT=develop

REPO_PREFIX=elifesciences/

# these targets will build the php versions for your current platform and store them in the local docker
# pushing isn't provided, as we want to push multi-arch manifests to the tags
build-php: build-php-7.1 build-php-7.2 build-php-7.3 build-php-7.4 build-php-8.0 build-php-8.1 build-php-8.2 build-php-8.3 build-php-8.4
build-php-7.1:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.1 build
build-php-7.2:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.2 build
build-php-7.3:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.3 build
build-php-7.4:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.4 build
build-php-8.0:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.0 build
build-php-8.1:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.1 build
build-php-8.2: build-php-8.2
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.2 build
build-php-8.3: build-php-8.3
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.3 build
build-php-8.4: build-php-8.4
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.4 build

# run the baseline tests that the images run
test-php: test-php-7.1 test-php-7.2 test-php-7.3 test-php-7.4 test-php-8.0 test-php-8.1 test-php-8.2 test-php-8.3 test-php-8.4
test-php-7.1:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.1 test
test-php-7.2:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.2 test
test-php-7.3:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.3 test
test-php-7.4:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.4 test
test-php-8.0:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.0 test
test-php-8.1:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.1 test
test-php-8.2:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.2 test
test-php-8.3:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.3 test
test-php-8.4:
	@$(MAKE) -f $(PHP_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.4 test

# build and test targets
build-and-test-php: build-and-test-php-7.1 build-and-test-php-7.2 build-and-test-php-7.3 build-and-test-php-7.4 build-and-test-php-8.0 build-and-test-php-8.1  build-and-test-php-8.2  build-and-test-php-8.3 build-and-test-php-8.4
build-and-test-php-7.1: build-php-7.1 test-php-7.1
build-and-test-php-7.2: build-php-7.2 test-php-7.2
build-and-test-php-7.3: build-php-7.3 test-php-7.3
build-and-test-php-7.4: build-php-7.4 test-php-7.4
build-and-test-php-8.0: build-php-8.0 test-php-8.0
build-and-test-php-8.1: build-php-8.1 test-php-8.1
build-and-test-php-8.2: build-php-8.2 test-php-8.2
build-and-test-php-8.3: build-php-8.3 test-php-8.3
build-and-test-php-8.4: build-php-8.4 test-php-8.4

# these targets utilise docker buildx to build multi-arch images,
# and push to docker hub (as local docker can't store multi-arch image manifest)
buildx-and-push-php: buildx-and-push-php-7.1 buildx-and-push-php-7.2 buildx-and-push-php-7.3 buildx-and-push-php-7.4 buildx-and-push-php-8.0 buildx-and-push-php-8.1 buildx-and-push-php-8.2 buildx-and-push-php-8.3 buildx-and-push-php-8.4
buildx-and-push-php-7.1:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.1 buildx
buildx-and-push-php-7.2:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.2 buildx
buildx-and-push-php-7.3:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.3 buildx
buildx-and-push-php-7.4:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=7.4 buildx
buildx-and-push-php-8.0:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.0 buildx
buildx-and-push-php-8.1:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.1 buildx
buildx-and-push-php-8.2:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.2 buildx
buildx-and-push-php-8.3:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.3 buildx
buildx-and-push-php-8.4:
	@$(MAKE) -f $(PHP_MAKEFILE) COMMIT=$(COMMIT) REPO_PREFIX=$(REPO_PREFIX) PHP_VERSION=8.4 buildx


build-python: build-python-3.8 build-python-3.9 build-python-3.10 build-python-3.11 build-python-3.12 build-python-3.13
build-python-3.8:
	@$(MAKE) -f $(PYTHON_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PYTHON_VERSION=3.8 build
build-python-3.9:
	@$(MAKE) -f $(PYTHON_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PYTHON_VERSION=3.9 build
build-python-3.10:
	@$(MAKE) -f $(PYTHON_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PYTHON_VERSION=3.10 build
build-python-3.11:
	@$(MAKE) -f $(PYTHON_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PYTHON_VERSION=3.11 build
build-python-3.12:
	@$(MAKE) -f $(PYTHON_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PYTHON_VERSION=3.12 build
build-python-3.13:
	@$(MAKE) -f $(PYTHON_MAKEFILE) REPO_PREFIX=$(REPO_PREFIX) PYTHON_VERSION=3.13 build
