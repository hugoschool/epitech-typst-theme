CACHE_PATH	?=	~/.cache/typst
PACKAGES_PATH	?=	$(CACHE_PATH)/packages
PACKAGE_PATH	:=	local/epitech-theme

# IMPORTANT: match with typst.toml & examples/package.typ
VERSION	:=	1.4.0

FULL_PATH	:=	$(PACKAGES_PATH)/$(PACKAGE_PATH)/$(VERSION)

all:
	mkdir -p $(FULL_PATH)
	cp -r assets $(FULL_PATH)
	cp -r src $(FULL_PATH)
	cp typst.toml $(FULL_PATH)
