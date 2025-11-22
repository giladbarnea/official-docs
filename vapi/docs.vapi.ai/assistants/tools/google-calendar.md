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
* [1. Connect Google Calendar Account](#1-connect-google-calendar-account)
* [2. Create Calendar Tools](#2-create-calendar-tools)
* [3. Add Tools to Assistant](#3-add-tools-to-assistant)
* [Tool Configurations](#tool-configurations)
* [Google Calendar Create Event Tool](#google-calendar-create-event-tool)
* [Google Calendar Check Availability Tool](#google-calendar-check-availability-tool)
* [Example Usage](#example-usage)
* [Best Practices](#best-practices)

[Assistants](/assistants/quickstart)[Tools](/tools)[External tools](/tools/google-calendar)

# Google Calendar Integration

Copy page

Connect your assistant to Google Calendar for seamless appointment scheduling and availability checking.

The Google Calendar integration allows your Vapi assistant to interact with Google Calendar in two ways:

1. Create calendar events through voice commands
2. Check calendar availability for scheduling

This enables your assistant to schedule appointments, meetings, and other calendar events directly during phone calls, as well as check when you’re available for meetings.

## Prerequisites

Before you can use the Google Calendar integration, you need to:

1. Have a Google Calendar account
2. Have access to the Vapi Dashboard
3. Have an assistant created in Vapi

## Setup Steps

### 1. Connect Google Calendar Account

First, you need to connect your Google Calendar account to Vapi:

1. Navigate to the Vapi Dashboard
2. Go to **Providers Keys** > **Tools Provider** > **Google Calendar**
3. Click the **Connect** button
4. A Google authorization popup will appear
5. Follow the prompts to authorize Vapi to access your Google Calendar

#####

The authorization process will request access to your Google Calendar to create events and check availability.

![Select files from your Assistant](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/395da737930e7b912b3811f8ecc361f31a99e223b84ff0105aa6b42d24f4bc15/static/images/tools/google-calendar-connect.png)

Connect Google Calendar

### 2. Create Calendar Tools

After connecting your Google Calendar account, create the tools:

1. Go to **Dashboard** > **Tools** page
2. Click the **Create Tool** button
3. Select **Google Calendar** from the available options
4. Choose which tool(s) you want to create:
   * Google Calendar Create Event Tool
   * Google Calendar Check Availability Tool
5. For each tool, provide a name and description explaining when it should be invoked

#####

The description field is crucial as it helps the AI model understand when and how to use each tool. Be specific about the scenarios and conditions when each tool should be invoked.

![Tool Configuration](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/e925a6e33314cf82a8d86a7448dedbf2e524bb444df6dfa66757b28b8c92d383/static/images/tools/google-calendar-create.png)

Create Calendar Tools

### 3. Add Tools to Assistant

Now, add your chosen calendar tool(s) to your assistant:

1. Navigate to **Dashboard** > **Assistants** page
2. Select your assistant
3. Go to the **Tools** tab
4. In the tools dropdown, select the calendar tool(s) you want to use
5. Click **Publish** to save your changes

![Add Tools to Assistant](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/76663c930993dfde222ed3c90a8f81c51b8015513f702829001f34c65b5fdf70/static/images/tools/assistant-select-google-calendar-tool.png)

Add Tools to Assistant

## Tool Configurations

### Google Calendar Create Event Tool

This tool uses the following fields to create events:

* `summary`: The title or description of the calendar event
* `startDateTime`: The start date and time of the event
* `endDateTime`: The end date and time of the event
* `attendees`: A list of email addresses for people to invite to the event
* `timeZone`: The timezone for the event, defaults to UTC
* `calendarId`: The calendar ID to create the event in, defaults to the primary calendar

### Google Calendar Check Availability Tool

This tool uses the following fields to check availability:

* `startDateTime`: The start of the time range to check
* `endDateTime`: The end of the time range to check
* `timeZone`: The timezone for the availability check, defaults to UTC
* `calendarId`: The calendar ID to check availability in, defaults to the primary calendar

#####

All datetime fields should be provided in ISO 8601 format.

## Example Usage

Here’s how the tools can be used in your assistant’s configuration:

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
| 8 | "content": "You are a scheduling assistant. When users want to schedule an appointment, first check their availability using the Check Availability tool, then use the Create Event tool to schedule the event if they're available.\n\n- Gather date and time range to check availability.\n- To book an appointment, gather the purpose of the appointment, ex: general checkup, dental cleaning and etc.\n\nNotes\n- Use the purpose as summary for booking appointment.\n- Current date: {{now}}" |
| 9 | } |
| 10 | ], |
| 11 | "tools": [ |
| 12 | { |
| 13 | "type": "google.calendar.availability.check", |
| 14 | "name": "checkAvailability", |
| 15 | "description": "Use this tool to check calendar availability." |
| 16 | }, |
| 17 | { |
| 18 | "type": "google.calendar.event.create", |
| 19 | "name": "scheduleAppointment", |
| 20 | "description": "Use this tool to schedule appointments and create calendar events. Notes: - All appointments are 30 mins. \n- Current date/time: {{now}}" |
| 21 | } |
| 22 | ] |
| 23 | } |
| 24 | } |
```

## Best Practices

1. **Clear Instructions**: Provide clear instructions in your assistant’s system message about when to use each calendar tool
2. **Error Handling**: Include fallback responses for cases where either calendar tool fails
3. **Time Zone Awareness**: Always specify the correct timezone for events and availability checks
4. **Event Details**: Ensure all required fields are properly filled when creating events
5. **Availability Flow**: Check availability before attempting to schedule events to avoid conflicts

[Need Help?

Join our Discord community for support with Google Calendar integration](https://discord.gg/pUFNcf2WmH)[API Reference

View the complete API documentation for tools](/api-reference/tools/create)

Was this page helpful?

YesNo

[Edit this page](https://github.com/VapiAI/docs/blob/main/fern/tools/google-calendar.mdx?plain=1)

[Previous](/tools/custom-tools-troubleshooting)[#### Google Sheets Integration

Connect your assistant to Google Sheets for seamless data entry.

Next](/tools/google-sheets)[Built with](https://buildwithfern.com/?utm_campaign=buildWith&utm_medium=docs&utm_source=docs.vapi.ai)

[![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/26deffd99814f963f515799f2088a7e3c3f0698c0e67d2af9a049ffb1b6dce6a/static/images/logo/logo-light.svg)![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/13da173132b2fc409e44316346addb90dcd175d65fb97f7ad6cd3d51df030382/static/images/logo/logo-dark.svg)](/)

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)