Title: Prompt - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/python/reference/prompt

Markdown Content:
Skip to content
POML Documentation
0.0.8
latest
0.0.8
Prompt
Initializing search
 microsoft/poml
4.8k
251
POML Documentation
Getting Started
Tutorial
Tutorial
Quick Start
Travel Expense Agent
Travel Expense Agent
Part 1 - Build Workflow
Part 2 - Debug with VS Code Extension
Language Spec
Language Spec
Basic Syntax
Template Engine
Meta
Fine-grained Control
Fine-grained Control
White Space Control
Token Control
References
References
Components
Visual Studio Code
Visual Studio Code
Overview
Features
Configuration
Python
Python
Overview
Tracing
Integrations
Integrations
OpenAI
LangChain
MCP
MLflow
AgentOps
Weave
References
References
Core
Integration
Prompt
TypeScript
TypeScript
Overview
References
References
index
base
cli
essentials
file
writer
components
Deep Dive
Deep Dive
IR Specification
Proposals
Proposals
Extended POML
Table of contents
 Prompt
 __enter__
 __exit__
 ai_message
 audio
 bold
 captioned_paragraph
 code
 conversation
 document
 dump_xml
 example
 example_input
 example_output
 example_set
 folder
 header
 hint
 human_message
 image
 inline
 introducer
 italic
 list
 list_item
 message_content
 newline
 object
 output_format
 paragraph
 question
 render
 role
 stepwise_instructions
 strikethrough
 sub_content
 system_message
 table
 task
 text
 tool_request
 tool_response
 tree
 underline
 webpage
Python POML Native Prompt¶

Estimated time to read: 1 minute

 poml.prompt.Prompt ¶

Bases: _TagLib

Builds an XML structure using ElementTree, supporting context-managed tags.

Source code in python/poml/prompt.py
 __enter__() ¶

Enter a context for building a prompt.

The Prompt instance can be reused across multiple with blocks. On each entry we simply reset the stack of currently open elements while preserving any previously created root elements so that additional tags can be appended in subsequent sessions.

Source code in python/poml/prompt.py
 __exit__(exc_type, exc_val, exc_tb) ¶

Cleans up Prompt state upon exiting a 'with' block.

Source code in python/poml/prompt.py
 ai_message(**kwargs) ¶

Wrap the contents in a AI message.

Example
<ai-msg>Paris</ai-msg>

Source code in python/poml/_tags.py
 audio(src=None, base64=None, alt=None, type=None, position=None, syntax=None, **kwargs) ¶

Audio (<audio>) embeds an audio file in the content.

Accepts either a file path (src) or base64-encoded audio data (base64). The MIME type can be provided via type or will be inferred from the file extension.

Parameters:

Name	Type	Description	Default
src	Optional[str]	

Path to the audio file. If provided, the file will be read and encoded as base64.

	None
base64	Optional[str]	

Base64-encoded audio data. Cannot be used together with src.

	None
alt	Optional[str]	

The alternative text to show when the image cannot be displayed.

	None
type	Optional[str]	

The MIME type of the audio (e.g., audio/mpeg, audio/wav). If not specified, it will be inferred from the file extension. The type must be consistent with the real type of the file. The consistency will NOT be checked or converted. The type can be specified with or without the audio/ prefix.

	None
position	Optional[str]	

The position of the image. Default is here. Default is "here". Choices: "top", "bottom", "here".

	None
syntax	Optional[str]	

Only when specified as multimedia, the image will be shown. Otherwise, the alt text will be shown. By default, it's multimedia when alt is not specified. Otherwise, it's undefined (inherit from parent). Choices: "markdown", "html", "json", "yaml", "xml", "multimedia".

	None
Example
<Audio src="path/to/audio.mp3" />

Source code in python/poml/_tags.py
 bold(**kwargs) ¶

Bold (<b>) emphasizes text in a bold style when using markup syntaxes.

Example
<p><b>Task:</b> Do something.</p>

Source code in python/poml/_tags.py
 captioned_paragraph(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

CaptionedParagraph (<cp> for short) creates a paragraph with a customized caption title.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the paragraph. Required.

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. By default, it's same as caption.

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is header. Default is "header". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<cp caption="Constraints">
  <list>
    <item>Do not exceed 1000 tokens.</item>
    <item>Please use simple words.</item>
  </list>
</cp>

Source code in python/poml/_tags.py
 code(inline=None, lang=None, **kwargs) ¶

Code is used to represent code snippets or inline code in markup syntaxes.

Parameters:

Name	Type	Description	Default
inline	Optional[bool]	

Whether to render code inline or as a block. Default is true. Default is "true".

	None
lang	Optional[str]	

The language of the code snippet.

	None
Example
<code inline="true">const x = 42;</code>

<code lang="javascript">
const x = 42;
</code>

Source code in python/poml/_tags.py
 conversation(messages=None, selectedMessages=None, **kwargs) ¶

Display a conversation between system, human and AI.

Parameters:

Name	Type	Description	Default
messages	Optional[Any]	

A list of message. Each message should have a speaker and a content field.

	None
selectedMessages	Optional[str]	

The messages to be selected. If not provided, all messages will be selected. You can use a string like 2 to specify a single message, or slice like 2:4 to specify a range of messages (2 inclusive, 4 exclusive). Or use -6: to select the last 6 messages.

	None
Example
<conversation messages="{{[{ speaker: 'human', content: 'What is the capital of France?' }, { speaker: 'ai', content: 'Paris' }]}}" />

Source code in python/poml/_tags.py
 document(src=None, buffer=None, base64=None, parser=None, multimedia=None, selectedPages=None, **kwargs) ¶

Displaying an external document like PDF, TXT or DOCX.

Parameters:

Name	Type	Description	Default
src	Optional[str]	

The source file to read the data from. This must be provided if records is not provided.

	None
buffer	Optional[bytes]	

Document data buffer. Recommended to use src instead unless you want to use a string.

	None
base64	Optional[str]	

Base64 encoded string of the document data. Mutually exclusive with src and buffer.

	None
parser	Optional[str]	

The parser to use for reading the data. If not provided, it will be inferred from the file extension. Choices: "auto", "pdf", "docx", "txt".

	None
multimedia	Optional[bool]	

If true, the multimedias will be displayed. If false, the alt strings will be displayed at best effort. Default is true. Default is "true".

	None
selectedPages	Optional[str]	

The pages to be selected. This is only available for PDF documents. If not provided, all pages will be selected. You can use a string like 2 to specify a single page, or slice like 2:4 to specify a range of pages (2 inclusive, 4 exclusive). The pages selected are 0-indexed. Negative indexes like -1 is not supported here.

	None
Example

To display a Word document without including the real multimedia:

<Document src="sample.docx" multimedia="false"/>


Source code in python/poml/_tags.py
 dump_xml() ¶

Dumps the generated XML string, pretty-printed by default (useful for debugging).

Source code in python/poml/prompt.py
 example(caption=None, captionSerialized=None, captionStyle=None, chat=None, captionTextTransform=None, captionColon=None, **kwargs) ¶

Example is useful for providing a context, helping the model to understand what kind of inputs and outputs are expected. It can also be used to demonstrate the desired output style, clarifying the structure, tone, or level of detail in the response.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the example paragraph. Default is Example. Default is "Example".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is example. Default is "example".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is hidden. Options include header, bold, plain, or hidden. Default is "hidden".

	None
chat	Optional[bool]	

Indicates whether the example should be rendered in chat format. When used in a example set (<examples>), this is inherited from the example set. Otherwise, it defaults to false for "serializer" syntaxes and true for "markup" syntaxes.

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Options are upper, lower, capitalize, or none. Default is none. Default is "none".

	None
captionColon	Optional[bool]	

Indicates whether to append a colon after the caption. By default, this is true for bold or plain captionStyle, and false otherwise.

	None
Example
<example>
  <input>What is the capital of France?</input>
  <output>Paris</output>
</example>

<task>Summarize the following passage in a single sentence.</task>
<example>
  <input caption="Passage">The sun provides energy for life on Earth through processes like photosynthesis.</input>
  <output caption="Summary">The sun is essential for energy and life processes on Earth.</output>
</example>

Source code in python/poml/_tags.py
 example_input(caption=None, captionSerialized=None, speaker=None, captionStyle=None, captionTextTransform=None, captionColon=None, **kwargs) ¶

ExampleInput (<input>) is a paragraph that represents an example input. By default, it's spoken by a human speaker in a chat context, but you can manually specify the speaker.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the example input paragraph. Default is Input. Default is "Input".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is input. Default is "input".

	None
speaker	Optional[str]	

The speaker for the example input. Default is human if chat context is enabled (see <example>). Default is "human".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is hidden if chat context is enabled. Otherwise, it's bold. Default is "hidden". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionColon	Optional[bool]	

Indicates whether to append a colon after the caption. By default, this is true for bold or plain captionStyle, and false otherwise.

	None
Example
<input>What is the capital of France?</input>


When used with a template:

<input>What is the capital of {{country}}?</input>

Source code in python/poml/_tags.py
 example_output(caption=None, captionSerialized=None, speaker=None, captionStyle=None, captionTextTransform=None, captionColon=None, **kwargs) ¶

ExampleOutput (<output>) is a paragraph that represents an example output. By default, it's spoken by a AI speaker in a chat context, but you can manually specify the speaker.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the example output paragraph. Default is Output. Default is "Output".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is output. Default is "output".

	None
speaker	Optional[str]	

The speaker for the example output. Default is ai if chat context is enabled (see <example>). Default is "ai".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is hidden if chat context is enabled. Otherwise, it's bold. Default is "hidden". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionColon	Optional[bool]	

Indicates whether to append a colon after the caption. By default, this is true for bold or plain captionStyle, and false otherwise.

	None
Example
<output>The capital of France is Paris.</output>


When used with a template:

<output>The capital of {{country}} is {{capital}}.</output>

Source code in python/poml/_tags.py
 example_set(caption=None, captionSerialized=None, chat=None, introducer=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

Example set (<examples>) is a collection of examples that are usually presented in a list. With the example set, you can manage multiple examples under a single title and optionally an introducer, as well as the same chat format. You can also choose to use <example> purely without example set.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the example set paragraph. Default is Examples. Default is "Examples".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is examples. Default is "examples".

	None
chat	Optional[bool]	

Indicates whether the examples should be rendered in chat format. By default, it's true for "markup" syntaxes and false for "serializer" syntaxes.

	None
introducer	Optional[str]	

An optional introducer text to be displayed before the examples. For example, Here are some examples:.

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is header. Default is "header". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<examples chat={{true}}>
  <example>
    <input>What is the capital of France?</input>
    <output>Paris</output>
  </example>
  <example>
    <input>What is the capital of Germany?</input>
    <output>Berlin</output>
  </example>
</examples>

Source code in python/poml/_tags.py
 folder(syntax=None, src=None, data=None, filter=None, maxDepth=None, showContent=None, **kwargs) ¶

Displays a directory structure as a tree.

Parameters:

Name	Type	Description	Default
syntax	Optional[str]	

The output syntax of the content. Choices: "markdown", "html", "json", "yaml", "text", "xml".

	None
src	Optional[str]	

The source directory path to display.

	None
data	Optional[List[Any]]	

Alternative to src, directly provide tree data structure.

	None
filter	Optional[str]	

A regular expression to filter files. The regex is applied to the folder names and file names (not the full path). Directories are included by default unless all of their nested content is filtered out. When filter is on, empty directories will not be shown.

	None
maxDepth	Optional[int]	

Maximum depth of directory traversal. Default is 3.

	None
showContent	Optional[bool]	

Whether to show file contents. Default is false.

	None
Example

To display a directory structure with a filter for Python files:

<folder src="project_dir" filter=".*\.py$" maxDepth="3" />


Source code in python/poml/_tags.py
 header(**kwargs) ¶

Header (<h>) renders headings in markup syntaxes. It's commonly used to highlight titles or section headings. The header level will be automatically computed based on the context. Use SubContent (<section>) for nested content.

Example
<Header syntax="markdown">Section Title</Header>

Source code in python/poml/_tags.py
 hint(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionColon=None, **kwargs) ¶

Hint can be used anywhere in the prompt where you want to provide a helpful tip or explanation. It is usually a short and concise statement that guides the LLM in the right direction.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the hint paragraph. Default is Hint. Default is "Hint".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is hint. Default is "hint".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is bold. Default is "bold". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionColon	Optional[bool]	

Indicates whether to append a colon after the caption. By default, this is true for bold or plain captionStyle, and false otherwise.

	None
Example
<hint>Alice first purchased 4 apples and then 3 more, so she has 7 apples in total.</hint>

Source code in python/poml/_tags.py
 human_message(**kwargs) ¶

Wrap the contents in a user message.

Example
<user-msg>What is the capital of France?</user-msg>

Source code in python/poml/_tags.py
 image(src=None, alt=None, base64=None, type=None, position=None, maxWidth=None, maxHeight=None, resize=None, syntax=None, **kwargs) ¶

Image (<img>) displays an image in the content. Alternatively, it can also be shown as an alt text by specifying the syntax prop. Note that syntax must be specified as multimedia to show the image.

Parameters:

Name	Type	Description	Default
src	Optional[str]	

The path to the image file.

	None
alt	Optional[str]	

The alternative text to show when the image cannot be displayed.

	None
base64	Optional[str]	

The base64 encoded image data. It can not be specified together with src.

	None
type	Optional[str]	

The MIME type of the image to be shown. If not specified, it will be inferred from the file extension. If specified, the image will be converted to the specified type. Can be image/jpeg, image/png, etc., or without the image/ prefix.

	None
position	Optional[str]	

The position of the image. Default is here. Default is "here". Choices: "top", "bottom", "here".

	None
maxWidth	Optional[int]	

The maximum width of the image to be shown.

	None
maxHeight	Optional[int]	

The maximum height of the image to be shown.

	None
resize	Optional[float]	

The ratio to resize the image to to be shown.

	None
syntax	Optional[str]	

Only when specified as multimedia, the image will be shown. Otherwise, the alt text will be shown. By default, it's multimedia when alt is not specified. Otherwise, it's undefined (inherit from parent). Choices: "markdown", "html", "json", "yaml", "xml", "multimedia".

	None
Example
<Image src="path/to/image.jpg" alt="Image description" position="bottom" />

Source code in python/poml/_tags.py
 inline(syntax=None, className=None, speaker=None, writerOptions=None, whiteSpace=None, charLimit=None, tokenLimit=None, priority=None, **kwargs) ¶

Inline (<span>) is a container for inline content. When used with markup syntaxes, it wraps text in an inline style, without any preceding or following blank characters. In serializer syntaxes, it's treated as a generic value. Inline elements are not designed to be used alone (especially in serializer syntaxes). One might notice problematic renderings (e.g., speaker not applied) when using it alone.

Parameters:

Name	Type	Description	Default
syntax	Optional[str]	

The syntax of the content. Choices: "markdown", "html", "json", "yaml", "xml", "text".

	None
className	Optional[str]	

A class name for quickly styling the current block with stylesheets.

	None
speaker	Optional[str]	

The speaker of the content. By default, it's determined by the context and the content. Choices: "human", "ai", "system".

	None
writerOptions	Optional[Any]	

Experimental.. Optional JSON string to customize the format of markdown headers, JSON indents, etc.

	None
whiteSpace	Optional[str]	

Experimental. Controls how whitespace is handled in text content. 'pre' (default when syntax is text): Preserves all whitespace as-is; 'filter' (default when syntax is not text): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; 'trim': Trims whitespace from the beginning and end. Choices: "pre", "filter", "trim".

	None
charLimit	Optional[float]	

Experimental. Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.

	None
tokenLimit	Optional[float]	

Experimental. Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.

	None
priority	Optional[float]	

Experimental. Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

	None
Example
<p>I'm listening to <span>music</span> right now.</p>

Source code in python/poml/_tags.py
 introducer(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

Introducer is a paragraph before a long paragraph (usually a list of examples, steps, or instructions). It serves as a context introducing what is expected to follow.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the introducer paragraph. Default is Introducer. Default is "Introducer".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is introducer. Default is "introducer".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is hidden. Default is "hidden". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<introducer>Here are some examples.</introducer>

Source code in python/poml/_tags.py
 italic(**kwargs) ¶

Italic (<i>) emphasizes text in an italic style when using markup syntaxes.

Example
Your <i>italicized</i> text.

Source code in python/poml/_tags.py
 list(listStyle=None, **kwargs) ¶

List (<list>) is a container for multiple ListItem (<item>) elements. When used with markup syntaxes, a bullet or numbering is added.

Parameters:

Name	Type	Description	Default
listStyle	Optional[str]	

The style for the list marker, such as dash or star. Default is dash. Default is "dash". Choices: "star", "dash", "plus", "decimal", "latin".

	None
Example
<list listStyle="decimal">
  <item>Item 1</item>
  <item>Item 2</item>
</list>

Source code in python/poml/_tags.py
 list_item(**kwargs) ¶

ListItem (<item>) is an item within a List component. In markup mode, it is rendered with the specified bullet or numbering style.

Example
<list listStyle="decimal">
  <item blankLine="true">Item 1</item>
  <item>Item 2</item>
</list>

Source code in python/poml/_tags.py
 message_content(content=None, **kwargs) ¶

Display a message content.

Parameters:

Name	Type	Description	Default
content	Optional[Any]	

The content of the message. It can be a string, or an array of strings and multimedia content.

	None
Example
<msg-content content="What is the capital of France?" />

Source code in python/poml/_tags.py
 newline(newLineCount=None, **kwargs) ¶

Newline (<br>) explicitly adds a line break, primarily in markup syntaxes. In serializer syntaxes, it's ignored.

Parameters:

Name	Type	Description	Default
newLineCount	Optional[float]	

The number of linebreaks to add.

	None
Example
<br />

Source code in python/poml/_tags.py
 object(syntax=None, data=None, **kwargs) ¶

Object (<obj>, <dataObj>) displays external data or object content. When in serialize mode, it's serialized according to the given serializer.

Parameters:

Name	Type	Description	Default
syntax	Optional[str]	

The syntax or serializer of the content. Default is json. Default is "json". Choices: "markdown", "html", "json", "yaml", "xml".

	None
data	Optional[Any]	

The data object to render.

	None
Example
<Object syntax="json" data="{ key: 'value' }" />

Source code in python/poml/_tags.py
 output_format(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

Output format deals with the format in which the model should provide the output. It can be a specific format such as JSON, XML, or CSV, or a general format such as a story, a diagram or steps of instructions. Please refrain from specifying too complex formats that the model may not be able to generate, such as a PDF file or a video.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the output format paragraph. Default is Output Format.

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is outputFormat. Default is "outputFormat".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is header. Default is "header". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<output-format>Respond with a JSON without additional characters or punctuations.</output-format>

Source code in python/poml/_tags.py
 paragraph(blankLine=None, **kwargs) ¶

Paragraph (<p>) is a standalone section preceded by and followed by two blank lines in markup syntaxes. It's mostly used for text contents.

Parameters:

Name	Type	Description	Default
blankLine	Optional[bool]	

Whether to add one more blank line (2 in total) before and after the paragraph.

	None
Example
<p>Contents of the paragraph.</p>

Source code in python/poml/_tags.py
 question(questionCaption=None, answerCaption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

Question (<qa>) is actually a combination of a question and a prompt for the answer. It's usually used at the end of a prompt to ask a question. The question is followed by a prompt for answer (e.g., Answer:) to guide the model to respond.

Parameters:

Name	Type	Description	Default
questionCaption	Optional[str]	

The title or label for the question paragraph. Default is Question. Default is "Question".

	None
answerCaption	Optional[str]	

The title or label for the answer paragraph. Default is Answer. Default is "Answer".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is question. Default is "question".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is bold. Default is "bold". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<qa>What is the capital of France?</qa>

Source code in python/poml/_tags.py
 render(chat=True, context=None, stylesheet=None) ¶

Renders the final XML. Raises error if tags are still open.

Source code in python/poml/prompt.py
 role(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

Specifies the role you want the language model to assume when responding. Defining a role provides the model with a perspective or context, such as a scientist, poet, child, or any other persona you choose.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the role paragraph. Default is Role. Default is "Role".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is role. Default is "role".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is header. Default is "header". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<role>You are a data scientist.</role>

Source code in python/poml/_tags.py
 stepwise_instructions(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

StepwiseInstructions that elaborates the task by providing a list of steps or instructions. Each step should be concise and clear, and the list should be easy to follow.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the stepwise instructions paragraph. Default is Stepwise Instructions.

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is stepwiseInstructions. Default is "stepwiseInstructions".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is header. Default is "header". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<stepwise-instructions>
  <list>
    <item>Interpret and rewrite user's query.</item>
    <item>Think of a plan to solve the query.</item>
    <item>Generate a response based on the plan.</item>
  </list>
</stepwise-instructions>

Source code in python/poml/_tags.py
 strikethrough(**kwargs) ¶

Strikethrough (<s>, <strike>) indicates removed or invalid text in markup syntaxes.

Example
<s>This messages is removed.</s>

Source code in python/poml/_tags.py
 sub_content(**kwargs) ¶

SubContent (<section>) renders nested content, often following a header. The headers within the section will be automatically adjusted to a lower level.

Example
<h>Section Title</h>
<section>
  <h>Sub-section Title</h>  <!-- Nested header -->
  <p>Sub-section details</p>
</section>

Source code in python/poml/_tags.py
 system_message(**kwargs) ¶

Wrap the contents in a system message.

Example
<system-msg>Answer concisely.</system-msg>

Source code in python/poml/_tags.py
 table(syntax=None, records=None, columns=None, src=None, parser=None, selectedColumns=None, selectedRecords=None, maxRecords=None, maxColumns=None, **kwargs) ¶

Displaying a table with records and columns.

Parameters:

Name	Type	Description	Default
syntax	Optional[str]	

The output syntax of the content. Choices: "markdown", "html", "json", "text", "csv", "tsv", "xml".

	None
records	Optional[Any]	

A list, each element is an object / dictionary / list of elements. The keys are the fields and the values are the data in cells.

	None
columns	Optional[Any]	

A list of column definitions. Each column definition is an object with keys "field", "header", and "description". The field is the key in the record object, the header is displayed in the top row, and the description is meant to be an explanation. Columns are optional. If not provided, the columns are inferred from the records.

	None
src	Optional[str]	

The source file to read the data from. This must be provided if records is not provided.

	None
parser	Optional[str]	

The parser to use for reading the data. If not provided, it will be inferred from the file extension. Choices: "auto", "csv", "tsv", "excel", "json", "jsonl".

	None
selectedColumns	Optional[Any]	

The selected columns to display. If not provided, all columns will be displayed. It should be an array of column field names, e.g. ["name", "age"]; or a string like 2:4 to select columns 2 (inclusive) to 4 (exclusive). There is a special column name called index which is the enumeration of the records starting from 0. You can also use a special value called +index to add the index column to the original table.

	None
selectedRecords	Optional[Any]	

The selected records to display. If not provided, all records will be displayed. It should be an array of record indices, e.g. [0, 1]; or a string like 2:4 to select records 2 (inclusive) to 4 (exclusive).

	None
maxRecords	Optional[int]	

The maximum number of records to display. If not provided, all records will be displayed.

	None
maxColumns	Optional[int]	

The maximum number of columns to display. If not provided, all columns will be displayed.

	None
Example
<table records="{{[{ name: 'Alice', age: 20 }, { name: 'Bob', age: 30 }]}}" />


To import an excel file, and display the first 10 records in csv syntax:

<table src="data.xlsx" parser="excel" maxRecords="10" syntax="csv" />

Source code in python/poml/_tags.py
 task(caption=None, captionSerialized=None, captionStyle=None, captionTextTransform=None, captionEnding=None, **kwargs) ¶

Task represents the action you want the language model to perform. It is a directive or instruction that you want the model to follow. Task is usually not long, but rather a concise and clear statement. Users can also include a list of steps or instructions to complete the task.

Parameters:

Name	Type	Description	Default
caption	Optional[str]	

The title or label for the task paragraph. Default is Task. Default is "Task".

	None
captionSerialized	Optional[str]	

The serialized version of the caption when using "serializer" syntaxes. Default is task. Default is "task".

	None
captionStyle	Optional[str]	

Determines the style of the caption, applicable only for "markup" syntaxes. Default is header. Default is "header". Choices: "header", "bold", "plain", "hidden".

	None
captionTextTransform	Optional[str]	

Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is none. Default is "none". Choices: "upper", "level", "capitalize", "none".

	None
captionEnding	Optional[str]	

A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to colon for bold or plain captionStyle, and none otherwise. Choices: "colon", "newline", "colon-newline", "none".

	None
Example
<task>Cook a recipe on how to prepare a beef dish.</task>


When including a list of steps:

<task>
  Planning a schedule for a travel.
  <list>
    <item>Decide on the destination and plan the duration.</item>
    <item>Find useful information about the destination.</item>
    <item>Write down the schedule for each day.</item>
  </list>
</task>


Source code in python/poml/_tags.py
 text(content) ¶

Adds text content to the currently open XML element.

Source code in python/poml/prompt.py
 tool_request(id=None, name=None, parameters=None, speaker=None, **kwargs) ¶

ToolRequest represents an AI-generated tool request with parameters. Used to display tool calls made by AI models.

Parameters:

Name	Type	Description	Default
id	Optional[str]	

Tool request ID

	None
name	Optional[str]	

Tool name

	None
parameters	Optional[Any]	

Tool input parameters

	None
speaker	Optional[str]	

The speaker of the content. Default is ai. Default is "ai". Choices: "human", "ai", "system".

	None
Example
<ToolRequest id="123" name="search" parameters={{ query: "hello" }} />

Source code in python/poml/_tags.py
 tool_response(syntax=None, id=None, name=None, speaker=None, **kwargs) ¶

ToolResponse represents the result of a tool execution. Used to display tool execution results with rich content.

Parameters:

Name	Type	Description	Default
syntax	Optional[str]	

The syntax of ToolResponse is special. It is always multimedia for itself. The syntax is used to render the content inside. If not specified, it will inherit from the parent context. Choices: "markdown", "html", "json", "yaml", "xml", "text".

	None
id	Optional[str]	

Tool call ID to respond to

	None
name	Optional[str]	

Tool name

	None
speaker	Optional[str]	

The speaker of the content. Default is tool. Default is "tool". Choices: "human", "ai", "system", "tool".

	None
Example
<ToolResponse id="123" name="search">
 <Paragraph>Search results for "hello":</Paragraph>
 <List>
  <ListItem>Result 1</ListItem>
  <ListItem>Result 2</ListItem>
 </List>
</ToolResponse>

Source code in python/poml/_tags.py
 tree(syntax=None, items=None, showContent=None, **kwargs) ¶

Renders a tree structure in various formats.

Parameters:

Name	Type	Description	Default
syntax	Optional[str]	

The output syntax to use for rendering the tree Choices: "markdown", "html", "json", "yaml", "text", "xml".

	None
items	Optional[List[Any]]	

Array of tree items to render

	None
showContent	Optional[bool]	

Whether to show content values of tree items

	None
Example
<Tree items={treeData} syntax="markdown" showContent={true} />

Source code in python/poml/_tags.py
 underline(**kwargs) ¶

Underline (<u>) draws a line beneath text in markup syntaxes.

Example
This text is <u>underlined</u>.

Source code in python/poml/_tags.py
 webpage(url=None, src=None, buffer=None, base64=None, extractText=None, selector=None, **kwargs) ¶

Displays content from a webpage.

Parameters:

Name	Type	Description	Default
url	Optional[str]	

The URL of the webpage to fetch and display.

	None
src	Optional[str]	

Local file path to an HTML file to display.

	None
buffer	Optional[bytes]	

HTML content as string or buffer.

	None
base64	Optional[str]	

Base64 encoded HTML content.

	None
extractText	Optional[bool]	

Whether to extract plain text content (true) or convert HTML to structured POML (false). Default is false.

	None
selector	Optional[str]	

CSS selector to extract specific content from the page (e.g., "article", ".content", "#main"). Default is "body".

	None
Example

Display content from a URL:

<webpage url="https://example.com" />


Extract only specific content using a selector:

<webpage url="https://example.com" selector="main article" />


Convert HTML to structured POML components:

<webpage url="https://example.com" extractText="false" />


Source code in python/poml/_tags.py
3 months ago
 
3 months ago
 
Yuge Zhang
Made with Material for MkDocs

