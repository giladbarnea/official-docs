Title: Quick Start - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/tutorial/quickstart

Markdown Content:
Quick Start - POML Documentation

===============
- [x] - [x] 

[Skip to content](https://microsoft.github.io/poml/stable/tutorial/quickstart/#quick-start)

[![Image 1: logo](https://microsoft.github.io/poml/stable/media/logo-64-white.png)](https://microsoft.github.io/poml/stable/ "POML Documentation")

 POML Documentation 

0.0.8
*   [latest](https://microsoft.github.io/poml/latest/)
*   [0.0.8](https://microsoft.github.io/poml/0.0.8/)

 Quick Start 

 Initializing search 

[microsoft/poml](https://github.com/microsoft/poml "Go to repository")

[![Image 2: logo](https://microsoft.github.io/poml/stable/media/logo-64-white.png)](https://microsoft.github.io/poml/stable/ "POML Documentation") POML Documentation  

[microsoft/poml](https://github.com/microsoft/poml "Go to repository")

*   [Getting Started](https://microsoft.github.io/poml/stable/)
*   - [x]  Tutorial   Tutorial  
    *   - [x]  Quick Start  [Quick Start](https://microsoft.github.io/poml/stable/tutorial/quickstart/) Table of contents  
        *   [YouTube Video](https://microsoft.github.io/poml/stable/tutorial/quickstart/#youtube-video)
        *   [Next Steps](https://microsoft.github.io/poml/stable/tutorial/quickstart/#next-steps)

    *   - [x]  Travel Expense Agent   Travel Expense Agent  
        *   [Part 1 - Build Workflow](https://microsoft.github.io/poml/stable/tutorial/expense_part1/)
        *   [Part 2 - Debug with VS Code Extension](https://microsoft.github.io/poml/stable/tutorial/expense_part2/)

*   - [x]  Language Spec   Language Spec  
    *   [Basic Syntax](https://microsoft.github.io/poml/stable/language/basic/)
    *   [Template Engine](https://microsoft.github.io/poml/stable/language/template/)
    *   [Meta](https://microsoft.github.io/poml/stable/language/meta/)
    *   - [x]  Fine-grained Control   Fine-grained Control  
        *   [White Space Control](https://microsoft.github.io/poml/stable/language/white-space/)
        *   [Token Control](https://microsoft.github.io/poml/stable/language/token/)

    *   - [x]  References   References  
        *   [Components](https://microsoft.github.io/poml/stable/language/components/)

*   - [x]  Visual Studio Code   Visual Studio Code  
    *   [Overview](https://microsoft.github.io/poml/stable/vscode/)
    *   [Features](https://microsoft.github.io/poml/stable/vscode/features/)
    *   [Configuration](https://microsoft.github.io/poml/stable/vscode/configuration/)

*   - [x]  Python   Python  
    *   [Overview](https://microsoft.github.io/poml/stable/python/)
    *   [Tracing](https://microsoft.github.io/poml/stable/python/trace/)
    *   - [x]  Integrations   Integrations  
        *   [OpenAI](https://microsoft.github.io/poml/stable/python/integration/openai/)
        *   [LangChain](https://microsoft.github.io/poml/stable/python/integration/langchain/)
        *   [MCP](https://microsoft.github.io/poml/stable/python/integration/mcp/)
        *   [MLflow](https://microsoft.github.io/poml/stable/python/integration/mlflow/)
        *   [AgentOps](https://microsoft.github.io/poml/stable/python/integration/agentops/)
        *   [Weave](https://microsoft.github.io/poml/stable/python/integration/weave/)

    *   - [x]  References   References  
        *   [Core](https://microsoft.github.io/poml/stable/python/reference/core/)
        *   [Integration](https://microsoft.github.io/poml/stable/python/reference/integration/)
        *   [Prompt](https://microsoft.github.io/poml/stable/python/reference/prompt/)

*   - [x]  TypeScript   TypeScript  
    *   [Overview](https://microsoft.github.io/poml/stable/typescript/)
    *   - [x]  References   References  
        *   [index](https://microsoft.github.io/poml/stable/typescript/reference/)
        *   [base](https://microsoft.github.io/poml/stable/typescript/reference/base/)
        *   [cli](https://microsoft.github.io/poml/stable/typescript/reference/cli/)
        *   [essentials](https://microsoft.github.io/poml/stable/typescript/reference/essentials/)
        *   [file](https://microsoft.github.io/poml/stable/typescript/reference/file/)
        *   [writer](https://microsoft.github.io/poml/stable/typescript/reference/writer/)
        *   [components](https://microsoft.github.io/poml/stable/typescript/reference/components/)

*   - [x]  Deep Dive   Deep Dive  
    *   [IR Specification](https://microsoft.github.io/poml/stable/deep-dive/ir/)
    *   - [x]  Proposals   Proposals  
        *   [Extended POML](https://microsoft.github.io/poml/stable/deep-dive/proposals/poml_extended/)

 Table of contents  
*   [YouTube Video](https://microsoft.github.io/poml/stable/tutorial/quickstart/#youtube-video)
*   [Next Steps](https://microsoft.github.io/poml/stable/tutorial/quickstart/#next-steps)

Quick Start[¶](https://microsoft.github.io/poml/stable/tutorial/quickstart/#quick-start "Permanent link")
=========================================================================================================

_Estimated time to read: 1 minute_

Here's a very simple POML example. Please put it in a file named `example.poml`. Make sure it resides in the same directory as the `photosynthesis_diagram.png` image file.

```
<poml>
  <role>You are a patient teacher explaining concepts to a 10-year-old.</role>
  <task>Explain the concept of photosynthesis using the provided image as a reference.</task>

  <img src="photosynthesis_diagram.png" alt="Diagram of photosynthesis" />

  <output-format>
    Keep the explanation simple, engaging, and under 100 words.
    Start with "Hey there, future scientist!".
  </output-format>
</poml>
```

This example defines a role and task for the LLM, includes an image for context, and specifies the desired output format. With the POML toolkit, the prompt can be easily rendered with a flexible format, and tested with a vision LLM.

YouTube Video[¶](https://microsoft.github.io/poml/stable/tutorial/quickstart/#youtube-video "Permanent link")
-------------------------------------------------------------------------------------------------------------

We also recommend watching our [YouTube video](https://youtu.be/b9WDcFsKixo) for a quick introduction to POML and how to get started.

Next Steps[¶](https://microsoft.github.io/poml/stable/tutorial/quickstart/#next-steps "Permanent link")
-------------------------------------------------------------------------------------------------------

*   [Learn POML Syntax](https://microsoft.github.io/poml/stable/language/basic/): Understand the structure and syntax of POML files.
*   [Explore Components](https://microsoft.github.io/poml/stable/language/components/): Discover the available components and how to use them.
*   [Install VS Code Extension](https://microsoft.github.io/poml/stable/vscode/): Set up the POML extension for Visual Studio Code to enhance your development experience.
*   [Configure Python SDK](https://microsoft.github.io/poml/stable/python/): Learn how to configure the POML Python SDK for your projects and integrate into your workflow.

2025-08-23 2025-08-11[Yuge Zhang](mailto:yuge.zhang@microsoft.com)

 Made with [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

