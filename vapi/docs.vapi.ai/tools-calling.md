Search

`/`

Ask AI

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)

[Documentation](/quickstart/introduction)[API Reference](/api-reference/assistants/list)[MCP](/tools/mcp)[SDKs](/resources)[CLI (new)](/cli)[Changelog](/changelog)

[Documentation](/quickstart/introduction)[API Reference](/api-reference/assistants/list)[MCP](/tools/mcp)[SDKs](/resources)[CLI (new)](/cli)[Changelog](/changelog)

* Get started

  + [Introduction](/quickstart/introduction)
  + [Phone calls](/quickstart/phone)
  + [Web calls](/quickstart/web)
  + [Vapi Guides](/guides)
  + [CLI quickstart](/cli)
* Assistants

  + [Quickstart](/assistants/quickstart)
  + Core concepts
  + Conversation behavior
  + Model configurations
  + [Tools](/tools)
  + [Custom keywords](/customization/custom-keywords)
  + [Custom voices](/customization/custom-voices/custom-voice)
  + [Custom TTS integration](/customization/custom-voices/custom-tts)
  + Custom LLMs
  + Examples
* Observability

  + Evals
  + [Boards](/observability/boards-quickstart)
  + Structured outputs
  + Scorecard
* Squads

  + [Quickstart](/squads-example)
  + [Overview](/squads)
  + [Handoff tool](/squads/handoff)
  + Examples
* Best practices

  + [Prompting guide](/prompting-guide)
  + [Debugging voice agents](/debugging)
  + [Enterprise environments (DEV/UAT/PROD)](/documentation/best-practices/enterprise-environments-dev-uat-prod)
  + [IVR navigation](/ivr-navigation)
  + Testing
* Phone numbers

  + [Free Vapi number](/free-telephony)
  + [Inbound SMS](/phone-numbers/inbound-sms)
  + Telephony integrations
  + SIP integration
  + [Phone Number Hooks](/phone-numbers/phone-number-hooks)
* [Calls](/phone-calling)
  + Place calls
  + In-call control
  + [Call end reasons](/calls/call-ended-reason)
  + Call insights
* Outbound Campaigns

  + [Quickstart](/outbound-campaigns/quickstart)
  + [Overview](/outbound-campaigns/overview)
* Chat

  + [Quickstart](/chat/quickstart)
  + [Streaming](/chat/streaming)
  + [Non-streaming](/chat/non-streaming)
  + [OpenAI compatibility](/chat/openai-compatibility)
  + [Session management](/chat/session-management)
  + [SMS chat](/chat/sms-chat)
  + [Web widget](/chat/web-widget)
* + [Webhooks](/server-url)
* Workflows

  + [Quickstart](/workflows/quickstart)
  + [Overview](/workflows/overview)
  + Examples
* Resources

  + [FAQ](/faq)
  + How Vapi works
  + Integrations
  + Community
  + [Support](/support)
  + Security and privacy
  + Legal

Light

On this page

* [Creating Tools in the Dashboard (Recommended)](#creating-tools-in-the-dashboard-recommended)
* [Step 1: Navigate to the Tools Section](#step-1-navigate-to-the-tools-section)
* [Step 2: Configure Your Tool](#step-2-configure-your-tool)
* [Step 3: Configure Messages](#step-3-configure-messages)
* [Step 4: Advanced Settings](#step-4-advanced-settings)
* [Example: Creating a Weather Tool](#example-creating-a-weather-tool)
* [Dashboard Configuration](#dashboard-configuration)
* [Messages Configuration](#messages-configuration)
* [Using Tools in Assistants](#using-tools-in-assistants)
* [In the Dashboard](#in-the-dashboard)
* [In Workflows](#in-workflows)
* [Using the Vapi CLI](#using-the-vapi-cli)
* [Alternative: API Configuration](#alternative-api-configuration)
* [Creating Tools via API](#creating-tools-via-api)
* [Adding Tools to Assistants via API](#adding-tools-to-assistants-via-api)
* [Request Format: Understanding the Tool Call Request](#request-format-understanding-the-tool-call-request)
* [Server Response Format: Providing Results and Context](#server-response-format-providing-results-and-context)

[Assistants](/assistants/quickstart)[Tools](/tools)

# Custom Tools

Copy page

Learn how to create and configure Custom Tools for use by your Vapi assistants.

This guide shows you how to create custom tools for your Vapi assistants. We recommend using the Vapi dashboard’s dedicated Tools section, which provides a visual interface for creating and managing tools that can be reused across multiple assistants. For advanced users, API configuration is also available.

## Creating Tools in the Dashboard (Recommended)

### Step 1: Navigate to the Tools Section

1. Open your [Vapi Dashboard](https://dashboard.vapi.ai/)
2. Click **Tools** in the left sidebar
3. Click **Create Tool** to start building your custom tool

### Step 2: Configure Your Tool

The dashboard provides a user-friendly interface to configure your tool:

1. **Tool Type**: Select “Function” for custom API integrations
2. **Tool Name**: Give your tool a descriptive name (e.g., “Weather Lookup”)
3. **Description**: Explain what your tool does
4. **Tool Configuration**:
   * **Tool Name**: The identifier for your function (e.g., `get_weather`)
   * **Parameters**: Define the input parameters your function expects
   * **Server URL**: The endpoint where your function is hosted

### Step 3: Configure Messages

Set up the messages your assistant will speak during tool execution. For example, if you want custom messages you can add something like this:

* **Request Start**: “Checking the weather forecast. Please wait…”
* **Request Complete**: “The weather information has been retrieved.”
* **Request Failed**: “I couldn’t get the weather information right now.”
* **Request Delayed**: “There’s a slight delay with the weather service.”

### Step 4: Advanced Settings

Configure additional options:

* **Async Mode**: Enable if the tool should run asynchronously
* **Timeout Settings**: Set how long to wait for responses
* **Error Handling**: Define fallback behaviors

## Example: Creating a Weather Tool

Let’s walk through creating a weather lookup tool:

### Dashboard Configuration

1. **Tool Name**: “Weather Lookup”
2. **Description**: “Retrieves current weather information for any location”
3. **Function Name**: `get_weather`
4. **Parameters**:
   * `location` (string, required): “The city or location to get weather for”
5. **Server URL**: `https://api.openweathermap.org/data/2.5/weather`

#####

This example uses OpenWeatherMap’s free API. You’ll need to sign up at [openweathermap.org](https://openweathermap.org/api) to get a free API key and add it as a query parameter: `?appid=YOUR_API_KEY&q={location}`

### Messages Configuration

* **Request Start**: “Let me check the current weather for you…”
* **Request Complete**: “Here’s the weather information you requested.”
* **Request Failed**: “I’m having trouble accessing weather data right now.”

## Using Tools in Assistants

Once created, your tools can be easily added to any assistant:

### In the Dashboard

1. Go to **Assistants** → Select your assistant
2. Navigate to the **Tools** tab
3. Click **Add Tool** and select your custom tool from the dropdown
4. Save your assistant configuration

### In Workflows

Tools created in the Tools section are automatically available in the workflow builder:

1. Add a **Tool Node** to your workflow
2. Select your custom tool from the **Tool** dropdown
3. Configure any node-specific settings

### Using the Vapi CLI

Manage your custom tools directly from the terminal:

```
|  |  |
| --- | --- |
| $ | # List all tools |
| > | vapi tool list |
| > |  |
| > | # Get tool details |
| > | vapi tool get <tool-id> |
| > |  |
| > | # Create a new tool (interactive) |
| > | vapi tool create |
| > |  |
| > | # Test a tool with sample data |
| > | vapi tool test <tool-id> |
| > |  |
| > | # Delete a tool |
| > | vapi tool delete <tool-id> |
```

Use the Vapi CLI to forward tool calls to your local server:

```
|  |  |
| --- | --- |
| $ | # Terminal 1: Create tunnel (e.g., with ngrok) |
| > | ngrok http 4242 |
| > |  |
| > | # Terminal 2: Forward events |
| > | vapi listen --forward-to localhost:3000/tools/webhook |
```

#####

`vapi listen` is a local forwarder that requires a separate tunneling service. Configure your tool’s server URL to use the tunnel’s public URL for testing. [Learn more →](/cli/webhook)

## Alternative: API Configuration

For advanced users who prefer programmatic control, you can also create and manage tools via the Vapi API:

### Creating Tools via API

```
|  |  |
| --- | --- |
| $ | curl --location 'https://api.vapi.ai/tool' \ |
| > | --header 'Content-Type: application/json' \ |
| > | --header 'Authorization: Bearer <YOUR_API_KEY>' \ |
| > | --data '{ |
| > | "type": "function", |
| > | "function": { |
| > | "name": "get_weather", |
| > | "description": "Retrieves current weather information for any location", |
| > | "parameters": { |
| > | "type": "object", |
| > | "properties": { |
| > | "location": { |
| > | "type": "string", |
| > | "description": "The city or location to get weather for" |
| > | } |
| > | }, |
| > | "required": ["location"] |
| > | } |
| > | }, |
| > | "server": { |
| > | "url": "https://api.openweathermap.org/data/2.5/weather" |
| > | } |
| > | }' |
```

### Adding Tools to Assistants via API

```
|  |  |
| --- | --- |
| $ | curl --location --request PATCH 'https://api.vapi.ai/assistant/ASSISTANT_ID' \ |
| > | --header 'Authorization: Bearer <YOUR_API_KEY>' \ |
| > | --header 'Content-Type: application/json' \ |
| > | --data '{ |
| > | "model": { |
| > | "provider": "openai", |
| > | "model": "gpt-4o", |
| > | "toolIds": ["your-tool-id-here"] |
| > | } |
| > | }' |
```

## Request Format: Understanding the Tool Call Request

When your server receives a tool call request from Vapi, it will be in the following format:

```
|  |  |
| --- | --- |
| 1 | { |
| 2 | "message": { |
| 3 | "timestamp": 1678901234567, |
| 4 | "type": "tool-calls", |
| 5 | "toolCallList": [ |
| 6 | { |
| 7 | "id": "toolu_01DTPAzUm5Gk3zxrpJ969oMF", |
| 8 | "name": "get_weather", |
| 9 | "arguments": { |
| 10 | "location": "San Francisco" |
| 11 | } |
| 12 | } |
| 13 | ], |
| 14 | "toolWithToolCallList": [ |
| 15 | { |
| 16 | "type": "function", |
| 17 | "name": "get_weather", |
| 18 | "parameters": { |
| 19 | "type": "object", |
| 20 | "properties": { |
| 21 | "location": { |
| 22 | "type": "string" |
| 23 | } |
| 24 | } |
| 25 | }, |
| 26 | "description": "Retrieves the current weather for a specified location" |
| 27 | }, |
| 28 | "server": { |
| 29 | "url": "https://api.openweathermap.org/data/2.5/weather" |
| 30 | }, |
| 31 | "messages": [], |
| 32 | "toolCall": { |
| 33 | "id": "toolu_01DTPAzUm5Gk3zxrpJ969oMF", |
| 34 | "type": "function", |
| 35 | "function": { |
| 36 | "name": "get_weather", |
| 37 | "parameters": { |
| 38 | "location": "San Francisco" |
| 39 | } |
| 40 | } |
| 41 | } |
| 42 | ], |
| 43 | "artifact": { |
| 44 | "messages": [] |
| 45 | }, |
| 46 | "assistant": { |
| 47 | "name": "Weather Assistant", |
| 48 | "description": "An assistant that provides weather information", |
| 49 | "model":{}, |
| 50 | "voice":{}, |
| 51 | "artifactPlans":{}, |
| 52 | "startSpeakingPlan":{} |
| 53 | }, |
| 54 | "call": { |
| 55 | "id": "call-uuid", |
| 56 | "orgId": "org-uuid", |
| 57 | "type": "webCall", |
| 58 | "assistant": {} |
| 59 | } |
| 60 | } |
| 61 | } |
```

#####

For the complete API reference, see [ServerMessageToolCalls Type Definition](https://github.com/VapiAI/server-sdk-typescript/blob/main/src/api/types/ServerMessageToolCalls.ts#L7).

## Server Response Format: Providing Results and Context

When your Vapi assistant calls a tool (via the server URL you configured), your server will receive an HTTP request containing information about the tool call. Upon processing the request and executing the desired function, your server needs to send back a response in the following JSON format:

```
|  |  |
| --- | --- |
| 1 | { |
| 2 | "results": [ |
| 3 | { |
| 4 | "toolCallId": "X", |
| 5 | "result": "Y" |
| 6 | } |
| 7 | ] |
| 8 | } |
```

**Breaking down the components:**

* **toolCallId (X):** This is a unique identifier included in the initial request from Vapi. It allows the assistant to match the response with the corresponding tool call, ensuring accurate processing and context preservation.
* **result (Y):** This field holds the actual output or result of your tool’s execution. The format and content of “result” will vary depending on the specific function of your tool. It could be a string, a number, an object, an array, or any other data structure that is relevant to the tool’s purpose.

**Example:**

Let’s revisit the weather tool example from before. If the tool successfully retrieves the weather for a given location, the server response might look like this:

```
|  |  |
| --- | --- |
| 1 | { |
| 2 | "results": [ |
| 3 | { |
| 4 | "toolCallId": "call_VaJOd8ZeZgWCEHDYomyCPfwN", |
| 5 | "result": "San Francisco's weather today is 62°C, partly cloudy." |
| 6 | } |
| 7 | ] |
| 8 | } |
```

**Some Key Points:**

* Pay attention to the required parameters and response format of your functions.
* Ensure your server is accessible and can handle the incoming requests from Vapi.
* Make sure to add “Tools Calls” in both the Server and Client messages and remove the function calling from it.

By following these guidelines and adapting the sample payload, you can easily configure a variety of tools to expand your Vapi assistant’s capabilities and provide a richer, more interactive user experience.

**Video Tutorial:**

Was this page helpful?

YesNo

[Edit this page](https://github.com/VapiAI/docs/blob/main/fern/tools/custom-tools.mdx?plain=1)

[Previous](/tools/voicemail-tool)[#### Client-side Tools (Web SDK)

Handle tool-calls in the browser without a server URL

Next](/tools/client-side-websdk)[Built with](https://buildwithfern.com/?utm_campaign=buildWith&utm_medium=docs&utm_source=docs.vapi.ai)

[![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/26deffd99814f963f515799f2088a7e3c3f0698c0e67d2af9a049ffb1b6dce6a/static/images/logo/logo-light.svg)![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/13da173132b2fc409e44316346addb90dcd175d65fb97f7ad6cd3d51df030382/static/images/logo/logo-dark.svg)](/)

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)