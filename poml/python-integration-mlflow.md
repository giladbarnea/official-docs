Title: MLflow - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/python/integration/mlflow

Markdown Content:
MLflow Integration[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#mlflow-integration "Permanent link")
-----------------------------------------------------------------------------------------------------------------------------

_Estimated time to read: 2 minutes_

MLflow is an open-source platform for managing the machine learning lifecycle, including experimentation, reproducibility, and deployment. The POML-MLflow integration automatically tracks your POML calls as MLflow traces and registers prompts in the MLflow prompt registry.

![Image 1: MLflow trace view showing POML operations](https://microsoft.github.io/poml/stable/media/integration-mlflow.png)

Installation and Configuration[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#installation-and-configuration "Permanent link")
-----------------------------------------------------------------------------------------------------------------------------------------------------

Install POML with MLflow support:

```
pip install poml[agent]
```

Or install MLflow separately:

```
pip install mlflow mlflow-genai
```

Configuration[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#configuration "Permanent link")
-------------------------------------------------------------------------------------------------------------------

Set up MLflow tracking server (optional, defaults to local file store):

```
# Start a local MLflow tracking server
mlflow server --host 0.0.0.0 --port 5000

# Or use a remote tracking server
export MLFLOW_TRACKING_URI="http://your-mlflow-server:5000"
```

Basic Usage[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#basic-usage "Permanent link")
---------------------------------------------------------------------------------------------------------------

Enable POML tracing with MLflow:

```
import mlflow
import mlflow.openai
import poml
from openai import OpenAI

# Set up MLflow experiment
mlflow.set_experiment("poml_integration")
mlflow.set_tracking_uri("http://localhost:5000")

# Enable POML tracing with MLflow
poml.set_trace("mlflow", trace_dir="pomlruns")

# Enable OpenAI autologging for tracing OpenAI API calls as well
mlflow.openai.autolog()

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

What Gets Traced[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#what-gets-traced "Permanent link")
-------------------------------------------------------------------------------------------------------------------------

When MLflow integration is enabled, POML automatically captures:

### POML Traces[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#poml-traces "Permanent link")

Each POML call is logged as an MLflow trace with:

*   **Trace Name**: "poml"
*   **Prompt Content**: The raw POML source
*   **Context Variables**: All context variables passed to the POML call
*   **Stylesheet**: Any stylesheet configuration
*   **Result**: The processed prompt structure sent to the LLM

### Prompt Registration[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#prompt-registration "Permanent link")

POML prompts are automatically registered in MLflow's prompt registry with:

*   **Prompt Name**: Automatically derived from the POML filename and sequential number (e.g., `0001.explain_code`), see [trace documentation](https://microsoft.github.io/poml/stable/python/trace/) for details
*   **Template**: The complete POML source content
*   **Version Control**: MLflow tracks prompt versions automatically

![Image 2: MLflow prompt registry showing POML template](https://microsoft.github.io/poml/stable/media/integration-mlflow-prompt.png)

### Example Trace Data[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#example-trace-data "Permanent link")

```
{
  "inputs": {
    "prompt": "<poml> <task>You are a senior Python developer. Please explain the code.</task> <code inline=\"false\"> <document src=\"{{ code_path }}\" parser=\"txt\" /> </code> <runtime temperature=\"0.7\" max-tokens=\"256\"/> </poml>",
    "context": {
      "code_path": "sample.py"
    },
    "stylesheet": null
  },
  "outputs": {
    "messages": [
      {
        "speaker": "human",
        "content": "# Task\n\nYou are a senior Python developer. Please explain the code.\n\n```\ndef greet(name):\n    print(f\"Hello, {name}!\")\n..."
      }
    ]
  }
}
```

See Also[¶](https://microsoft.github.io/poml/stable/python/integration/mlflow/#see-also "Permanent link")
---------------------------------------------------------------------------------------------------------

*   [POML Tracing Guide](https://microsoft.github.io/poml/stable/python/trace/)
*   [MLflow Documentation](https://mlflow.org/docs/latest/)
*   [MLflow Tracing Guide](https://mlflow.org/docs/latest/genai/tracing/)
*   [MLflow Prompt Engineering](https://mlflow.org/docs/latest/genai/prompt-registry/prompt-engineering/)

