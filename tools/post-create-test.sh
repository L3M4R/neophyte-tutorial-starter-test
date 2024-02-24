#!/bin/bash
# NEOPHYTE LLM Tutorial by mlewand69@gmail.com

sleep 12

docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

sleep 3

docker exec -it ollama /bin/bash -c "ollama pull gemma:2b"
docker exec -it ollama /bin/bash -c "ollama list"

sleep 3

tools/post-create-test.py

sleep 3

docker stop ollama
