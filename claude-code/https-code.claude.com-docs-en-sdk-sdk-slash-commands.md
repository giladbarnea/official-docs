Title: Slash Commands in the SDK - Claude Docs

URL Source: http://code.claude.com/docs/en/sdk/sdk-slash-commands

Markdown Content:
Slash Commands in the SDK - Claude Docs

===============

Agent Skills are now available! [Learn more about extending Claude's capabilities with Agent Skills](http://code.claude.com/en/docs/agents-and-tools/agent-skills/overview).

[Claude Docs home page![Image 1: light logo](https://mintcdn.com/anthropic-claude-docs/DcI2Ybid7ZEnFaf0/logo/light.svg?fit=max&auto=format&n=DcI2Ybid7ZEnFaf0&q=85&s=c877c45432515ee69194cb19e9f983a2)![Image 2: dark logo](https://mintcdn.com/anthropic-claude-docs/DcI2Ybid7ZEnFaf0/logo/dark.svg?fit=max&auto=format&n=DcI2Ybid7ZEnFaf0&q=85&s=f5bb877be0cb3cba86cf6d7c88185216)](http://code.claude.com/)

![Image 3: US](https://d3gk2c5xim1je2.cloudfront.net/flags/US.svg)

English

Search...

⌘K

*   [Console](https://console.anthropic.com/login)
*   [Support](https://support.claude.com/)
*   [Discord](https://www.anthropic.com/discord)
*   [Sign up](https://console.anthropic.com/login)
*   [Sign up](https://console.anthropic.com/login)

Search...

Navigation

Guides

Slash Commands in the SDK

[Home](http://code.claude.com/en/home)[Developer Guide](http://code.claude.com/en/docs/intro)[API Reference](http://code.claude.com/en/api/overview)[Model Context Protocol (MCP)](http://code.claude.com/en/docs/mcp)[Resources](http://code.claude.com/en/resources/overview)[Release Notes](http://code.claude.com/en/release-notes/overview)

##### First steps

*   [Intro to Claude](http://code.claude.com/en/docs/intro)
*   [Quickstart](http://code.claude.com/en/docs/get-started)

##### Models & pricing

*   [Models overview](http://code.claude.com/en/docs/about-claude/models/overview)
*   [Choosing a model](http://code.claude.com/en/docs/about-claude/models/choosing-a-model)
*   [What's new in Claude 4.5](http://code.claude.com/en/docs/about-claude/models/whats-new-claude-4-5)
*   [Migrating to Claude 4.5](http://code.claude.com/en/docs/about-claude/models/migrating-to-claude-4)
*   [Model deprecations](http://code.claude.com/en/docs/about-claude/model-deprecations)
*   [Pricing](http://code.claude.com/en/docs/about-claude/pricing)

##### Build with Claude

*   [Features overview](http://code.claude.com/en/docs/build-with-claude/overview)
*   [Using the Messages API](http://code.claude.com/en/docs/build-with-claude/working-with-messages)
*   [Context windows](http://code.claude.com/en/docs/build-with-claude/context-windows)
*   [Prompting best practices](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/claude-4-best-practices)

##### Capabilities

*   [Prompt caching](http://code.claude.com/en/docs/build-with-claude/prompt-caching)
*   [Context editing](http://code.claude.com/en/docs/build-with-claude/context-editing)
*   [Extended thinking](http://code.claude.com/en/docs/build-with-claude/extended-thinking)
*   [Streaming Messages](http://code.claude.com/en/docs/build-with-claude/streaming)
*   [Batch processing](http://code.claude.com/en/docs/build-with-claude/batch-processing)
*   [Citations](http://code.claude.com/en/docs/build-with-claude/citations)
*   [Multilingual support](http://code.claude.com/en/docs/build-with-claude/multilingual-support)
*   [Token counting](http://code.claude.com/en/docs/build-with-claude/token-counting)
*   [Embeddings](http://code.claude.com/en/docs/build-with-claude/embeddings)
*   [Vision](http://code.claude.com/en/docs/build-with-claude/vision)
*   [PDF support](http://code.claude.com/en/docs/build-with-claude/pdf-support)
*   [Files API](http://code.claude.com/en/docs/build-with-claude/files)
*   [Search results](http://code.claude.com/en/docs/build-with-claude/search-results)
*   [Google Sheets add-on](http://code.claude.com/en/docs/agents-and-tools/claude-for-sheets)

##### Tools

*   [Overview](http://code.claude.com/en/docs/agents-and-tools/tool-use/overview)
*   [How to implement tool use](http://code.claude.com/en/docs/agents-and-tools/tool-use/implement-tool-use)
*   [Token-efficient tool use](http://code.claude.com/en/docs/agents-and-tools/tool-use/token-efficient-tool-use)
*   [Fine-grained tool streaming](http://code.claude.com/en/docs/agents-and-tools/tool-use/fine-grained-tool-streaming)
*   [Bash tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/bash-tool)
*   [Code execution tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/code-execution-tool)
*   [Computer use tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/computer-use-tool)
*   [Text editor tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/text-editor-tool)
*   [Web fetch tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/web-fetch-tool)
*   [Web search tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/web-search-tool)
*   [Memory tool](http://code.claude.com/en/docs/agents-and-tools/tool-use/memory-tool)

##### Agent Skills

*   [Overview](http://code.claude.com/en/docs/agents-and-tools/agent-skills/overview)
*   [Quickstart](http://code.claude.com/en/docs/agents-and-tools/agent-skills/quickstart)
*   [Best practices](http://code.claude.com/en/docs/agents-and-tools/agent-skills/best-practices)
*   [Using Skills with the API](http://code.claude.com/en/api/skills-guide)

##### Agent SDK

*   [Overview](http://code.claude.com/en/api/agent-sdk/overview)
*   [TypeScript SDK](http://code.claude.com/en/api/agent-sdk/typescript)
*   [Python SDK](http://code.claude.com/en/api/agent-sdk/python)
*   Guides  
    *   [Streaming Input](http://code.claude.com/en/api/agent-sdk/streaming-vs-single-mode)
    *   [Handling Permissions](http://code.claude.com/en/api/agent-sdk/permissions)
    *   [Session Management](http://code.claude.com/en/api/agent-sdk/sessions)
    *   [Hosting the Agent SDK](http://code.claude.com/en/api/agent-sdk/hosting)
    *   [Modifying system prompts](http://code.claude.com/en/api/agent-sdk/modifying-system-prompts)
    *   [MCP in the SDK](http://code.claude.com/en/api/agent-sdk/mcp)
    *   [Custom Tools](http://code.claude.com/en/api/agent-sdk/custom-tools)
    *   [Subagents in the SDK](http://code.claude.com/en/api/agent-sdk/subagents)
    *   [Slash Commands in the SDK](http://code.claude.com/en/api/agent-sdk/slash-commands)
    *   [Agent Skills in the SDK](http://code.claude.com/en/api/agent-sdk/skills)
    *   [Tracking Costs and Usage](http://code.claude.com/en/api/agent-sdk/cost-tracking)
    *   [Todo Lists](http://code.claude.com/en/api/agent-sdk/todo-tracking)
    *   [Plugins in the SDK](http://code.claude.com/en/api/agent-sdk/plugins)

##### MCP in the API

*   [MCP connector](http://code.claude.com/en/docs/agents-and-tools/mcp-connector)
*   [Remote MCP servers](http://code.claude.com/en/docs/agents-and-tools/remote-mcp-servers)

##### Claude on 3rd-party platforms

*   [Amazon Bedrock](http://code.claude.com/en/api/claude-on-amazon-bedrock)
*   [Vertex AI](http://code.claude.com/en/api/claude-on-vertex-ai)

##### Prompt engineering

*   [Overview](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/overview)
*   [Prompt generator](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/prompt-generator)
*   [Use prompt templates](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/prompt-templates-and-variables)
*   [Prompt improver](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/prompt-improver)
*   [Be clear and direct](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/be-clear-and-direct)
*   [Use examples (multishot prompting)](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/multishot-prompting)
*   [Let Claude think (CoT)](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/chain-of-thought)
*   [Use XML tags](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/use-xml-tags)
*   [Give Claude a role (system prompts)](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/system-prompts)
*   [Prefill Claude's response](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/prefill-claudes-response)
*   [Chain complex prompts](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/chain-prompts)
*   [Long context tips](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/long-context-tips)
*   [Extended thinking tips](http://code.claude.com/en/docs/build-with-claude/prompt-engineering/extended-thinking-tips)

##### Test & evaluate

*   [Define success criteria](http://code.claude.com/en/docs/test-and-evaluate/define-success)
*   [Develop test cases](http://code.claude.com/en/docs/test-and-evaluate/develop-tests)
*   [Using the Evaluation Tool](http://code.claude.com/en/docs/test-and-evaluate/eval-tool)
*   [Reducing latency](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/reduce-latency)

##### Strengthen guardrails

*   [Reduce hallucinations](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/reduce-hallucinations)
*   [Increase output consistency](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/increase-consistency)
*   [Mitigate jailbreaks](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/mitigate-jailbreaks)
*   [Streaming refusals](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/handle-streaming-refusals)
*   [Reduce prompt leak](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/reduce-prompt-leak)
*   [Keep Claude in character](http://code.claude.com/en/docs/test-and-evaluate/strengthen-guardrails/keep-claude-in-character)

##### Administration and monitoring

*   [Admin API overview](http://code.claude.com/en/api/administration-api)
*   [Usage and Cost API](http://code.claude.com/en/api/usage-cost-api)
*   [Claude Code Analytics API](http://code.claude.com/en/api/claude-code-analytics-api)

On this page

*   [Discovering Available Slash Commands](http://code.claude.com/docs/en/sdk/sdk-slash-commands#discovering-available-slash-commands)
*   [Sending Slash Commands](http://code.claude.com/docs/en/sdk/sdk-slash-commands#sending-slash-commands)
*   [Common Slash Commands](http://code.claude.com/docs/en/sdk/sdk-slash-commands#common-slash-commands)
*   [/compact - Compact Conversation History](http://code.claude.com/docs/en/sdk/sdk-slash-commands#%2Fcompact-compact-conversation-history)
*   [/clear - Clear Conversation](http://code.claude.com/docs/en/sdk/sdk-slash-commands#%2Fclear-clear-conversation)
*   [Creating Custom Slash Commands](http://code.claude.com/docs/en/sdk/sdk-slash-commands#creating-custom-slash-commands)
*   [File Locations](http://code.claude.com/docs/en/sdk/sdk-slash-commands#file-locations)
*   [File Format](http://code.claude.com/docs/en/sdk/sdk-slash-commands#file-format)
*   [Basic Example](http://code.claude.com/docs/en/sdk/sdk-slash-commands#basic-example)
*   [With Frontmatter](http://code.claude.com/docs/en/sdk/sdk-slash-commands#with-frontmatter)
*   [Using Custom Commands in the SDK](http://code.claude.com/docs/en/sdk/sdk-slash-commands#using-custom-commands-in-the-sdk)
*   [Advanced Features](http://code.claude.com/docs/en/sdk/sdk-slash-commands#advanced-features)
*   [Arguments and Placeholders](http://code.claude.com/docs/en/sdk/sdk-slash-commands#arguments-and-placeholders)
*   [Bash Command Execution](http://code.claude.com/docs/en/sdk/sdk-slash-commands#bash-command-execution)
*   [File References](http://code.claude.com/docs/en/sdk/sdk-slash-commands#file-references)
*   [Organization with Namespacing](http://code.claude.com/docs/en/sdk/sdk-slash-commands#organization-with-namespacing)
*   [Practical Examples](http://code.claude.com/docs/en/sdk/sdk-slash-commands#practical-examples)
*   [Code Review Command](http://code.claude.com/docs/en/sdk/sdk-slash-commands#code-review-command)
*   [Test Runner Command](http://code.claude.com/docs/en/sdk/sdk-slash-commands#test-runner-command)
*   [See Also](http://code.claude.com/docs/en/sdk/sdk-slash-commands#see-also)

Guides

Slash Commands in the SDK
=========================

Copy page

Learn how to use slash commands to control Claude Code sessions through the SDK

Copy page

Slash commands provide a way to control Claude Code sessions with special commands that start with `/`. These commands can be sent through the SDK to perform actions like clearing conversation history, compacting messages, or getting help.
[​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#discovering-available-slash-commands)

Discovering Available Slash Commands
-------------------------------------------------------------------------------------------------------------------------------------

The Claude Agent SDK provides information about available slash commands in the system initialization message. Access this information when your session starts:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

for await (const message of query({
  prompt: "Hello Claude",
  options: { maxTurns: 1 }
})) {
  if (message.type === "system" && message.subtype === "init") {
    console.log("Available slash commands:", message.slash_commands);
    // Example output: ["/compact", "/clear", "/help"]
  }
}
```

[​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#sending-slash-commands)

Sending Slash Commands
---------------------------------------------------------------------------------------------------------

Send slash commands by including them in your prompt string, just like regular text:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

// Send a slash command
for await (const message of query({
  prompt: "/compact",
  options: { maxTurns: 1 }
})) {
  if (message.type === "result") {
    console.log("Command executed:", message.result);
  }
}
```

[​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#common-slash-commands)

Common Slash Commands
-------------------------------------------------------------------------------------------------------

### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#%2Fcompact-compact-conversation-history)

`/compact` - Compact Conversation History

The `/compact` command reduces the size of your conversation history by summarizing older messages while preserving important context:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

for await (const message of query({
  prompt: "/compact",
  options: { maxTurns: 1 }
})) {
  if (message.type === "system" && message.subtype === "compact_boundary") {
    console.log("Compaction completed");
    console.log("Pre-compaction tokens:", message.compact_metadata.pre_tokens);
    console.log("Trigger:", message.compact_metadata.trigger);
  }
}
```

### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#%2Fclear-clear-conversation)

`/clear` - Clear Conversation

The `/clear` command starts a fresh conversation by clearing all previous history:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

// Clear conversation and start fresh
for await (const message of query({
  prompt: "/clear",
  options: { maxTurns: 1 }
})) {
  if (message.type === "system" && message.subtype === "init") {
    console.log("Conversation cleared, new session started");
    console.log("Session ID:", message.session_id);
  }
}
```

[​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#creating-custom-slash-commands)

Creating Custom Slash Commands
-------------------------------------------------------------------------------------------------------------------------

In addition to using built-in slash commands, you can create your own custom commands that are available through the SDK. Custom commands are defined as markdown files in specific directories, similar to how subagents are configured.
### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#file-locations)

File Locations

Custom slash commands are stored in designated directories based on their scope:
*   **Project commands**: `.claude/commands/` - Available only in the current project
*   **Personal commands**: `~/.claude/commands/` - Available across all your projects

### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#file-format)

File Format

Each custom command is a markdown file where:
*   The filename (without `.md` extension) becomes the command name
*   The file content defines what the command does
*   Optional YAML frontmatter provides configuration

#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#basic-example)

Basic Example

Create `.claude/commands/refactor.md`:

Copy

```
Refactor the selected code to improve readability and maintainability.
Focus on clean code principles and best practices.
```

This creates the `/refactor` command that you can use through the SDK.
#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#with-frontmatter)

With Frontmatter

Create `.claude/commands/security-check.md`:

Copy

```
---
allowed-tools: Read, Grep, Glob
description: Run security vulnerability scan
model: claude-sonnet-4-5-20250929
---

Analyze the codebase for security vulnerabilities including:
- SQL injection risks
- XSS vulnerabilities
- Exposed credentials
- Insecure configurations
```

### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#using-custom-commands-in-the-sdk)

Using Custom Commands in the SDK

Once defined in the filesystem, custom commands are automatically available through the SDK:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

// Use a custom command
for await (const message of query({
  prompt: "/refactor src/auth/login.ts",
  options: { maxTurns: 3 }
})) {
  if (message.type === "assistant") {
    console.log("Refactoring suggestions:", message.message);
  }
}

// Custom commands appear in the slash_commands list
for await (const message of query({
  prompt: "Hello",
  options: { maxTurns: 1 }
})) {
  if (message.type === "system" && message.subtype === "init") {
    // Will include both built-in and custom commands
    console.log("Available commands:", message.slash_commands);
    // Example: ["/compact", "/clear", "/help", "/refactor", "/security-check"]
  }
}
```

### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#advanced-features)

Advanced Features

#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#arguments-and-placeholders)

Arguments and Placeholders

Custom commands support dynamic arguments using placeholders:Create `.claude/commands/fix-issue.md`:

Copy

```
---
argument-hint: [issue-number] [priority]
description: Fix a GitHub issue
---

Fix issue #$1 with priority $2.
Check the issue description and implement the necessary changes.
```

Use in SDK:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

// Pass arguments to custom command
for await (const message of query({
  prompt: "/fix-issue 123 high",
  options: { maxTurns: 5 }
})) {
  // Command will process with $1="123" and $2="high"
  if (message.type === "result") {
    console.log("Issue fixed:", message.result);
  }
}
```

#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#bash-command-execution)

Bash Command Execution

Custom commands can execute bash commands and include their output:Create `.claude/commands/git-commit.md`:

Copy

```
---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*)
description: Create a git commit
---

## Context

- Current status: !`git status`
- Current diff: !`git diff HEAD`

## Task

Create a git commit with appropriate message based on the changes.
```

#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#file-references)

File References

Include file contents using the `@` prefix:Create `.claude/commands/review-config.md`:

Copy

```
---
description: Review configuration files
---

Review the following configuration files for issues:
- Package config: @package.json
- TypeScript config: @tsconfig.json
- Environment config: @.env

Check for security issues, outdated dependencies, and misconfigurations.
```

### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#organization-with-namespacing)

Organization with Namespacing

Organize commands in subdirectories for better structure:

Copy

```
.claude/commands/
├── frontend/
│   ├── component.md      # Creates /component (project:frontend)
│   └── style-check.md     # Creates /style-check (project:frontend)
├── backend/
│   ├── api-test.md        # Creates /api-test (project:backend)
│   └── db-migrate.md      # Creates /db-migrate (project:backend)
└── review.md              # Creates /review (project)
```

The subdirectory appears in the command description but doesn’t affect the command name itself.
### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#practical-examples)

Practical Examples

#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#code-review-command)

Code Review Command

Create `.claude/commands/code-review.md`:

Copy

```
---
allowed-tools: Read, Grep, Glob, Bash(git diff:*)
description: Comprehensive code review
---

## Changed Files
!`git diff --name-only HEAD~1`

## Detailed Changes
!`git diff HEAD~1`

## Review Checklist

Review the above changes for:
1. Code quality and readability
2. Security vulnerabilities
3. Performance implications
4. Test coverage
5. Documentation completeness

Provide specific, actionable feedback organized by priority.
```

#### [​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#test-runner-command)

Test Runner Command

Create `.claude/commands/test.md`:

Copy

```
---
allowed-tools: Bash, Read, Edit
argument-hint: [test-pattern]
description: Run tests with optional pattern
---

Run tests matching pattern: $ARGUMENTS

1. Detect the test framework (Jest, pytest, etc.)
2. Run tests with the provided pattern
3. If tests fail, analyze and fix them
4. Re-run to verify fixes
```

Use these commands through the SDK:

TypeScript

Python

Copy

```
import { query } from "@anthropic-ai/claude-agent-sdk";

// Run code review
for await (const message of query({
  prompt: "/code-review",
  options: { maxTurns: 3 }
})) {
  // Process review feedback
}

// Run specific tests
for await (const message of query({
  prompt: "/test auth",
  options: { maxTurns: 5 }
})) {
  // Handle test results
}
```

[​](http://code.claude.com/docs/en/sdk/sdk-slash-commands#see-also)

See Also
-----------------------------------------------------------------------------

*   [Slash Commands](https://code.claude.com/docs/slash-commands) - Complete slash command documentation
*   [Subagents in the SDK](http://code.claude.com/en/api/agent-sdk/subagents) - Similar filesystem-based configuration for subagents
*   [TypeScript SDK reference](https://code.claude.com/docs/typescript) - Complete API documentation
*   [SDK overview](http://code.claude.com/en/api/agent-sdk/overview) - General SDK concepts
*   [CLI reference](https://code.claude.com/docs/cli-reference) - Command-line interface

Was this page helpful?

Yes No

[Subagents in the SDK](http://code.claude.com/en/api/agent-sdk/subagents)[Agent Skills in the SDK](http://code.claude.com/en/api/agent-sdk/skills)

Assistant

Responses are generated using AI and may contain mistakes.

[Claude Docs home page![Image 4: light logo](https://mintcdn.com/anthropic-claude-docs/DcI2Ybid7ZEnFaf0/logo/light.svg?fit=max&auto=format&n=DcI2Ybid7ZEnFaf0&q=85&s=c877c45432515ee69194cb19e9f983a2)![Image 5: dark logo](https://mintcdn.com/anthropic-claude-docs/DcI2Ybid7ZEnFaf0/logo/dark.svg?fit=max&auto=format&n=DcI2Ybid7ZEnFaf0&q=85&s=f5bb877be0cb3cba86cf6d7c88185216)](http://code.claude.com/)

[x](https://x.com/AnthropicAI)[linkedin](https://www.linkedin.com/company/anthropicresearch)

Company

[Anthropic](https://www.anthropic.com/company)[Careers](https://www.anthropic.com/careers)[Economic Futures](https://www.anthropic.com/economic-futures)[Research](https://www.anthropic.com/research)[News](https://www.anthropic.com/news)[Trust center](https://trust.anthropic.com/)[Transparency](https://www.anthropic.com/transparency)

Help and security

[Availability](https://www.anthropic.com/supported-countries)[Status](https://status.anthropic.com/)[Support center](https://support.claude.com/)

Learn

[Courses](https://www.anthropic.com/learn)[MCP connectors](https://claude.com/partners/mcp)[Customer stories](https://www.claude.com/customers)[Engineering blog](https://www.anthropic.com/engineering)[Events](https://www.anthropic.com/events)[Powered by Claude](https://claude.com/partners/powered-by-claude)[Service partners](https://claude.com/partners/services)[Startups program](https://claude.com/programs/startups)

Terms and policies

[Privacy policy](https://www.anthropic.com/legal/privacy)[Disclosure policy](https://www.anthropic.com/responsible-disclosure-policy)[Usage policy](https://www.anthropic.com/legal/aup)[Commercial terms](https://www.anthropic.com/legal/commercial-terms)[Consumer terms](https://www.anthropic.com/legal/consumer-terms)

