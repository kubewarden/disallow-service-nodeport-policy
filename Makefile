wasm: 
	opa build -t wasm -e policy/main utility/policy.rego -o bundle.tar.gz policy.rego
	tar xvf bundle.tar.gz /policy.wasm
	rm bundle.tar.gz

test:
	opa test *.rego

e2e-tests:
	bats e2e.bats

clean:
	rm -f *.wasm *.tar.gz
