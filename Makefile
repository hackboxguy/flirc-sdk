SUBDIRS := cli

# Top-level phony targets.
all clean: $(SUBDIRS) FORCE

# Pass along targets specified at command-line (if any).
$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:
