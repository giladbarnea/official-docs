Title: AgentOps - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/python/integration/agentops

Published Time: Sat, 20 Sep 2025 06:54:30 GMT

Markdown Content:
AgentOps Integration[¶](https://microsoft.github.io/poml/stable/python/integration/agentops/#agentops-integration "Permanent link")
-----------------------------------------------------------------------------------------------------------------------------------

_Estimated time to read: 2 minutes_

AgentOps is an observability platform designed for AI agents and LLM applications. The POML-AgentOps integration automatically traces your POML calls and sends them to AgentOps for monitoring, debugging, and analytics.

![Image 1: AgentOps trace view showing POML operations](https://microsoft.github.io/poml/stable/media/integration-agentops.png)

Installation and Configuration[¶](https://microsoft.github.io/poml/stable/python/integration/agentops/#installation-and-configuration "Permanent link")
-------------------------------------------------------------------------------------------------------------------------------------------------------

Install POML with AgentOps support:

```
pip install poml[agent]
```

Or install AgentOps separately:

```
pip install agentops
```

Set up your AgentOps API key as an environment variable:

```
export AGENTOPS_API_KEY="your-api-key-here"
```

You can obtain an API key from the [AgentOps dashboard](https://app.agentops.ai/).

Basic Usage[¶](https://microsoft.github.io/poml/stable/python/integration/agentops/#basic-usage "Permanent link")
-----------------------------------------------------------------------------------------------------------------

Enable POML tracing with AgentOps:

```
import os
import poml
import agentops
from openai import OpenAI

# Initialize AgentOps. Trace is automatically started.
agentops.init()

# Enable POML tracing with AgentOps
poml.set_trace("agentops", trace_dir="pomlruns")

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

# Trace ends automatically at the end of the script.
```

What Gets Traced[¶](https://microsoft.github.io/poml/stable/python/integration/agentops/#what-gets-traced "Permanent link")
---------------------------------------------------------------------------------------------------------------------------

When AgentOps integration is enabled, POML automatically captures POML Operations. Each POML call is logged as an operation with:

*   **Operation Name**: "poml" 
*   **Prompt Content**: The raw POML source
*   **Context Variables**: All context variables passed to the POML call
*   **Stylesheet**: Any stylesheet configuration
*   **Result**: The processed prompt structure sent to the LLM

### Example Trace Data[¶](https://microsoft.github.io/poml/stable/python/integration/agentops/#example-trace-data "Permanent link")

```
{
  "resource_attributes": {
    "imported_libraries": "[\"agentops\",\"poml\"]"
  },
  "span_attributes": {
    "agentops": {
      "span": {
        "kind": "task"
      }
    },
    "task": {
      "input": "{\"args\": [\"../assets/explain_code.poml\", {\"code_path\": \"sample.py\"}, null], \"kwargs\": {}}",
      "output": "{\"messages\": [{\"speaker\": \"human\", \"content\": \"# Task\\n\\nYou are a senior Python developer. Please explain the code.\\n\\n```\\ndef greet(name):\\n    print(f\\\"Hello, {name}!\\\")\\n\\ndef add(a, b):\\n    return a + b\\n\\ndef factorial(n):\\n    if n == 0:\\n        return 1\\n    else:\\n        return n * factorial(n - 1)\\n\\ndef is_even(num):\\n    return num % 2 == 0\\n\\ndef main():\\n    greet(\\\"Alice\\\")\\n    x = 5\\n    y = 7\\n    print(f\\\"{x} + {y} = {add(x, y)}\\\")\\n    print(f\\\"Factorial of {x} is {factorial(x)}\\\")\\n    if is_even(x):\\n        print(f\\\"{x} is even\\\")\\n    else:\\n        print(f\\\"{x} is odd\\\")\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\\n```\"}], \"runtime\": {\"temperature\": 0.7, \"maxTokens\": 256}}"
    },
    "operation": {
      "name": "poml"
    }
  }
}
```

See Also[¶](https://microsoft.github.io/poml/stable/python/integration/agentops/#see-also "Permanent link")
-----------------------------------------------------------------------------------------------------------

*   [POML Tracing Guide](https://microsoft.github.io/poml/stable/python/trace/)
*   [AgentOps Documentation](https://docs.agentops.ai/)
*   [AgentOps Dashboard](https://app.agentops.ai/)

