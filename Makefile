
build: components img-leash.css
	@component build --dev

components: component.json
	@component install --dev

# Less
img-leash.css : img-leash.less
	lessc $< > $@


clean:
	rm -fr build components template.js

.PHONY: clean
