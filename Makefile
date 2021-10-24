sass_vendors = _sass/vendors
sass_packages = egg-sass

.PHONY: all clean install

all: serve install clean

clean:
	rm -Rf $(sass_vendors)

install: clean
	bower install --config.directory=$(sass_vendors) $(sass_packages)
	# bower install --config.directory=$(js_vendors) $(js_packages)

serve:
	jekyll serve --config _config.yml --incremental --trace
