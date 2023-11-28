import os
from langchain.prompts import ChatPromptTemplate
from langchain.chains import LLMChain
from langchain.chat_models import AzureChatOpenAI
import chainlit as cl
from dotenv import load_dotenv

# Load environment variables
load_dotenv('.env')

prompt_template = ChatPromptTemplate.from_messages(
    [
    ("system", 
    """
    You are a friendly assistant that answers user's question about astronomy.
    If the user's question is not about these topics, 
    respond with "Uh-oh! I do not have the information to answer your question. Ask me about Space, Planets and Stars!".
    """
    ),
    ("user", "{question}\n"),
    ]
)

@cl.on_chat_start
def main():
    # Instantiate required classes for the user session
    llm_chat = AzureChatOpenAI(
            deployment_name=os.getenv("OPENAI_CHAT_MODEL"),
            temperature=0.0,
            max_tokens=100
    )
    llm_chain = LLMChain(prompt=prompt_template, llm=llm_chat, verbose=True)

    # Store the chain in the user session for reusability
    cl.user_session.set("llm_chain", llm_chain)


@cl.on_message
async def main(message: str):
    # Retrieve the chain from the user session
    llm_chain = cl.user_session.get("llm_chain")  # type: LLMChain

    # Call the chain asynchronously
    res = await llm_chain.acall(message, callbacks=[cl.AsyncLangchainCallbackHandler()])

    # "res" is a Dict. For this chain, we get the response by reading the "text" key.
    # This varies from chain to chain, you should check which key to read.
    await cl.Message(content=res["text"]).send()
