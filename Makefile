.PHONY: view
view:
	neuron rib -ws localhost:3000

.PHONY: deploy
deploy:
	./deploy.sh

.PHONY: clean
clean:
	rm -rf .neuron/output
	rm -rf .neuron
	rm -rf .deploy
