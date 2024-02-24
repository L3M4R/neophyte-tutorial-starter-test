#!/usr/bin/env python
# NEOPHYTE LLM Tutorial by mlewand69@gmail.com
# https://platform.openai.com/docs/guides/text-generation/chat-completions-api
from openai import OpenAI

if __name__ == "__main__":
    client = OpenAI(
        base_url = 'http://localhost:11434/v1',
        api_key='ollama', # required, but unused
    )


    response = client.chat.completions.create(
        model = "gemma:2b",
        temperature=0.5,
        messages = [
            {
                "role": "user",
                "content": "Why is the sky blue?"
            }
        ]
    )

    print(response)
    # print(response.choices[0].message.content)
