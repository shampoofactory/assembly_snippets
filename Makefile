PROJECTS := basic_ops hello_world

BUILD_DIR := ./build

all:
	$(error please specify a project)

.PHONY: $(PROJECTS)
$(PROJECTS):
	$(MAKE) -C $@ BUILD_DIR=.$(BUILD_DIR)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
