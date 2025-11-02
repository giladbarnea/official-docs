# Quick Start
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
