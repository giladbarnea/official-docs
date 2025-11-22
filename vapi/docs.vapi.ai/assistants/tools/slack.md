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

* [Prerequisites](#prerequisites)
* [Setup Steps](#setup-steps)
* [1. Connect Slack Account](#1-connect-slack-account)
* [2. Create Slack Tool](#2-create-slack-tool)
* [3. Add Tool to Assistant](#3-add-tool-to-assistant)
* [Tool Configuration](#tool-configuration)
* [Slack Send Message Tool](#slack-send-message-tool)
* [Example Usage](#example-usage)
* [Best Practices](#best-practices)

[Assistants](/assistants/quickstart)[Tools](/tools)[External tools](/tools/google-calendar)

# Slack Integration

Copy page

Connect your assistant to Slack for seamless message sending.

The Slack integration allows your Vapi assistant to send messages to a pre-configured Slack channel during phone calls. This enables your assistant to notify team members, send updates, or share information directly through Slack.

## Prerequisites

Before you can use the Slack integration, you need to:

1. Have a Slack workspace
2. Have access to the Vapi Dashboard
3. Have an assistant created in Vapi
4. Have a Slack channel created where messages will be sent

## Setup Steps

### 1. Connect Slack Account

First, you need to connect your Slack workspace to Vapi:

1. Navigate to the Vapi Dashboard
2. Go to **Providers Keys** > **Tools Provider** > **Slack**
3. Click the **Connect** button
4. A Slack authorization popup will appear
5. Follow the prompts to authorize Vapi to access your Slack workspace

#####

The authorization process will request access to send messages to your Slack workspace.

### 2. Create Slack Tool

After connecting your Slack workspace, create the tool:

1. Go to **Dashboard** > **Tools** page
2. Click the **Create Tool** button
3. Select **Slack** from the available options
4. Choose the Slack Send Message Tool
5. Provide a name and description explaining when it should be invoked
6. In the description field, specify the Slack channel where messages should be sent (e.g., “Send urgent notifications to the #customer-support channel”)

#####

The description field is crucial as it helps the AI model understand when and how to use the tool, and also specifies which channel to send messages to. Be specific about the scenarios, conditions, and target channel when the tool should be invoked.

### 3. Add Tool to Assistant

Now, add the Slack tool to your assistant:

1. Navigate to **Dashboard** > **Assistants** page
2. Select your assistant
3. Go to the **Functions** tab
4. In the tools dropdown, select the Slack tool
5. Click **Publish** to save your changes

## Tool Configuration

### Slack Send Message Tool

This tool sends messages to Slack channels based on the configuration specified in the tool’s description:

* The target channel is specified in the tool’s description field
* The message content is dynamically generated by the AI based on the conversation context

#####

The channel name should be specified in the description in the format “#channel-name”. Make sure the bot has been added to the channel before sending messages.

## Example Usage

Here’s how the tool can be used in your assistant’s configuration:

```
|  |  |
| --- | --- |
| 1 | { |
| 2 | "model": { |
| 3 | "provider": "openai", |
| 4 | "model": "gpt-4o", |
| 5 | "messages": [ |
| 6 | { |
| 7 | "role": "system", |
| 8 | "content": "You are a customer service assistant. When a customer requests a callback or needs urgent attention, use the Slack tool to notify the support team. Always be professional and concise in your Slack messages." |
| 9 | } |
| 10 | ], |
| 11 | "tools": [ |
| 12 | { |
| 13 | "type": "slack.message.send", |
| 14 | "name": "notifySupport", |
| 15 | "description": "Send urgent notifications to the #customer-support channel when a customer needs immediate attention or requests a callback. Include customer name, phone number, reason for callback, and any time constraints." |
| 16 | } |
| 17 | ] |
| 18 | } |
| 19 | } |
```

## Best Practices

1. **Channel Selection**: Always verify the correct channel name before sending messages
2. **Message Formatting**: Use clear and concise language in your Slack messages
3. **Error Handling**: Include fallback responses for cases where the tool fails
4. **User Confirmation**: Always confirm with the user before sending notifications to Slack
5. **Channel Access**: Ensure the Slack bot has been added to the target channel

[Need Help?

Join our Discord community for support with Slack integration](https://discord.gg/pUFNcf2WmH)[API Reference

View the complete API documentation for tools](/api-reference/tools/create)

Was this page helpful?

YesNo

[Edit this page](https://github.com/VapiAI/docs/blob/main/fern/tools/slack.mdx?plain=1)

[Previous](/tools/google-sheets)[#### GoHighLevel Integration

Connect your assistant to GoHighLevel for seamless appointment scheduling, contact creation, and availability checking.

Next](/tools/go-high-level)[Built with](https://buildwithfern.com/?utm_campaign=buildWith&utm_medium=docs&utm_source=docs.vapi.ai)

[![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/26deffd99814f963f515799f2088a7e3c3f0698c0e67d2af9a049ffb1b6dce6a/static/images/logo/logo-light.svg)![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/13da173132b2fc409e44316346addb90dcd175d65fb97f7ad6cd3d51df030382/static/images/logo/logo-dark.svg)](/)

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)