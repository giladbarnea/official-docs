Title: Weave - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/python/integration/weave

Markdown Content:
Weave Integration[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#weave-integration "Permanent link")
--------------------------------------------------------------------------------------------------------------------------

_Estimated time to read: 2 minutes_

Weave is Weights & Biases' lightweight AI observability framework for tracking and versioning LLM applications. The POML-Weave integration automatically traces your POML calls and publishes prompts as versioned Weave objects.

![Image 1: Weave trace view showing POML operations](https://microsoft.github.io/poml/stable/media/integration-weave.png)

Installation and Configuration[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#installation-and-configuration "Permanent link")
----------------------------------------------------------------------------------------------------------------------------------------------------

Install POML with Weave support:

```
pip install poml[agent]
```

Or install Weave separately:

```
pip install weave
```

Set up your Weights & Biases API key:

```
export WANDB_API_KEY="your-api-key-here"
```

You can obtain an API key from [Weights & Biases](https://wandb.ai/settings).

Basic Usage[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#basic-usage "Permanent link")
--------------------------------------------------------------------------------------------------------------

Enable POML tracing with Weave:

```
import poml
import weave
from openai import OpenAI

# Initialize Weave project
weave.init("my_poml_project")

# Enable POML tracing with Weave
poml.set_trace("weave", trace_dir="pomlruns")

# Use POML as usual
client = OpenAI()
messages = poml.poml(
    "explain_code.poml", 
    context={"code_path": "sample.py"}, 
    format="openai_chat"
)

response = client.chat.completions.create(
    model="gpt-5",
    **messages
)
```

What Gets Traced[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#what-gets-traced "Permanent link")
------------------------------------------------------------------------------------------------------------------------

When Weave integration is enabled, POML automatically captures:

### POML Operations[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#poml-operations "Permanent link")

Each POML call is logged as a Weave operation with:

*   **Operation Name**: "poml"
*   **Prompt Content**: The raw POML source
*   **Context Variables**: All context variables passed to the POML call
*   **Stylesheet**: Any stylesheet configuration 
*   **Result**: The processed prompt structure sent to the LLM

### Prompt Publishing[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#prompt-publishing "Permanent link")

POML prompts are automatically published as versioned Weave objects:

*   **Object Name**: Automatically derived from the POML filename and sequential number (e.g., `0001.explain_code`), see [trace documentation](https://microsoft.github.io/poml/stable/python/trace/) for details
*   **Object Content**: The complete POML source template
*   **Context Object**: Published separately as `{name}.context` if context is provided
*   **Stylesheet Object**: Published separately as `{name}.stylesheet` if stylesheet is provided
*   **Version Control**: Weave automatically versions all published objects

![Image 2: Weave prompt object showing POML template](https://microsoft.github.io/poml/stable/media/integration-weave-prompt.png)

### Example Trace Data[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#example-trace-data "Permanent link")

```
{
  "inputs": {
    "prompt": "weave://.../001.explain_code:v0",
    "context": "weave://.../0001.explain_code.context:v0",
    "stylesheet": null
  },
  "outputs": {
    "messages": [
      {
        "speaker": "human",
        "content": "# Task\n\nYou are a senior Python developer. Please explain the code.\n\n```\ndef greet(name):\n    print(f\"Hello, {name}!\")\n..."
      }
    ],
    "runtime": {
      "temperature": 0.7,
      "maxTokens": 256
    }
  }
}
```

See Also[¶](https://microsoft.github.io/poml/stable/python/integration/weave/#see-also "Permanent link")
--------------------------------------------------------------------------------------------------------

*   [POML Tracing Guide](https://microsoft.github.io/poml/stable/python/trace/)
*   [Weave Documentation](https://docs.wandb.ai/guides/weave/)
*   [Weights & Biases Platform](https://wandb.ai/)

