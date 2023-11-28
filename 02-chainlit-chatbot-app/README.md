## Overview

This project contains the source code for a chatbot UI application built using the `Chainlit` python SDK.

The `Chainlit` SDK is a powerful tool for creating chatbot. This SDK also easily integrates with `LangChain` framework which is useful for creating application that use LLMs in backend. This project demonstrates how to use the framework to create a chatbot that interacts with the AzureChatOpenAI model.

## Getting Started

Dependencies:
- Python 3.7+
- Chainlit (available via PyPI)
- Azure OpenAI & chat model e.g. GPT-4


## Set up
- Create `.env` file from the sample and add required information
- (Optional) uncomment either `chainlit-basic.md` or `chainlit-rag.md` for customized welcome screen
- (Optional) create a python3 virtual environment
- Install packages from `requirements.txt`


## Usage
- Run simple chatbot app
```python
chainlit run app_basic.py
```
- Run chatbot with your data and conversation memory
```python
chainlit run app_rag.py
```