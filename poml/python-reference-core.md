Title: Core - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/python/reference/core

Markdown Content:
Core - POML Documentation

===============
- [x] - [x] 

[Skip to content](https://microsoft.github.io/poml/stable/python/reference/core/#python-poml-core-apis)

[![Image 1: logo](https://microsoft.github.io/poml/stable/media/logo-64-white.png)](https://microsoft.github.io/poml/stable/ "POML Documentation")

 POML Documentation 

 Core 

 Initializing search 

[microsoft/poml](https://github.com/microsoft/poml "Go to repository")

[![Image 2: logo](https://microsoft.github.io/poml/stable/media/logo-64-white.png)](https://microsoft.github.io/poml/stable/ "POML Documentation") POML Documentation  

[microsoft/poml](https://github.com/microsoft/poml "Go to repository")

*   [Getting Started](https://microsoft.github.io/poml/stable/)
*   - [x]  Tutorial   Tutorial  
    *   [Quick Start](https://microsoft.github.io/poml/stable/tutorial/quickstart/)
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
        *   - [x]  Core  [Core](https://microsoft.github.io/poml/stable/python/reference/core/) Table of contents  
            *   [poml](https://microsoft.github.io/poml/stable/python/reference/core/#poml)
                *   [clear_trace](https://microsoft.github.io/poml/stable/python/reference/core/#poml.clear_trace)
                *   [get_trace](https://microsoft.github.io/poml/stable/python/reference/core/#poml.get_trace)
                *   [poml](https://microsoft.github.io/poml/stable/python/reference/core/#poml.poml)
                *   [set_trace](https://microsoft.github.io/poml/stable/python/reference/core/#poml.set_trace)
                *   [trace_artifact](https://microsoft.github.io/poml/stable/python/reference/core/#poml.trace_artifact)

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
*   [poml](https://microsoft.github.io/poml/stable/python/reference/core/#poml)
    *   [clear_trace](https://microsoft.github.io/poml/stable/python/reference/core/#poml.clear_trace)
    *   [get_trace](https://microsoft.github.io/poml/stable/python/reference/core/#poml.get_trace)
    *   [poml](https://microsoft.github.io/poml/stable/python/reference/core/#poml.poml)
    *   [set_trace](https://microsoft.github.io/poml/stable/python/reference/core/#poml.set_trace)
    *   [trace_artifact](https://microsoft.github.io/poml/stable/python/reference/core/#poml.trace_artifact)

Python POML Core APIs[¶](https://microsoft.github.io/poml/stable/python/reference/core/#python-poml-core-apis "Permanent link")
===============================================================================================================================

_Estimated time to read: 1 minute_

`poml`[¶](https://microsoft.github.io/poml/stable/python/reference/core/#poml "Permanent link")
-----------------------------------------------------------------------------------------------

### ```python
clear_trace()
```
[¶](https://microsoft.github.io/poml/stable/python/reference/core/#poml.clear_trace "Permanent link")

Clear the collected trace log.

Source code in `python/poml/api.py`

[110](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-110)
[111](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-111)
[112](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-112)```
def clear_trace() -> None:
    """Clear the collected trace log."""
    _trace_log.clear()
```

### ```python
get_trace()
```
[¶](https://microsoft.github.io/poml/stable/python/reference/core/#poml.get_trace "Permanent link")

Return a copy of the trace log.

Source code in `python/poml/api.py`

[115](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-115)
[116](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-116)
[117](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-117)```
def get_trace() -> List[Dict[str, Any]]:
    """Return a copy of the trace log."""
    return list(_trace_log)
```

### ```python
poml(markup, context=None, stylesheet=None, chat=True, output_file=None, format='message_dict', extra_args=None)
```
[¶](https://microsoft.github.io/poml/stable/python/reference/core/#poml.poml "Permanent link")

Process POML markup and return the result in the specified format.

POML (Prompt Orchestration Markup Language) is a markup language for creating structured prompts and conversations. This function processes POML markup with optional context and styling, returning the result in various formats optimized for different LLM frameworks and use cases.

Parameters:

| Name | Type | Description | Default |
| --- | --- | --- | --- |
| `markup` | `str | Path` | POML markup content as a string, or path to a POML file. If a string that looks like a file path but doesn't exist, a warning is issued and it's treated as markup content. | _required_ |
| `context` | `dict | str | Path | None` | Optional context data to inject into the POML template. Can be a dictionary, JSON string, or path to a JSON file. | `None` |
| `stylesheet` | `dict | str | Path | None` | Optional stylesheet for customizing POML rendering. Can be a dictionary, JSON string, or path to a JSON file. | `None` |
| `chat` | `bool` | If True, process as a chat conversation (default). If False, process as a single prompt. | `True` |
| `output_file` | `str | Path | None` | Optional path to save the output. If not provided, output is returned directly without saving to disk. | `None` |
| `format` | `OutputFormat` | Output format for the result: - "raw": Raw string output from POML processor - "message_dict": Legacy format returning just messages array (default) - "dict": Full CLI result structure with messages, schema, tools, runtime - "openai_chat": OpenAI Chat Completion API format with tool support - "langchain": LangChain message format with structured data - "pydantic": PomlFrame object with typed Pydantic models | `'message_dict'` |
| `extra_args` | `Optional[List[str]]` | Additional command-line arguments to pass to the POML processor. | `None` |

Returns:

| Name | Type | Description |
| --- | --- | --- |
|  | `list | dict | str | PomlFrame` | The processed result in the specified format: |
|  | `list | dict | str | PomlFrame` | * str when format="raw" |
|  | `list | dict | str | PomlFrame` | * list when format="message_dict" (legacy messages array) |
|  | `list | dict | str | PomlFrame` | * dict when format="dict", "openai_chat", or "langchain" |
|  | `list | dict | str | PomlFrame` | * PomlFrame when format="pydantic" |
|  | `list | dict | str | PomlFrame` | For format="message_dict": Returns just the messages array for backward |
|  | `list | dict | str | PomlFrame` | compatibility. Example: `[{"speaker": "human", "content": "Hello"}]` |
|  | `list | dict | str | PomlFrame` | For format="dict": Returns complete structure with all metadata. |
| `Example` | `list | dict | str | PomlFrame` | `{"messages": [...], "schema": {...}, "tools": [...], "runtime": {...}}` |
|  | `list | dict | str | PomlFrame` | For format="openai_chat": Returns OpenAI Chat Completion format with tool/schema |
|  | `list | dict | str | PomlFrame` | support. Includes "messages" in OpenAI format, "tools" if present, "response_format" |
|  | `list | dict | str | PomlFrame` | for JSON schema if present, and runtime parameters converted to `snake_case`. |
|  | `list | dict | str | PomlFrame` | For format="langchain": Returns LangChain format preserving all metadata with |
|  | `list | dict | str | PomlFrame` | "messages" in LangChain format plus schema, tools, and runtime if present. |
|  | `list | dict | str | PomlFrame` | For format="pydantic": Returns strongly-typed PomlFrame object containing |
|  | `list | dict | str | PomlFrame` | messages as PomlMessage objects, output_schema, tools, and runtime. |

Raises:

| Type | Description |
| --- | --- |
| `FileNotFoundError` | When a specified file path doesn't exist. |
| `RuntimeError` | When the POML processor fails or backend tracing requirements aren't met. |
| `ValueError` | When an invalid output format is specified. |

Examples:

Basic usage with markup string:

```
>>> result = poml("<p>Hello {{name}}!</p>", context={"name": "World"})
```

Load from file with context:

```
>>> result = poml("template.poml", context="context.json")
```

Get OpenAI chat format:

```
>>> messages = poml("chat.poml", format="openai_chat")
```

Use with custom stylesheet:

```
>>> result = poml(
...     markup="template.poml",
...     context={"user": "Alice"},
...     stylesheet={"role": {"captionStyle": "bold"}},
...     format="pydantic"
... )
```

Save output to file:

```
>>> poml("template.poml", output_file="output.json", format="raw")
```

Note
*   When tracing is enabled via set_trace(), call details are automatically logged
*   The function supports various backend integrations (Weave, AgentOps, MLflow)
*   Multi-modal content (images, etc.) is supported in chat format

Source code in `python/poml/api.py`

[420](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-420)
[421](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-421)
[422](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-422)
[423](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-423)
[424](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-424)
[425](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-425)
[426](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-426)
[427](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-427)
[428](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-428)
[429](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-429)
[430](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-430)
[431](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-431)
[432](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-432)
[433](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-433)
[434](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-434)
[435](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-435)
[436](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-436)
[437](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-437)
[438](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-438)
[439](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-439)
[440](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-440)
[441](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-441)
[442](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-442)
[443](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-443)
[444](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-444)
[445](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-445)
[446](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-446)
[447](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-447)
[448](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-448)
[449](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-449)
[450](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-450)
[451](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-451)
[452](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-452)
[453](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-453)
[454](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-454)
[455](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-455)
[456](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-456)
[457](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-457)
[458](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-458)
[459](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-459)
[460](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-460)
[461](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-461)
[462](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-462)
[463](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-463)
[464](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-464)
[465](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-465)
[466](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-466)
[467](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-467)
[468](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-468)
[469](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-469)
[470](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-470)
[471](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-471)
[472](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-472)
[473](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-473)
[474](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-474)
[475](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-475)
[476](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-476)
[477](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-477)
[478](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-478)
[479](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-479)
[480](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-480)
[481](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-481)
[482](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-482)
[483](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-483)
[484](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-484)
[485](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-485)
[486](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-486)
[487](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-487)
[488](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-488)
[489](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-489)
[490](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-490)
[491](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-491)
[492](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-492)
[493](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-493)
[494](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-494)
[495](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-495)
[496](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-496)
[497](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-497)
[498](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-498)
[499](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-499)
[500](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-500)
[501](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-501)
[502](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-502)
[503](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-503)
[504](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-504)
[505](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-505)
[506](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-506)
[507](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-507)
[508](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-508)
[509](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-509)
[510](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-510)
[511](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-511)
[512](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-512)
[513](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-513)
[514](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-514)
[515](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-515)
[516](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-516)
[517](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-517)
[518](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-518)
[519](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-519)
[520](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-520)
[521](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-521)
[522](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-522)
[523](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-523)
[524](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-524)
[525](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-525)
[526](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-526)
[527](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-527)
[528](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-528)
[529](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-529)
[530](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-530)
[531](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-531)
[532](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-532)
[533](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-533)
[534](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-534)
[535](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-535)
[536](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-536)
[537](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-537)
[538](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-538)
[539](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-539)
[540](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-540)
[541](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-541)
[542](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-542)
[543](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-543)
[544](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-544)
[545](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-545)
[546](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-546)
[547](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-547)
[548](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-548)
[549](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-549)
[550](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-550)
[551](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-551)
[552](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-552)
[553](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-553)
[554](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-554)
[555](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-555)
[556](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-556)
[557](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-557)
[558](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-558)
[559](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-559)
[560](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-560)
[561](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-561)
[562](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-562)
[563](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-563)
[564](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-564)
[565](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-565)
[566](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-566)
[567](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-567)
[568](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-568)
[569](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-569)
[570](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-570)
[571](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-571)
[572](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-572)
[573](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-573)
[574](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-574)
[575](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-575)
[576](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-576)
[577](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-577)
[578](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-578)
[579](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-579)
[580](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-580)
[581](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-581)
[582](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-582)
[583](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-583)
[584](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-584)
[585](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-585)
[586](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-586)
[587](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-587)
[588](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-588)
[589](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-589)
[590](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-590)
[591](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-591)
[592](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-592)
[593](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-593)
[594](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-594)
[595](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-595)
[596](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-596)
[597](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-597)
[598](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-598)
[599](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-599)
[600](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-600)
[601](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-601)
[602](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-602)
[603](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-603)
[604](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-604)
[605](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-605)
[606](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-606)
[607](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-607)
[608](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-608)
[609](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-609)
[610](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-610)
[611](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-611)
[612](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-612)
[613](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-613)
[614](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-614)
[615](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-615)
[616](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-616)
[617](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-617)
[618](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-618)
[619](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-619)
[620](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-620)
[621](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-621)
[622](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-622)
[623](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-623)
[624](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-624)
[625](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-625)
[626](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-626)
[627](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-627)
[628](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-628)
[629](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-629)
[630](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-630)
[631](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-631)
[632](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-632)
[633](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-633)
[634](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-634)
[635](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-635)
[636](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-636)
[637](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-637)
[638](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-638)
[639](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-639)
[640](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-640)
[641](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-641)
[642](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-642)
[643](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-643)
[644](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-644)
[645](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-645)
[646](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-646)
[647](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-647)
[648](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-648)
[649](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-649)
[650](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-650)
[651](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-651)
[652](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-652)
[653](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-653)
[654](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-654)
[655](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-655)
[656](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-656)
[657](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-657)
[658](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-658)
[659](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-659)
[660](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-660)
[661](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-661)
[662](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-662)
[663](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-663)
[664](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-664)
[665](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-665)
[666](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-666)
[667](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-667)
[668](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-668)
[669](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-669)
[670](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-670)
[671](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-671)
[672](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-672)
[673](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-673)
[674](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-674)
[675](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-675)
[676](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-676)
[677](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-677)
[678](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-678)
[679](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-679)
[680](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-680)
[681](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-681)
[682](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-682)
[683](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-683)
[684](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-684)
[685](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-685)
[686](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-686)
[687](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-687)
[688](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-688)
[689](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-689)
[690](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-690)
[691](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-691)
[692](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-692)
[693](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-693)
[694](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-694)
[695](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-695)
[696](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-696)
[697](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-697)
[698](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-698)
[699](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-699)
[700](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-700)
[701](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-701)
[702](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-702)
[703](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-703)
[704](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-704)
[705](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-705)
[706](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-706)
[707](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-707)
[708](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-708)
[709](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-709)
[710](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-710)
[711](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-711)
[712](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-712)
[713](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-713)
[714](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-714)
[715](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-715)
[716](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-716)
[717](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-717)
[718](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-718)
[719](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-719)
[720](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-720)
[721](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-721)
[722](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-722)
[723](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-723)
[724](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-724)
[725](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-725)
[726](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-726)
[727](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-727)
[728](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-728)
[729](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-729)
[730](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-730)
[731](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-731)
[732](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-732)
[733](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-733)
[734](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-734)
[735](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-735)
[736](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-736)
[737](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-737)
[738](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-738)
[739](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-739)
[740](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-740)
[741](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-741)
[742](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-742)
[743](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-743)
[744](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-744)
[745](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-745)
[746](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-746)
[747](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-747)
[748](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-748)```
def poml(
    markup: str | Path,
    context: dict | str | Path | None = None,
    stylesheet: dict | str | Path | None = None,
    chat: bool = True,
    output_file: str | Path | None = None,
    format: OutputFormat = "message_dict",
    extra_args: Optional[List[str]] = None,
) -> list | dict | str | PomlFrame:
    """Process POML markup and return the result in the specified format.

    POML (Prompt Orchestration Markup Language) is a markup language for creating
    structured prompts and conversations. This function processes POML markup
    with optional context and styling, returning the result in various formats
    optimized for different LLM frameworks and use cases.

    Args:
        markup: POML markup content as a string, or path to a POML file.
            If a string that looks like a file path but doesn't exist,
            a warning is issued and it's treated as markup content.
        context: Optional context data to inject into the POML template.
            Can be a dictionary, JSON string, or path to a JSON file.
        stylesheet: Optional stylesheet for customizing POML rendering.
            Can be a dictionary, JSON string, or path to a JSON file.
        chat: If True, process as a chat conversation (default).
            If False, process as a single prompt.
        output_file: Optional path to save the output. If not provided,
            output is returned directly without saving to disk.
        format: Output format for the result:
            - "raw": Raw string output from POML processor
            - "message_dict": Legacy format returning just messages array (default)
            - "dict": Full CLI result structure with messages, schema, tools, runtime
            - "openai_chat": OpenAI Chat Completion API format with tool support
            - "langchain": LangChain message format with structured data
            - "pydantic": PomlFrame object with typed Pydantic models
        extra_args: Additional command-line arguments to pass to the POML processor.

    Returns:
        The processed result in the specified format:
        - str when format="raw"
        - list when format="message_dict" (legacy messages array)
        - dict when format="dict", "openai_chat", or "langchain"
        - PomlFrame when format="pydantic"

        For format="message_dict": Returns just the messages array for backward 
        compatibility. Example: `[{"speaker": "human", "content": "Hello"}]`

        For format="dict": Returns complete structure with all metadata.
        Example: `{"messages": [...], "schema": {...}, "tools": [...], "runtime": {...}}`

        For format="openai_chat": Returns OpenAI Chat Completion format with tool/schema 
        support. Includes "messages" in OpenAI format, "tools" if present, "response_format" 
        for JSON schema if present, and runtime parameters converted to `snake_case`.

        For format="langchain": Returns LangChain format preserving all metadata with
        "messages" in LangChain format plus schema, tools, and runtime if present.

        For format="pydantic": Returns strongly-typed PomlFrame object containing
        messages as PomlMessage objects, output_schema, tools, and runtime.

    Raises:
        FileNotFoundError: When a specified file path doesn't exist.
        RuntimeError: When the POML processor fails or backend tracing requirements aren't met.
        ValueError: When an invalid output format is specified.

    Examples:
        Basic usage with markup string:
        >>> result = poml("<p>Hello {{name}}!</p>", context={"name": "World"})

        Load from file with context:
        >>> result = poml("template.poml", context="context.json")

        Get OpenAI chat format:
        >>> messages = poml("chat.poml", format="openai_chat")

        Use with custom stylesheet:
        >>> result = poml(
        ...     markup="template.poml",
        ...     context={"user": "Alice"},
        ...     stylesheet={"role": {"captionStyle": "bold"}},
        ...     format="pydantic"
        ... )

        Save output to file:
        >>> poml("template.poml", output_file="output.json", format="raw")

    Note:
        - When tracing is enabled via set_trace(), call details are automatically logged
        - The function supports various backend integrations (Weave, AgentOps, MLflow)
        - Multi-modal content (images, etc.) is supported in chat format
    """
    temp_input_file = temp_context_file = temp_stylesheet_file = None
    trace_record: Dict[str, Any] | None = None
    try:
        if _trace_enabled:
            trace_record = {}
            if isinstance(markup, Path) or os.path.exists(str(markup)):
                path = Path(markup)
                trace_record["markup_path"] = str(path)
                if path.exists():
                    trace_record["markup"] = path.read_text()
            else:
                trace_record["markup"] = str(markup)

            if isinstance(context, dict):
                trace_record["context"] = json.dumps(context)
            elif context:
                if os.path.exists(str(context)):
                    cpath = Path(context)
                    trace_record["context_path"] = str(cpath)
                    trace_record["context"] = cpath.read_text()
            if isinstance(stylesheet, dict):
                trace_record["stylesheet"] = json.dumps(stylesheet)
            elif stylesheet:
                if os.path.exists(str(stylesheet)):
                    spath = Path(stylesheet)
                    trace_record["stylesheet_path"] = str(spath)
                    trace_record["stylesheet"] = spath.read_text()

        if isinstance(markup, Path):
            if not markup.exists():
                raise FileNotFoundError(f"File not found: {markup}")
        else:
            if os.path.exists(markup):
                markup = Path(markup)
            else:
                # Test if the markup looks like a path.
                if re.match(r"^[\w\-./]+$", markup):
                    warnings.warn(
                        f"The markup '{markup}' looks like a file path, but it does not exist. Assuming it is a POML string."
                    )

                temp_input_file = write_file(markup)
                markup = Path(temp_input_file.name)
        with tempfile.NamedTemporaryFile("r") as temp_output_file:
            if output_file is None:
                output_file = temp_output_file.name
                output_file_specified = False
            else:
                output_file_specified = True
                if isinstance(output_file, Path):
                    output_file = str(output_file)
            args = ["-f", str(markup), "-o", output_file]
            if isinstance(context, dict):
                temp_context_file = write_file(json.dumps(context))
                args.extend(["--context-file", temp_context_file.name])
            elif context:
                if os.path.exists(context):
                    args.extend(["--context-file", str(context)])
                else:
                    raise FileNotFoundError(f"File not found: {context}")

            if isinstance(stylesheet, dict):
                temp_stylesheet_file = write_file(json.dumps(stylesheet))
                args.extend(["--stylesheet-file", temp_stylesheet_file.name])
            elif stylesheet:
                if os.path.exists(stylesheet):
                    args.extend(["--stylesheet-file", str(stylesheet)])
                else:
                    raise FileNotFoundError(f"File not found: {stylesheet}")

            if chat:
                args.extend(["--chat", "true"])
            else:
                args.extend(["--chat", "false"])

            if _trace_enabled and _trace_dir is not None:
                args.extend(["--traceDir", str(_trace_dir)])

            if extra_args:
                args.extend(extra_args)
            process = run(*args)
            if process.returncode != 0:
                raise RuntimeError(
                    f"POML command failed with return code {process.returncode}. See the log for details."
                )

            if output_file_specified:
                with open(output_file, "r") as output_file_handle:
                    result = output_file_handle.read()
            else:
                result = temp_output_file.read()

            if format == "raw":
                # Do nothing
                return_result = trace_result = result
            else:
                parsed_result = trace_result = json.loads(result)

                # Handle the new CLI result format with messages, schema, tools, runtime
                if isinstance(parsed_result, dict) and "messages" in parsed_result:
                    cli_result = parsed_result
                    messages_data = cli_result["messages"]
                else:
                    # Legacy format - just messages
                    cli_result: dict = {"messages": parsed_result}
                    messages_data = parsed_result

                if format == "message_dict":
                    # Legacy behavior - return just the messages
                    return_result = messages_data
                elif format == "dict":
                    # Return the full CLI result structure
                    return_result = cli_result
                else:
                    # Convert to pydantic messages for other formats
                    if chat:
                        pydantic_messages = [PomlMessage(**item) for item in messages_data]
                    else:
                        # TODO: Make it a RichContent object
                        pydantic_messages = [PomlMessage(speaker="human", content=messages_data)]  # type: ignore

                    # Create PomlFrame with full data
                    poml_frame = PomlFrame(
                        messages=pydantic_messages,
                        output_schema=cli_result.get("schema"),
                        tools=cli_result.get("tools"), 
                        runtime=cli_result.get("runtime")
                    )

                    if format == "pydantic":
                        return_result = poml_frame
                    elif format == "openai_chat":
                        # Return OpenAI-compatible format
                        openai_messages = _poml_response_to_openai_chat(pydantic_messages)
                        openai_result: dict = {"messages": openai_messages}

                        # Add tools if present
                        if poml_frame.tools:
                            openai_result["tools"] = [{
                                "type": "function",
                                "function": {
                                    "name": tool.get("name", ""),
                                    "description": tool.get("description", ""),
                                    "parameters": tool.get("parameters", {})
                                }  # FIXME: hot-fix for the wrong format at node side
                            } for tool in poml_frame.tools]
                        if poml_frame.output_schema:
                            openai_result["response_format"] = {
                                "type": "json_schema",
                                "json_schema": {
                                    "name": "schema",  # TODO: support schema name
                                    "schema": poml_frame.output_schema,
                                    "strict": True,  # Ensure strict validation
                                }
                            }
                        if poml_frame.runtime:
                            openai_result.update({
                                _camel_case_to_snake_case(k): v
                                for k, v in poml_frame.runtime.items()
                            })

                        return_result = openai_result
                    elif format == "langchain":
                        messages_data = _poml_response_to_langchain(pydantic_messages)
                        return_result = {
                            "messages": messages_data,
                            **{k: v for k, v in cli_result.items() if k != "messages"},
                        }
                    else:
                        raise ValueError(f"Unknown output format: {format}")

            if _weave_enabled:
                from .integration import weave

                trace_prefix = _latest_trace_prefix()
                current_version = _current_trace_version()
                if trace_prefix is None or current_version is None:
                    raise RuntimeError("Weave tracing requires local tracing to be enabled.")
                poml_content = _read_latest_traced_file(".poml")
                context_content = _read_latest_traced_file(".context.json")
                stylesheet_content = _read_latest_traced_file(".stylesheet.json")

                weave.log_poml_call(
                    trace_prefix.name,
                    poml_content or str(markup),
                    json.loads(context_content) if context_content else None,
                    json.loads(stylesheet_content) if stylesheet_content else None,
                    trace_result,
                )

            if _agentops_enabled:
                from .integration import agentops

                trace_prefix = _latest_trace_prefix()
                current_version = _current_trace_version()
                if trace_prefix is None or current_version is None:
                    raise RuntimeError("AgentOps tracing requires local tracing to be enabled.")
                poml_content = _read_latest_traced_file(".poml")
                context_content = _read_latest_traced_file(".context.json")
                stylesheet_content = _read_latest_traced_file(".stylesheet.json")
                agentops.log_poml_call(
                    trace_prefix.name,
                    str(markup),
                    json.loads(context_content) if context_content else None,
                    json.loads(stylesheet_content) if stylesheet_content else None,
                    trace_result,
                )

            if _mlflow_enabled:
                from .integration import mlflow

                trace_prefix = _latest_trace_prefix()
                current_version = _current_trace_version()
                if trace_prefix is None or current_version is None:
                    raise RuntimeError("MLflow tracing requires local tracing to be enabled.")
                poml_content = _read_latest_traced_file(".poml")
                context_content = _read_latest_traced_file(".context.json")
                stylesheet_content = _read_latest_traced_file(".stylesheet.json")
                mlflow.log_poml_call(
                    trace_prefix.name,
                    poml_content or str(markup),
                    json.loads(context_content) if context_content else None,
                    json.loads(stylesheet_content) if stylesheet_content else None,
                    trace_result,
                )

            if trace_record is not None:
                trace_record["result"] = trace_result
            return return_result
    finally:
        if temp_input_file:
            temp_input_file.close()
        if temp_context_file:
            temp_context_file.close()
        if temp_stylesheet_file:
            temp_stylesheet_file.close()
        if trace_record is not None:
            _trace_log.append(trace_record)
```

### ```python
set_trace(enabled=True, /, *, trace_dir=None)
```
[¶](https://microsoft.github.io/poml/stable/python/reference/core/#poml.set_trace "Permanent link")

Enable or disable tracing of `poml` calls with optional backend integrations.

Parameters:

| Name | Type | Description | Default |
| --- | --- | --- | --- |
| `enabled` | `bool | List[Backend] | Backend` | Controls which tracing backends to enable. Can be: - True: Enable local tracing only (equivalent to ["local"]) - False: Disable all tracing (equivalent to []) - str: Enable a single backend ("local", "weave", "agentops", "mlflow") - List[str]: Enable multiple backends. "local" is auto-enabled if any backends are specified. | `True` |
| `trace_dir` | `Optional[str | Path]` | Optional directory for local trace files. If provided when local tracing is enabled, a subdirectory named by the current timestamp (YYYYMMDDHHMMSSffffff) is created inside trace_dir. | `None` |

Returns:

| Type | Description |
| --- | --- |
| `Optional[Path]` | Path to the trace directory if local tracing is enabled, None otherwise. |
| `Optional[Path]` | The directory may be shared with POML Node.js by setting the |
| `Optional[Path]` | POML_TRACE environment variable in the invoking script. |

Available backends
*   "local": Save trace files to disk
*   "weave": Log to Weights & Biases Weave (requires local tracing)
*   "agentops": Log to AgentOps (requires local tracing)
*   "mlflow": Log to MLflow (requires local tracing)

Source code in `python/poml/api.py`

[35](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-35)
[36](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-36)
[37](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-37)
[38](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-38)
[39](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-39)
[40](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-40)
[41](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-41)
[42](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-42)
[43](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-43)
[44](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-44)
[45](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-45)
[46](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-46)
[47](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-47)
[48](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-48)
[49](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-49)
[50](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-50)
[51](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-51)
[52](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-52)
[53](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-53)
[54](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-54)
[55](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-55)
[56](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-56)
[57](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-57)
[58](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-58)
[59](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-59)
[60](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-60)
[61](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-61)
[62](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-62)
[63](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-63)
[64](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-64)
[65](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-65)
[66](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-66)
[67](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-67)
[68](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-68)
[69](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-69)
[70](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-70)
[71](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-71)
[72](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-72)
[73](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-73)
[74](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-74)
[75](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-75)
[76](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-76)
[77](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-77)
[78](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-78)
[79](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-79)
[80](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-80)
[81](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-81)
[82](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-82)
[83](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-83)
[84](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-84)
[85](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-85)
[86](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-86)
[87](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-87)
[88](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-88)
[89](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-89)
[90](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-90)
[91](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-91)
[92](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-92)
[93](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-93)
[94](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-94)
[95](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-95)
[96](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-96)
[97](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-97)
[98](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-98)
[99](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-99)
[100](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-100)
[101](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-101)
[102](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-102)
[103](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-103)
[104](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-104)
[105](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-105)
[106](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-106)
[107](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-107)```
def set_trace(
    enabled: bool | List[Backend] | Backend = True, /, *, trace_dir: Optional[str | Path] = None
) -> Optional[Path]:
    """Enable or disable tracing of ``poml`` calls with optional backend integrations.

    Args:
        enabled: Controls which tracing backends to enable. Can be:
            - True: Enable local tracing only (equivalent to ["local"])
            - False: Disable all tracing (equivalent to [])
            - str: Enable a single backend ("local", "weave", "agentops", "mlflow")
            - List[str]: Enable multiple backends. "local" is auto-enabled if any backends are specified.
        trace_dir: Optional directory for local trace files. If provided when local
            tracing is enabled, a subdirectory named by the current timestamp
            (YYYYMMDDHHMMSSffffff) is created inside trace_dir.

    Returns:
        Path to the trace directory if local tracing is enabled, None otherwise.
        The directory may be shared with POML Node.js by setting the
        POML_TRACE environment variable in the invoking script.

    Available backends:
        - "local": Save trace files to disk
        - "weave": Log to Weights & Biases Weave (requires local tracing)
        - "agentops": Log to AgentOps (requires local tracing)
        - "mlflow": Log to MLflow (requires local tracing)
    """

    if enabled is True:
        enabled = ["local"]
    elif enabled is False:
        enabled = []

    if isinstance(enabled, str):
        enabled = [enabled]

    global _trace_enabled, _trace_dir, _weave_enabled, _agentops_enabled, _mlflow_enabled
    if enabled or "local" in enabled:
        # When enabled is non-empty, we always enable local tracing.
        _trace_enabled = True
        env_dir = os.environ.get("POML_TRACE")
        if trace_dir is not None:
            base = Path(trace_dir)
            base.mkdir(parents=True, exist_ok=True)
            ts = datetime.now().strftime("%Y%m%d%H%M%S%f")
            run_dir = base / ts
            run_dir.mkdir(parents=True, exist_ok=True)
            _trace_dir = run_dir
        elif env_dir:
            run_dir = Path(env_dir)
            run_dir.mkdir(parents=True, exist_ok=True)
            _trace_dir = run_dir
        else:
            _trace_dir = None
    else:
        _trace_enabled = False
        _trace_dir = None

    if "weave" in enabled:
        _weave_enabled = True
    else:
        _weave_enabled = False

    if "agentops" in enabled:
        _agentops_enabled = True
    else:
        _agentops_enabled = False

    if "mlflow" in enabled:
        _mlflow_enabled = True
    else:
        _mlflow_enabled = False

    return _trace_dir
```

### ```python
trace_artifact(file_suffix, contents)
```
[¶](https://microsoft.github.io/poml/stable/python/reference/core/#poml.trace_artifact "Permanent link")

Write an additional artifact file for the most recent `poml` call. This API is experimental.

Source code in `python/poml/api.py`

[167](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-167)
[168](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-168)
[169](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-169)
[170](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-170)
[171](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-171)
[172](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-172)
[173](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-173)
[174](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-174)
[175](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-175)
[176](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-176)
[177](https://microsoft.github.io/poml/stable/python/reference/core/#__codelineno-0-177)```
def trace_artifact(file_suffix: str, contents: str | bytes) -> Optional[Path]:
    """Write an additional artifact file for the most recent ``poml`` call. This API is experimental."""
    prefix = _latest_trace_prefix()
    if prefix is None:
        return None
    suffix = file_suffix if file_suffix.startswith(".") else f".{file_suffix}"
    path = Path(str(prefix) + suffix)
    mode = "wb" if isinstance(contents, (bytes, bytearray)) else "w"
    with open(path, mode) as f:
        f.write(contents)
    return path
```

2025-08-23 2025-08-11[Yuge Zhang](mailto:yuge.zhang@microsoft.com)

 Made with [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

