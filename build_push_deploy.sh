# add docker-hub username to image in .yml
faas-cli build -f ./hello-python.yml
faas-cli deploy -f ./hello-python.yml
faas-cli push -f ./hello-python.yml