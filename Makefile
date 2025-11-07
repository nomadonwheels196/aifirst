.PHONY: lint fix
lint:
	~/.agents/bin/conventions_lint.sh $(shell git rev-parse --show-toplevel 2>/dev/null || pwd)
fix:
	~/.agents/bin/conventions_fix_refs.sh $(shell git rev-parse --show-toplevel 2>/dev/null || pwd)
