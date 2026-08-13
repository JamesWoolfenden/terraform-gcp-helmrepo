# Makefile
ifdef OS
   BLAT = $(powershell  -noprofile rm .\.terraform\ -force -recurse)
   RM = $(powershell  -noprofile rm .\.terraform\ -force -recurse)
else
   ifeq ($(shell uname), Linux)
      RM  = rm .terraform/modules/ -fr
      BLAT= rm .terraform/ -fr
   endif
endif

.PHONY: all

all: init plan build

init:
	$(RM)
	tofu init -reconfigure -upgrade

plan:
	tofu plan --out tfplan.binary -refresh=true

planned: init
	tofu plan -out tf.plan
	tofu show -json tf.plan  > tf.json

p:
	tofu plan -refresh=true

apply: build

build:
	tofu apply -auto-approve

convert:
	tofu show -json tfplan.binary > tfplan.json

check: init
	tofu plan -detailed-exitcode

destroy: init
	tofu destroy -force

docs:
	terraform-docs md . > README.md

target:
	@read -p "Enter Module to target:" MODULE;
	tofu apply -target $$MODULE

purge:
	$(BLAT)
