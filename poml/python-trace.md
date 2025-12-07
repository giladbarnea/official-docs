Title: Tracing - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/python/trace

Markdown Content:
Tracing POML Calls[¶](https://microsoft.github.io/poml/stable/python/trace/#tracing-poml-calls "Permanent link")
----------------------------------------------------------------------------------------------------------------

_Estimated time to read: 3 minutes_

Capturing the Final Crime Scene[¶](https://microsoft.github.io/poml/stable/python/trace/#capturing-the-final-crime-scene "Permanent link")
------------------------------------------------------------------------------------------------------------------------------------------

POML tracing captures the exact state of your prompts at the critical moment -- right before they're sent to LLM APIs. This "crime scene" snapshot includes the full POML source, all context variables, and the resulting prompt structure, providing complete visibility into what the LLM actually receives.

This capability is invaluable for:

*   **Debugging**: When an LLM returns unexpected results in production, trace files provide the complete context needed to reproduce and fix the issue without needing to recreate the exact runtime conditions.
*   **Quick Iterations**: Modern LLM applications usually involve dozens of LLM calls. Review and refine the traced prompts and contexts without rerunning the whole script. Examine how different context values affect the final prompt structure. Compare trace files across versions to understand the impact of changes.
*   **Unit Testing**: Use trace files as fixtures for unit tests. Capture successful interactions as golden test cases. Verify that prompt changes maintain backward compatibility.

Enabling Trace[¶](https://microsoft.github.io/poml/stable/python/trace/#enabling-trace "Permanent link")
--------------------------------------------------------------------------------------------------------

```
import poml

# Start tracing all POML calls
poml.set_trace(trace_dir="pomlruns")
```

Basic Usage[¶](https://microsoft.github.io/poml/stable/python/trace/#basic-usage "Permanent link")
--------------------------------------------------------------------------------------------------

```
import poml
from openai import OpenAI

poml.set_trace(trace_dir="pomlruns")
client = OpenAI()

# Every POML call is now automatically traced
params = poml.poml("calculator.poml", 
                   context={"question": "What is 15% of 200?"}, 
                   format="openai_chat")
response = client.chat.completions.create(model="gpt-4", **params)
```

Trace Folder Structure[¶](https://microsoft.github.io/poml/stable/python/trace/#trace-folder-structure "Permanent link")
------------------------------------------------------------------------------------------------------------------------

Each trace run creates a timestamped directory (YYYYMMDDHHMMSSffffff format) containing all POML executions from that session:

```
pomlruns/
└── 20250823231609954409/         # Session timestamp
    ├── 0001.calculator.context.json
    ├── 0001.calculator.env
    ├── 0001.calculator.poml
    ├── 0001.calculator.result.json
    ├── 0001.calculator.result.txt
    ├── 0001.calculator.source.poml -> symbolic link to original POML file
    ├── 0002.verifier.context.json
    ├── 0002.verifier.env
    ├── 0002.verifier.poml
    ├── 0002.verifier.result.json
    ├── 0002.verifier.result.txt
    └── 0002.verifier.source.poml -> symbolic link to original POML file
```

### File Naming Convention[¶](https://microsoft.github.io/poml/stable/python/trace/#file-naming-convention "Permanent link")

Files are labeled with a sequential execution number (0001, 0002, etc.) and the POML source name: - **Sequential Number**: Four-digit counter (0001, 0002, ...) indicating execution order within the session - **Source Name**: The base name of the POML file being executed

### File Types[¶](https://microsoft.github.io/poml/stable/python/trace/#file-types "Permanent link")

Each POML execution generates six files:

#### `.context.json`[¶](https://microsoft.github.io/poml/stable/python/trace/#contextjson "Permanent link")

The context variables passed to the POML file. This captures all dynamic data injected into the source file at runtime.

```
{
  "question": "What is 15% of 200?",
  "user_id": "alice",
  "timestamp": "2025-08-23T23:16:09"
}
```

#### `.env`[¶](https://microsoft.github.io/poml/stable/python/trace/#env "Permanent link")

Environment metadata including the source file path and any environment-specific configuration. For example:

```
SOURCE_PATH=/home/user/project/prompts/calculator.poml
POML_VERSION=1.0.0
```

#### `.poml`[¶](https://microsoft.github.io/poml/stable/python/trace/#poml "Permanent link")

The original POML source content before any processing. This is the raw source as it exists in your source files.

#### `.result.json`[¶](https://microsoft.github.io/poml/stable/python/trace/#resultjson "Permanent link")

The structured output after POML processing, showing the conversation messages in JSON format. This is what gets sent to the LLM API.

```
{
  "messages": [
    {"speaker": "system", "content": "You are a helpful calculator."},
    {"speaker": "human", "content": "What is 15% of 200?"}
  ]
}
```

#### `.result.txt`[¶](https://microsoft.github.io/poml/stable/python/trace/#resulttxt "Permanent link")

Human-readable representation of the processed prompt, showing the conversation flow with clear role separators.

```
===== system =====
You are a helpful calculator.

===== human =====
What is 15% of 200?
```

#### `.source.poml`[¶](https://microsoft.github.io/poml/stable/python/trace/#sourcepoml "Permanent link")

A symbolic link to the original POML source file, allowing quick navigation and editing to the POML definition.

Integration with Observability Frameworks[¶](https://microsoft.github.io/poml/stable/python/trace/#integration-with-observability-frameworks "Permanent link")
--------------------------------------------------------------------------------------------------------------------------------------------------------------

POML tracing is designed to integrate seamlessly with popular observability and monitoring frameworks such as [AgentOps](https://microsoft.github.io/poml/stable/python/integration/agentops/), [Weave](https://microsoft.github.io/poml/stable/python/integration/weave/), and [MLflow](https://microsoft.github.io/poml/stable/python/integration/mlflow/). Trace data can be exported to these platforms for centralized monitoring, analysis, and alerting in production environments.

