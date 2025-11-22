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
* [1. Connect GoHighLevel Account](#1-connect-gohighlevel-account)
* [2. Create GoHighLevel Tools](#2-create-gohighlevel-tools)
* [3. Add Tools to Assistant](#3-add-tools-to-assistant)
* [4. Configure Assistant System Prompt](#4-configure-assistant-system-prompt)
* [Tool Configurations](#tool-configurations)
* [GoHighLevel Get Contact Tool](#gohighlevel-get-contact-tool)
* [GoHighLevel Create Contact Tool](#gohighlevel-create-contact-tool)
* [GoHighLevel Check Availability Tool](#gohighlevel-check-availability-tool)
* [GoHighLevel Create Event Tool](#gohighlevel-create-event-tool)
* [Example Usage](#example-usage)
* [Best Practices](#best-practices)

[Assistants](/assistants/quickstart)[Tools](/tools)[External tools](/tools/google-calendar)

# GoHighLevel Integration

Copy page

Connect your assistant to GoHighLevel for seamless appointment scheduling, contact creation, and availability checking.

The GoHighLevel integration empowers your Vapi voice agents to directly interact with your clients’ GoHighLevel calendars. Your agents can use a suite of tools to manage the appointment lifecycle: check if a contact already exists using the **Get Contact** tool, create new leads or clients with the **Create Contact** tool, query specific GHL calendars for open slots via the **Check Availability** tool, and secure appointments associated with a contact using the **Create Event** tool. This enables your voice agent to handle the entire booking process seamlessly within the GHL calendar that your agency or client already uses.

## Prerequisites

Before you can use the GoHighLevel integration, you need to:

1. Have a GoHighLevel account.
2. Have a calendar in GoHighLevel to which you have permission to create and edit events.
3. Have access to the Vapi Dashboard.

## Setup Steps

### 1. Connect GoHighLevel Account

First, you need to connect your GoHighLevel account to Vapi:

1. Navigate to the Vapi Dashboard.
2. Go to **Providers Keys** > **Tools Provider** > **GoHighLevel**.
3. Click the **Connect** button.
4. A GoHighLevel authorization popup will appear.
5. Follow the prompts to authorize Vapi to access your GoHighLevel account.

#####

The authorization process will request access to your GoHighLevel account to
manage contacts, calendars, and appointments.

![Connect GoHighLevel Account](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/6b4c13c611386edac9bb452b5cfcd0609a4a2458e87b7b63d2c0a3f3b883bb47/static/images/tools/gohighlevel-connect.png)

Connect GoHighLevel Account

### 2. Create GoHighLevel Tools

After connecting your GoHighLevel account, create the tools:

1. Go to **Dashboard** > **Tools** page.
2. Click the **Create Tool** button.
3. Select **GoHighLevel** from the available options.
4. Choose which tool(s) you want to create (e.g., Get Contact, Create Contact, Check Availability, Create Event).
5. For each tool, provide a clear and descriptive name. Adding a description is optional. If you leave it blank, Vapi will automatically generate a default description that explains the tool’s purpose and includes the current date, formatted using the timezone you specify in the tool’s metadata.
6. For the **Check Availability** and **Create Event** tools, ensure you provide a valid `calendarId`. You can find the `calendarId` for each of your calendars in GoHighLevel by navigating to **Settings** > **Calendars**. Each calendar listed will display its unique ID.

#####

When creating an event in GoHighLevel, a `contactId` is required. Therefore,
if you plan to use the **Create Event** tool, you **must** also add the **Get
Contact** and **Create Contact** tools. This allows the assistant to first
retrieve an existing contact’s ID or create a new contact, and then use that
ID to schedule the event.

![Create GoHighLevel Tools](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/b40ffa401836b0461b63e91dbe53cf1f59922fb28687548d73800f7a704dac03/static/images/tools/gohighlevel-create.png)

Create GoHighLevel Tools

### 3. Add Tools to Assistant

Now, add your chosen GoHighLevel tool(s) to your assistant. For an example scenario where you want your assistant to book appointments, including finding a suitable time and managing contact information, you would add all four tools: Get Contact, Create Contact, Check Availability, and Create Event.

1. Navigate to **Dashboard** > **Assistants** page.
2. Select your assistant.
3. Go to the **Tools** tab.
4. In the tools dropdown, select the GoHighLevel tool(s) you want to use.
5. Click **Publish** to save your changes.

![Add GHL Tools to Assistant](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/fe33ced96f6b35c586016e702d8886d9e3b90ab72f97c9b074a5c24556af77ea/static/images/tools/gohighlevel-select.png)

Add GHL Tools to Assistant

### 4. Configure Assistant System Prompt

After adding the GoHighLevel tools to your assistant, it’s crucial to provide a clear system prompt. This prompt guides the assistant on how and when to use each tool to achieve the desired workflow. For a typical appointment booking scenario, your system prompt instructs the AI on the sequence of operations and conditions for using each tool.

Here’s an example system prompt to guide your assistant. Remember to replace `ghl_contact_get`, `ghl_contact_create`, `ghl_check_availability`, and `ghl_create_event` with the exact names you gave your tools if they are different.

```
|  |
| --- |
| You are a helpful and efficient scheduling assistant. Your primary goal is to book appointments for users. Follow these steps carefully: |
|  |
| 1.  **Gather Information**: Start by asking for the caller\'s full name and email address. |
| 2.  **Check Existing Contact**: Use the `ghl_contact_get` tool to see if a contact already exists with the provided email. |
| 3.  **Create Contact (if needed)**: If no contact is found, use the `ghl_contact_create` tool to create a new contact with their name and email. |
| 4.  **Discuss Appointment Time**: Once you have a contact ID (either from an existing contact or a newly created one), ask the user for their preferred date and time for the appointment. |
| 5.  **Check Availability**: Use the `ghl_check_availability` tool to check for open slots. It\'s a good idea to check for the entire preferred day to offer alternatives if their initial request isn\'t available. |
| 6.  **Confirm Time**: Discuss the available options with the user and agree on a suitable time. |
| 7.  **Book Appointment**: Finally, use the `ghl_create_event` tool to book the appointment, ensuring you use the correct contact ID. |
|  |
| **Important Guidelines:** |
| *   Always use `ghl_contact_get` to check for an existing contact *before* attempting to create one with `ghl_contact_create`. |
| *   You *must* have a contact ID (from `ghl_contact_get` or `ghl_contact_create`) *before* you can book an appointment with `ghl_create_event`. |
| *   Always confirm availability with `ghl_check_availability` *before* attempting to book an appointment with `ghl_create_event`. |
```

## Tool Configurations

### GoHighLevel Get Contact Tool

This tool uses both or one of the following fields to retrieve an existing contact:

* `email`: The email address of the contact to search for.
* `phone`: The phone number of the contact to search for.

### GoHighLevel Create Contact Tool

This tool uses the following fields to create a new contact:

* `firstName`: The first name of the contact.
* `lastName`: The last name of the contact.
* `email`: The email address of the contact.
* `phone`: The phone number of the contact.

### GoHighLevel Check Availability Tool

This tool uses the following fields to check for open appointment slots:

* `calendarId`: The ID of the GoHighLevel calendar to check.
* `startDate`: The start of the time range to check for availability (epoch time in milliseconds).
* `endDate`: The end of the time range to check for availability (epoch time in milliseconds).
* `timezone`: The timezone for the availability check (e.g., “America/New\_York”).

### GoHighLevel Create Event Tool

This tool uses the following fields to book an appointment:

* `calendarId`: The ID of the GoHighLevel calendar in which to create the event.
* `contactId`: The ID of the GoHighLevel contact to associate with the event.
* `title`: The title or summary for the calendar event.
* `startTime`: The start date and time for the event in ISO 8601 format.
* `endTime`: The end date and time for the event in ISO 8601 format.

## Example Usage

Here’s how the tools can be configured in your assistant’s JSON setup:

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
| 8 | "content": "You are a highly efficient scheduling assistant for appointments. Your goal is to seamlessly book appointments into a calendar. Follow this precise workflow:\\n\\n1. **Gather User Info**: Start by politely asking for the caller's full name and email address.\\n2. **Check Existing Contact**: Use the 'getGHLContact' tool to check if a contact already exists with the provided email.\\n3. **Create New Contact (if necessary)**: If no contact is found with the email, use the 'createGHLContact' tool to create a new contact. You will need their name and email for this.\\n4. **Determine Appointment Needs**: Once you have a contact ID (either from an existing or newly created contact), ask the user for their preferred date and time for the appointment, and the purpose of the appointment (e.g., 'dental checkup', 'initial consultation').\\n5. **Check Calendar Availability**: Use the 'checkGHLAvailability' tool to find open slots for the requested period. Check a broad enough range (e.g., the entire day) to offer alternatives if the exact preferred time is unavailable.\\n6. **Confirm Time with User**: Discuss the available options and confirm a suitable appointment time with the user.\\n7. **Book the Appointment**: Use the 'createGHLEvent' tool to schedule the appointment. Use the purpose of the appointment as the event title.\\n\\n**Critical Notes:**\\n- Always use 'getGHLContact' before 'createGHLContact'.\\n- You MUST have a contactId before calling 'createGHLEvent'.\\n- Always use 'checkGHLAvailability' before 'createGHLEvent'.\\n- Assume all appointments are 30 minutes long unless specified otherwise by the user.\\n- Today's date is {{\"now\" | date: \"%A, %B %d, %Y, %I:%M %p\", \"America/New_York\"}}." |
| 9 | } |
| 10 | ], |
| 11 | "tools": [ |
| 12 | { |
| 13 | "type": "gohighlevel.calendar.availability.check", |
| 14 | "function": { |
| 15 | "name": "checkGHLAvailability", |
| 16 | "description": "Use this tool to check for available appointment slots in the GoHighLevel calendar. Today's date is {{\"now\" | date: \"%A, %B %d, %Y, %I:%M %p\", \"America/New_York\"}}." |
| 17 | }, |
| 18 | "metadata": { |
| 19 | "calendarId": "CALENDAR_ID", |
| 20 | "timeZone": "America/New_York" |
| 21 | } |
| 22 | }, |
| 23 | { |
| 24 | "type": "gohighlevel.calendar.event.create", |
| 25 | "function": { |
| 26 | "name": "ghl_create_event", |
| 27 | "description": "Use this tool to create a new appointment (event) in the GoHighLevel calendar. Today's date is {{\"now\" | date: \"%A, %B %d, %Y, %I:%M %p\", \"America/New_York\"}}. - All appointments are 30 minutes long unless specified otherwise by the user." |
| 28 | }, |
| 29 | "metadata": { |
| 30 | "calendarId": "CALENDAR_ID" |
| 31 | } |
| 32 | }, |
| 33 | { |
| 34 | "type": "gohighlevel.contact.get", |
| 35 | "function": { |
| 36 | "name": "getGHLContact", |
| 37 | "description": "Use this tool to retrieve an existing contact from GoHighLevel using the user's email address. This helps avoid duplicate entries." |
| 38 | } |
| 39 | }, |
| 40 | { |
| 41 | "type": "gohighlevel.contact.create", |
| 42 | "function": { |
| 43 | "name": "createGHLContact", |
| 44 | "description": "Use this tool to create a new contact in GoHighLevel." |
| 45 | } |
| 46 | } |
| 47 | ] |
| 48 | } |
| 49 | } |
```

## Best Practices

1. **Clear Instructions**: Provide clear instructions in your assistant’s system message about when to use each calendar tool
2. **Error Handling**: Include fallback responses for cases where either calendar tool fails
3. **Time Zone Awareness**: Always specify the correct timezone for events and availability checks. Also remember to format {{now}} with your desired timezone.
4. **Event Details**: Ensure all required fields are properly filled when creating events
5. **Availability Flow**: Check availability before attempting to schedule events to avoid conflicts
6. **Contact Prerequisite for Events**: Remember that creating an event in GoHighLevel requires a `contactId`. Ensure your assistant’s logic always fetches or creates a contact (using the `getGHLContact` and `createGHLContact` tools) before attempting to book an appointment with the `createGHLEvent` tool.

[Need Help?

Join our Discord community for support with GoHighLevel integration](https://discord.gg/pUFNcf2WmH)[API Reference

View the complete API documentation for tools](/api-reference/tools/create)

Was this page helpful?

YesNo

[Edit this page](https://github.com/VapiAI/docs/blob/main/fern/tools/go-high-level.mdx?plain=1)

[Previous](/tools/slack)[#### Introduction to Knowledge Bases

Learn how to create and integrate custom knowledge bases into your voice AI assistants.

Next](/knowledge-base)[Built with](https://buildwithfern.com/?utm_campaign=buildWith&utm_medium=docs&utm_source=docs.vapi.ai)

[![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/26deffd99814f963f515799f2088a7e3c3f0698c0e67d2af9a049ffb1b6dce6a/static/images/logo/logo-light.svg)![Logo](https://files.buildwithfern.com/https://vapi.docs.buildwithfern.com/13da173132b2fc409e44316346addb90dcd175d65fb97f7ad6cd3d51df030382/static/images/logo/logo-dark.svg)](/)

[Website](https://vapi.ai/)[Status](https://status.vapi.ai/)[Support](/support)[Dashboard](https://dashboard.vapi.ai/)