#!/bin/bash
# NEOPHYTE LLM Tutorial by mlewand69@gmail.com

docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
docker exec -it ollama /bin/bash -c "ollama pull gemma:2b"
docker exec -it ollama /bin/bash -c "ollama list"

tools/post-create-test.py
