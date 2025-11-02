# POML Documentation
_Estimated time to read: 2 minutes_

Welcome to the Prompt Orchestration Markup Language (POML) documentation.

**POML (Prompt Orchestration Markup Language)** is a novel markup language designed to bring structure, maintainability, and versatility to advanced prompt engineering for Large Language Models (LLMs). It addresses common challenges in prompt development, such as lack of structure, complex data integration, format sensitivity, and inadequate tooling. POML provides a systematic way to organize prompt components, integrate diverse data types seamlessly, and manage presentation variations, empowering developers to create more sophisticated and reliable LLM applications.

Key Features[¶](https://microsoft.github.io/poml/stable/#key-features "Permanent link")
---------------------------------------------------------------------------------------

*   **Structured Prompting Markup**: Employs an HTML-like syntax with semantic components such as `<role>`, `<task>`, and `<example>` to encourage modular design, enhancing prompt readability, reusability, and maintainability.
*   **Comprehensive Data Handling**: Incorporates specialized data components (e.g., `<document>`, `<table>`, `<img>`) that seamlessly embed or reference external data sources like text files, spreadsheets, and images, with customizable formatting options.
*   **Decoupled Presentation Styling**: Features a CSS-like styling system that separates content from presentation. This allows developers to modify styling (e.g., verbosity, syntax format) via `<stylesheet>` definitions or inline attributes without altering core prompt logic, mitigating LLM format sensitivity.
*   **Integrated Templating Engine**: Includes a built-in templating engine with support for variables (`{{ }}`), loops (`for`), conditionals (`if`), and variable definitions (`<let>`) for dynamically generating complex, data-driven prompts.
*   **Rich Development Toolkit**:
*   **IDE Extension (Visual Studio Code)**: Provides essential development aids like syntax highlighting, context-aware auto-completion, hover documentation, real-time previews, inline diagnostics for error checking, and integrated interactive testing.
*   **Software Development Kits (SDKs)**: Offers SDKs for Node.js (JavaScript/TypeScript) and Python for seamless integration into various application workflows and popular LLM frameworks.

Sitemap[¶](https://microsoft.github.io/poml/stable/#sitemap "Permanent link")
-----------------------------------------------------------------------------

*   [Language Basics](https://microsoft.github.io/poml/stable/tutorial/quickstart/): Get started with POML syntax and structure.
*   [VS Code Extension](https://microsoft.github.io/poml/stable/vscode/): Enhance your development experience with the POML Visual Studio Code extension.
*   [TypeScript SDK](https://microsoft.github.io/poml/stable/typescript/): Use the POML TypeScript API for building applications.
*   [Python SDK](https://microsoft.github.io/poml/stable/python/): Integrate POML into your Python projects.

Research Papers[¶](https://microsoft.github.io/poml/stable/#research-papers "Permanent link")
---------------------------------------------------------------------------------------------

*   **Prompt Orchestration Markup Language** — Introduces POML with component-based markup, specialized data tags, CSS-like styling, templating, and developer tooling. [arXiv:2508.13948](https://arxiv.org/abs/2508.13948)
*   **Beyond Prompt Content: Enhancing LLM Performance via Content-Format Integrated Prompt Optimization** — Presents an iterative method that jointly optimizes prompt content and formatting, yielding measurable gains across tasks. [arXiv:2502.04295](https://arxiv.org/abs/2502.04295)

*   [mini-poml-rs](https://github.com/linmx0130/mini-poml-rs) – Experimental Rust-based POML renderer for environments without JavaScript or Python interpreters.
*   [poml-ruby](https://github.com/GhennadiiMir/poml) – Ruby gem implementation of POML for Ruby applications.

Join our Discord community: Connect with the team and other users on our [Discord server](https://discord.gg/FhMCqWzAn6).