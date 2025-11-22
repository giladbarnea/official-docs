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
* [1. Connect Google Sheets Account](#1-connect-google-sheets-account)
* [2. Create and Configure Sheets Tool](#2-create-and-configure-sheets-tool)
* [3. Add Tool to Assistant](#3-add-tool-to-assistant)
* [Tool Configuration](#tool-configuration)
* [Google Sheets Add Row Tool](#google-sheets-add-row-tool)
* [Example Usage](#example-usage)
* [Best Practices](#best-practices)

[Assistants](/assistants/quickstart)[Tools](/tools)[External tools](/tools/google-calendar)

# Google Sheets Integration

Copy page

Connect your assistant to Google Sheets for seamless data entry.

The Google Sheets integration allows your Vapi assistant to interact with Google Sheets in a simple way:

1. Add new rows to existing Google Sheets

This enables your assistant to record information and add data to spreadsheets directly during phone calls.

#####

The Google Sheets integration currently only supports adding new rows to spreadsheets. It does not support reading from or modifying existing data in the spreadsheet.

## Prerequisites

Before you can use the Google Sheets integration, you need to:

1. Have a Google Sheets account
2. Have access to the Vapi Dashboard
3. Have an assistant created in Vapi
4. Have a Google Sheet created and ready to receive data

## Setup Steps

### 1. Connect Google Sheets Account

First, you need to connect your Google Sheets account to Vapi:

1. Navigate to the Vapi Dashboard
2. Go to **Providers Keys** > **Tools Provider** > **Google Sheets**
3. Click the **Connect** button
4. A Google authorization popup will appear
5. Follow the prompts to authorize Vapi to access your Google Sheets

#####

The authorization process will request access to your Google Sheets.

### 2. Create and Configure Sheets Tool

After connecting your Google Sheets account, create and configure the tool:

1. Go to **Dashboard** > **Tools** page
2. Click the **Create Tool** button
3. Select **Google Sheets** from the available options
4. Choose the Google Sheets Add Row Tool
5. Provide a name and description explaining when it should be invoked
6. Configure the tool with the following required fields:
   * `spreadsheetId`: The ID of your Google Sheet
   * `range`: The sheet name or range (e.g., “Sheet1” or “Sheet1!A:Z”)

#####

To find your spreadsheet ID:

1. Open your Google Sheet in a browser
2. Look at the URL: `https://docs.google.com/spreadsheets/d/SPREADSHEET_ID/edit`
3. Copy the SPREADSHEET\_ID portion (it’s a long string of letters, numbers, and special characters)

#####

The description field is crucial as it helps the AI model understand when and how to use the tool. Be specific about the scenarios and conditions when the tool should be invoked.

### 3. Add Tool to Assistant

Now, add the Google Sheets tool to your assistant:

1. Navigate to **Dashboard** > **Assistants** page
2. Select your assistant
3. Go to the **Tools** tab
4. In the tools dropdown, select the Google Sheets tool
5. Click **Publish** to save your changes

## Tool Configuration

### Google Sheets Add Row Tool

This tool uses the following fields to add data to your spreadsheet:

* `spreadsheetId`: The ID of your Google Sheet (found in the sheet’s URL)
* `range`: The range where the data should be added (e.g., “Sheet1” or “Sheet1!A:Z”)
* `values`: An array of values to be added as a new row

#####

The range field can be specified in two ways:

1. Just the sheet name (e.g., “Sheet1”) - This will append to the next empty row
2. Sheet name with range (e.g., “Sheet1!A:Z”) - This will append to the specified range

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
| 8 | "content": "You are a customer feedback assistant. After each customer service call, collect feedback using the following process:\n\n1. Ask the customer if they would like to provide feedback\n2. If yes, ask for their rating (1-5 stars)\n3. Ask for specific comments about their experience\n4. Ask for any suggestions for improvement\n5. Confirm the feedback before adding it to the spreadsheet\n\nUse the Add Row tool to record the feedback with the following columns:\n- Timestamp\n- Rating (1-5)\n- Comments\n- Suggestions\n\nAlways be polite and thank the customer for their feedback." |
| 9 | } |
| 10 | ], |
| 11 | "tools": [ |
| 12 | { |
| 13 | "type": "google.sheets.row.append", |
| 14 | "name": "addFeedback", |
| 15 | "description": "Use this tool to add customer feedback to the feedback spreadsheet. Collect all required information (rating, comments, suggestions) before adding the row." |
| 16 | } |
| 17 | ] |
| 18 | } |
| 19 | } |
```

## Best Practices

1. **Data Validation**: Ensure all data is properly formatted before adding to the spreadsheet
2. **Error Handling**: Include fallback responses for cases where the tool fails
3. **User Confirmation**: Always confirm with the user before adding data to the spreadsheet
4. **Sheet Structure**: Be aware of the spreadsheet’s structure and column requirements

[Need Help?

Join our Discord community for support with Google Sheets integration](https://discord.gg/pUFNcf2WmH)[API Reference

View the complete API documentation for tools](/api-reference/tools/create)

Was this page helpful?

YesNo

[Edit this page](https://github.com/VapiAI/docs/blob/main/fern/tools/google-sheets.mdx?plain=1)

[Previous](/tools/google-calendar)[#### Slack Integration

Connect your assistant to Slack for seamless message sending.

Next](/tools/slack)[Built with](https://buildwithfern.com/?utm_campaign=buildWith&utm_medium=docs&utm_source=docs.vapi.ai)

[![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/26deffd99814f963f515799f2088a7e3c3f0698c0e67d2af9a049ffb1b6dce6a/static/images/logo/logo-light.svg)![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/13da173132b2fc409e44316346addb90dcd175d65fb97f7ad6cd3d51df030382/static/images/logo/logo-dark.svg)](/)

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)