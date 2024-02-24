#!/usr/bin/env python
# NEOPHYTE LLM Tutorial by mlewand69@gmail.com
# https://platform.openai.com/docs/guides/text-generation/chat-completions-api
from openai import OpenAI

if __name__ == "__main__":
    model = "gemma:2b"
    question = "Why is the sky blue?"

    client = OpenAI(
        base_url = 'http://localhost:11434/v1',
        api_key='ollama', # required, but unused
    )

    print(120 * "=")
    print(f"Question {question}")
    print(f"   model {model}")
    print(f"   local Ollama server")
    print(f"         wait ...")
    
    response = client.chat.completions.create(
        model = model,
        temperature=1,
        messages = [
            {
                "role": "user",
                "content": question
            }
        ]
    )

    completion = response.choices[0].message.content
    with open("OLLAMA.md", "w", encoding="utf-8") as file:
        file.write("# NEOPHYTE TUTORIAL ENVIRONMENT STARTER (test)\n\n")
        file.write("Lets check if Ollama works fine ...\n\n")
        file.write(f"### Question:\n```\n\n{question}\n\n```\n\n")
        file.write(f"### Answer:\n```\n\n{completion}\n\n```\n")
    
    print(completion)
    
    print(120 * "=")
