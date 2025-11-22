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

* [Available Tools](#available-tools)
* [Integration Tools](#integration-tools)
* [Key Features](#key-features)
* [Learn More](#learn-more)

[Assistants](/assistants/quickstart)

# Introduction to Tools

Copy page

Extend your assistant's capabilities with powerful function calling tools.

[**Tools**](/api-reference/tools/create) allow your assistant to take actions beyond just conversation. They enable your assistant to perform tasks like transferring calls, accessing external data, or triggering actions in your application. Tools can be either built-in default tools provided by Vapi or custom tools that you create.

There are three types of tools available:

1. **Default Tools**: Built-in functions provided by Vapi for common operations like call transfers and control.
2. **Custom Tools**: Your own functions that can be called by the assistant to interact with your systems.
3. **Integration Tools**: Pre-built integrations with platforms like [Make](https://www.make.com/en/integrations/vapi) and GoHighLevel (GHL) that let you trigger automated workflows via voice.

#####

Tools are configured as part of your assistant’s model configuration. You can find the complete API reference [here](/api-reference/tools/create-tool).

## Available Tools

[Default Tools

Built-in tools for call control, transfers, and basic operations](/tools/default-tools)[Custom Tools

Create your own tools to extend assistant capabilities](/tools/custom-tools)[Make & GHL Tools

Import Make scenarios and GHL workflows as voice-activated tools](/tools/GHL)

## Integration Tools

With Make and GHL integrations, you can:

* Import existing Make scenarios and GHL workflows directly into Vapi
* Trigger automated workflows using voice commands
* Connect your voice AI to hundreds of apps and services
* Automate complex business processes through voice interaction

Common use cases include:

* Booking appointments via voice
* Updating CRM records during calls
* Triggering email or SMS follow-ups
* Processing orders and payments
* Managing customer support tickets

## Key Features

Function Calling

Assistants can trigger functions based on conversation context

Async Support

Tools can run synchronously or asynchronously

Server Integration

Connect tools to your backend via webhooks

Error Handling

Built-in error handling and fallback options

## Learn More

[Make & GHL Integration Guide

Learn how to import and use Make scenarios and GHL workflows as voice-activated tools](/tools/GHL)[Join Our Discord

Get help with tool integrations from our community](https://discord.gg/pUFNcf2WmH)

Was this page helpful?

YesNo

[Edit this page](https://github.com/VapiAI/docs/blob/main/fern/tools/introduction.mdx?plain=1)

[Previous](/customization/custom-transcriber)[#### Default Tools

Adding Transfer Call, End Call, Dial Keypad, and API Request capabilities to your assistants.

Next](/tools/default-tools)[Built with](https://buildwithfern.com/?utm_campaign=buildWith&utm_medium=docs&utm_source=docs.vapi.ai)

[![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/26deffd99814f963f515799f2088a7e3c3f0698c0e67d2af9a049ffb1b6dce6a/static/images/logo/logo-light.svg)![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/13da173132b2fc409e44316346addb90dcd175d65fb97f7ad6cd3d51df030382/static/images/logo/logo-dark.svg)](/)

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)