.PHONY: view
view:
	neuron rib -ws localhost:3000

.PHONY: deploy
deploy:
	./deploy.sh
