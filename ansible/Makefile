hosts:
	@echo 'error: make your hosts file'
	@exit 1

run: hosts
	ansible-playbook -i hosts site.yml
.PHONY: run

dry-run:
	ansible-playbook --check -i hosts site.yml
.PHONY: dry-run
