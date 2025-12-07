Title: Components - POML Documentation

URL Source: http://microsoft.github.io/poml/stable/language/components

Published Time: Sat, 20 Sep 2025 06:54:30 GMT

Markdown Content:
_Estimated time to read: 45 minutes_

Basic Components[¶](https://microsoft.github.io/poml/stable/language/components/#basic-components "Permanent link")
-------------------------------------------------------------------------------------------------------------------

### Audio[¶](https://microsoft.github.io/poml/stable/language/components/#audio "Permanent link")

Audio (`<audio>`) embeds an audio file in the content.

Accepts either a file path (`src`) or base64-encoded audio data (`base64`). The MIME type can be provided via `type` or will be inferred from the file extension.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages "Permanent link")

```
<Audio src="path/to/audio.mp3" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters "Permanent link")

*   **src**: Path to the audio file. If provided, the file will be read and encoded as base64.
*   **base64**: Base64-encoded audio data. Cannot be used together with `src`.
*   **alt**: The alternative text to show when the image cannot be displayed.
*   **type**: The MIME type of the audio (e.g., audio/mpeg, audio/wav). If not specified, it will be inferred from the file extension. The type must be consistent with the real type of the file. The consistency will NOT be checked or converted. The type can be specified with or without the `audio/` prefix.
*   **position**: Can be one of: top, bottom, here. The position of the image. Default is `here`.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, multimedia. Only when specified as `multimedia`, the image will be shown. Otherwise, the alt text will be shown. By default, it's `multimedia` when `alt` is not specified. Otherwise, it's undefined (inherit from parent).

### Bold[¶](https://microsoft.github.io/poml/stable/language/components/#bold "Permanent link")

Bold (`<b>`) emphasizes text in a bold style when using markup syntaxes.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_1 "Permanent link")

```
<p><b>Task:</b> Do something.</p>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_1 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### CaptionedParagraph[¶](https://microsoft.github.io/poml/stable/language/components/#captionedparagraph "Permanent link")

CaptionedParagraph (`<cp>` for short) creates a paragraph with a customized caption title.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_2 "Permanent link")

```
<cp caption="Constraints">
  <list>
    <item>Do not exceed 1000 tokens.</item>
    <item>Please use simple words.</item>
  </list>
</cp>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_2 "Permanent link")

*   **caption**: The title or label for the paragraph. Required.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. By default, it's same as `caption`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `header`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Code[¶](https://microsoft.github.io/poml/stable/language/components/#code "Permanent link")

Code is used to represent code snippets or inline code in markup syntaxes.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_3 "Permanent link")

```
<code inline="true">const x = 42;</code>
```

```
<code lang="javascript">
const x = 42;
</code>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_3 "Permanent link")

*   **inline**: Boolean. Whether to render code inline or as a block. Default is `true`.
*   **lang**: The language of the code snippet.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

Header (`<h>`) renders headings in markup syntaxes. It's commonly used to highlight titles or section headings. The header level will be automatically computed based on the context. Use SubContent (`<section>`) for nested content.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_4 "Permanent link")

```
<Header syntax="markdown">Section Title</Header>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_4 "Permanent link")

*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Inline[¶](https://microsoft.github.io/poml/stable/language/components/#inline "Permanent link")

Inline (`<span>`) is a container for inline content. When used with markup syntaxes, it wraps text in an inline style, without any preceding or following blank characters. In serializer syntaxes, it's treated as a generic value. Inline elements are not designed to be used alone (especially in serializer syntaxes). One might notice problematic renderings (e.g., speaker not applied) when using it alone.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_5 "Permanent link")

```
<p>I'm listening to <span>music</span> right now.</p>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_5 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Italic[¶](https://microsoft.github.io/poml/stable/language/components/#italic "Permanent link")

Italic (`<i>`) emphasizes text in an italic style when using markup syntaxes.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_6 "Permanent link")

```
Your <i>italicized</i> text.
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_6 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### List[¶](https://microsoft.github.io/poml/stable/language/components/#list "Permanent link")

List (`<list>`) is a container for multiple ListItem (`<item>`) elements. When used with markup syntaxes, a bullet or numbering is added.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_7 "Permanent link")

```
<list listStyle="decimal">
  <item>Item 1</item>
  <item>Item 2</item>
</list>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_7 "Permanent link")

*   **listStyle**: Can be one of: star, dash, plus, decimal, latin. The style for the list marker, such as dash or star. Default is `dash`.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### ListItem[¶](https://microsoft.github.io/poml/stable/language/components/#listitem "Permanent link")

ListItem (`<item>`) is an item within a List component. In markup mode, it is rendered with the specified bullet or numbering style.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_8 "Permanent link")

```
<list listStyle="decimal">
  <item blankLine="true">Item 1</item>
  <item>Item 2</item>
</list>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_8 "Permanent link")

*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Newline[¶](https://microsoft.github.io/poml/stable/language/components/#newline "Permanent link")

Newline (`<br>`) explicitly adds a line break, primarily in markup syntaxes. In serializer syntaxes, it's ignored.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_9 "Permanent link")

```
<br />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_9 "Permanent link")

*   **newLineCount**: Number. The number of linebreaks to add.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Paragraph[¶](https://microsoft.github.io/poml/stable/language/components/#paragraph "Permanent link")

Paragraph (`<p>`) is a standalone section preceded by and followed by two blank lines in markup syntaxes. It's mostly used for text contents.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_10 "Permanent link")

```
<p>Contents of the paragraph.</p>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_10 "Permanent link")

*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Strikethrough[¶](https://microsoft.github.io/poml/stable/language/components/#strikethrough "Permanent link")

Strikethrough (`<s>`, `<strike>`) indicates removed or invalid text in markup syntaxes.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_11 "Permanent link")

```
<s>This messages is removed.</s>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_11 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### SubContent[¶](https://microsoft.github.io/poml/stable/language/components/#subcontent "Permanent link")

SubContent (`<section>`) renders nested content, often following a header. The headers within the section will be automatically adjusted to a lower level.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_12 "Permanent link")

```
<h>Section Title</h>
<section>
  <h>Sub-section Title</h>  <!-- Nested header -->
  <p>Sub-section details</p>
</section>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_12 "Permanent link")

*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Text[¶](https://microsoft.github.io/poml/stable/language/components/#text "Permanent link")

Text (`<text>`, `<poml>`) is a wrapper for any contents. By default, it uses `markdown` syntax and writes the contents within it directly to the output. When used with "markup" syntaxes, it renders a standalone section preceded and followed by one blank line. It's mostly used in the root element of a prompt, but it should also work in any other places. This component will be automatically added as a wrapping root element if it's not provided: 1. If the first element is pure text contents, `<poml syntax="text">` will be added. 2. If the first element is a POML component, `<poml syntax="markdown">` will be added.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_13 "Permanent link")

```
<poml syntax="text">
Contents of the whole prompt.

1. Your customized list.
2. You don't need to know anything about POML.
</poml>
```

To render the whole prompt in markdown syntax with a "human" speaker:

```
<poml syntax="markdown" speaker="human">
  <p>You are a helpful assistant.</p>
  <p>What is the capital of France?</p>
</poml>
```

**Experimental usage with limits and priority:**

```
<poml syntax="markdown" tokenLimit="10">
  <p priority="1">This has lower priority and may be truncated first.</p>
  <p priority="3">This has higher priority and will be preserved longer.</p>
</poml>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_13 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Underline[¶](https://microsoft.github.io/poml/stable/language/components/#underline "Permanent link")

Underline (`<u>`) draws a line beneath text in markup syntaxes.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_14 "Permanent link")

```
This text is <u>underlined</u>.
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_14 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

Intentions[¶](https://microsoft.github.io/poml/stable/language/components/#intentions "Permanent link")
-------------------------------------------------------------------------------------------------------

### Example[¶](https://microsoft.github.io/poml/stable/language/components/#example "Permanent link")

Example is useful for providing a context, helping the model to understand what kind of inputs and outputs are expected. It can also be used to demonstrate the desired output style, clarifying the structure, tone, or level of detail in the response.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_15 "Permanent link")

```
<example>
  <input>What is the capital of France?</input>
  <output>Paris</output>
</example>
```

```
<task>Summarize the following passage in a single sentence.</task>
<example>
  <input caption="Passage">The sun provides energy for life on Earth through processes like photosynthesis.</input>
  <output caption="Summary">The sun is essential for energy and life processes on Earth.</output>
</example>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_15 "Permanent link")

*   **caption**: The title or label for the example paragraph. Default is `Example`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `example`.
*   **captionStyle**: Determines the style of the caption, applicable only for "markup" syntaxes. Default is `hidden`. Options include `header`, `bold`, `plain`, or `hidden`.
*   **chat**: Boolean. Indicates whether the example should be rendered in chat format. When used in a example set (`<examples>`), this is inherited from the example set. Otherwise, it defaults to `false` for "serializer" syntaxes and `true` for "markup" syntaxes.
*   **captionTextTransform**: Specifies text transformation for the caption, applicable only for "markup" syntaxes. Options are `upper`, `lower`, `capitalize`, or `none`. Default is `none`.
*   **captionColon**: Boolean. Indicates whether to append a colon after the caption. By default, this is true for `bold` or `plain` captionStyle, and false otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### ExampleInput[¶](https://microsoft.github.io/poml/stable/language/components/#exampleinput "Permanent link")

ExampleInput (`<input>`) is a paragraph that represents an example input. By default, it's spoken by a human speaker in a chat context, but you can manually specify the speaker.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_16 "Permanent link")

```
<input>What is the capital of France?</input>
```

When used with a template:

```
<input>What is the capital of {{country}}?</input>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_16 "Permanent link")

*   **caption**: The title or label for the example input paragraph. Default is `Input`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `input`.
*   **speaker**: The speaker for the example input. Default is `human` if chat context is enabled (see `<example>`).
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `hidden` if chat context is enabled. Otherwise, it's `bold`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionColon**: Boolean. Indicates whether to append a colon after the caption. By default, this is true for `bold` or `plain` captionStyle, and false otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### ExampleOutput[¶](https://microsoft.github.io/poml/stable/language/components/#exampleoutput "Permanent link")

ExampleOutput (`<output>`) is a paragraph that represents an example output. By default, it's spoken by a AI speaker in a chat context, but you can manually specify the speaker.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_17 "Permanent link")

```
<output>The capital of France is Paris.</output>
```

When used with a template:

```
<output>The capital of {{country}} is {{capital}}.</output>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_17 "Permanent link")

*   **caption**: The title or label for the example output paragraph. Default is `Output`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `output`.
*   **speaker**: The speaker for the example output. Default is `ai` if chat context is enabled (see `<example>`).
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `hidden` if chat context is enabled. Otherwise, it's `bold`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionColon**: Boolean. Indicates whether to append a colon after the caption. By default, this is true for `bold` or `plain` captionStyle, and false otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### ExampleSet[¶](https://microsoft.github.io/poml/stable/language/components/#exampleset "Permanent link")

Example set (`<examples>`) is a collection of examples that are usually presented in a list. With the example set, you can manage multiple examples under a single title and optionally an introducer, as well as the same `chat` format. You can also choose to use `<example>` purely without example set.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_18 "Permanent link")

```
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
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_18 "Permanent link")

*   **caption**: The title or label for the example set paragraph. Default is `Examples`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `examples`.
*   **chat**: Boolean. Indicates whether the examples should be rendered in chat format. By default, it's `true` for "markup" syntaxes and `false` for "serializer" syntaxes.
*   **introducer**: An optional introducer text to be displayed before the examples. For example, `Here are some examples:`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `header`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Hint[¶](https://microsoft.github.io/poml/stable/language/components/#hint "Permanent link")

Hint can be used anywhere in the prompt where you want to provide a helpful tip or explanation. It is usually a short and concise statement that guides the LLM in the right direction.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_19 "Permanent link")

```
<hint>Alice first purchased 4 apples and then 3 more, so she has 7 apples in total.</hint>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_19 "Permanent link")

*   **caption**: The title or label for the hint paragraph. Default is `Hint`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `hint`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `bold`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionColon**: Boolean. Indicates whether to append a colon after the caption. By default, this is true for `bold` or `plain` captionStyle, and false otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Introducer[¶](https://microsoft.github.io/poml/stable/language/components/#introducer "Permanent link")

Introducer is a paragraph before a long paragraph (usually a list of examples, steps, or instructions). It serves as a context introducing what is expected to follow.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_20 "Permanent link")

```
<introducer>Here are some examples.</introducer>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_20 "Permanent link")

*   **caption**: The title or label for the introducer paragraph. Default is `Introducer`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `introducer`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `hidden`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### OutputFormat[¶](https://microsoft.github.io/poml/stable/language/components/#outputformat "Permanent link")

Output format deals with the format in which the model should provide the output. It can be a specific format such as JSON, XML, or CSV, or a general format such as a story, a diagram or steps of instructions. Please refrain from specifying too complex formats that the model may not be able to generate, such as a PDF file or a video.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_21 "Permanent link")

```
<output-format>Respond with a JSON without additional characters or punctuations.</output-format>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_21 "Permanent link")

*   **caption**: The title or label for the output format paragraph. Default is `Output Format`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `outputFormat`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `header`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Question[¶](https://microsoft.github.io/poml/stable/language/components/#question "Permanent link")

Question (`<qa>`) is actually a combination of a question and a prompt for the answer. It's usually used at the end of a prompt to ask a question. The question is followed by a prompt for answer (e.g., `Answer:`) to guide the model to respond.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_22 "Permanent link")

```
<qa>What is the capital of France?</qa>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_22 "Permanent link")

*   **questionCaption**: The title or label for the question paragraph. Default is `Question`.
*   **answerCaption**: The title or label for the answer paragraph. Default is `Answer`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `question`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `bold`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Role[¶](https://microsoft.github.io/poml/stable/language/components/#role "Permanent link")

Specifies the role you want the language model to assume when responding. Defining a role provides the model with a perspective or context, such as a scientist, poet, child, or any other persona you choose.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_23 "Permanent link")

```
<role>You are a data scientist.</role>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_23 "Permanent link")

*   **caption**: The title or label for the role paragraph. Default is `Role`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `role`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `header`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### StepwiseInstructions[¶](https://microsoft.github.io/poml/stable/language/components/#stepwiseinstructions "Permanent link")

StepwiseInstructions that elaborates the task by providing a list of steps or instructions. Each step should be concise and clear, and the list should be easy to follow.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_24 "Permanent link")

```
<stepwise-instructions>
  <list>
    <item>Interpret and rewrite user's query.</item>
    <item>Think of a plan to solve the query.</item>
    <item>Generate a response based on the plan.</item>
  </list>
</stepwise-instructions>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_24 "Permanent link")

*   **caption**: The title or label for the stepwise instructions paragraph. Default is `Stepwise Instructions`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `stepwiseInstructions`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `header`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Task[¶](https://microsoft.github.io/poml/stable/language/components/#task "Permanent link")

Task represents the action you want the language model to perform. It is a directive or instruction that you want the model to follow. Task is usually not long, but rather a concise and clear statement. Users can also include a list of steps or instructions to complete the task.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_25 "Permanent link")

```
<task>Cook a recipe on how to prepare a beef dish.</task>
```

When including a list of steps:

```
<task>
  Planning a schedule for a travel.
  <list>
    <item>Decide on the destination and plan the duration.</item>
    <item>Find useful information about the destination.</item>
    <item>Write down the schedule for each day.</item>
  </list>
</task>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_25 "Permanent link")

*   **caption**: The title or label for the task paragraph. Default is `Task`.
*   **captionSerialized**: The serialized version of the caption when using "serializer" syntaxes. Default is `task`.
*   **captionStyle**: Can be one of: header, bold, plain, hidden. Determines the style of the caption, applicable only for "markup" syntaxes. Default is `header`.
*   **captionTextTransform**: Can be one of: upper, level, capitalize, none. Specifies text transformation for the caption, applicable only for "markup" syntaxes. Default is `none`.
*   **captionEnding**: Can be one of: colon, newline, colon-newline, none. A caption can ends with a colon, a newline or simply nothing. If not specified, it defaults to `colon` for `bold` or `plain` captionStyle, and `none` otherwise.
*   **blankLine**: Boolean. Whether to add one more blank line (2 in total) before and after the paragraph.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

Data Displays[¶](https://microsoft.github.io/poml/stable/language/components/#data-displays "Permanent link")
-------------------------------------------------------------------------------------------------------------

### Document[¶](https://microsoft.github.io/poml/stable/language/components/#document "Permanent link")

Displaying an external document like PDF, TXT or DOCX.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_26 "Permanent link")

To display a Word document without including the real multimedia:

```
<Document src="sample.docx" multimedia="false"/>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_26 "Permanent link")

*   **src**: The source file to read the data from. This must be provided if records is not provided.
*   **buffer**: Buffer. Document data buffer. Recommended to use `src` instead unless you want to use a string.
*   **base64**: Base64 encoded string of the document data. Mutually exclusive with `src` and `buffer`.
*   **parser**: Can be one of: auto, pdf, docx, txt. The parser to use for reading the data. If not provided, it will be inferred from the file extension.
*   **multimedia**: Boolean. If true, the multimedias will be displayed. If false, the alt strings will be displayed at best effort. Default is `true`.
*   **selectedPages**: The pages to be selected. This is only available **for PDF documents**. If not provided, all pages will be selected. You can use a string like `2` to specify a single page, or slice like `2:4` to specify a range of pages (2 inclusive, 4 exclusive). The pages selected are **0-indexed**. Negative indexes like `-1` is not supported here.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Image[¶](https://microsoft.github.io/poml/stable/language/components/#image "Permanent link")

Image (`<img>`) displays an image in the content. Alternatively, it can also be shown as an alt text by specifying the `syntax` prop. Note that syntax must be specified as `multimedia` to show the image.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_27 "Permanent link")

```
<Image src="path/to/image.jpg" alt="Image description" position="bottom" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_27 "Permanent link")

*   **src**: The path to the image file.
*   **alt**: The alternative text to show when the image cannot be displayed.
*   **base64**: The base64 encoded image data. It can not be specified together with `src`.
*   **type**: The MIME type of the image **to be shown**. If not specified, it will be inferred from the file extension. If specified, the image will be converted to the specified type. Can be `image/jpeg`, `image/png`, etc., or without the `image/` prefix.
*   **position**: Can be one of: top, bottom, here. The position of the image. Default is `here`.
*   **maxWidth**: Number. The maximum width of the image to be shown.
*   **maxHeight**: Number. The maximum height of the image to be shown.
*   **resize**: Number. The ratio to resize the image to to be shown.
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, multimedia. Only when specified as `multimedia`, the image will be shown. Otherwise, the alt text will be shown. By default, it's `multimedia` when `alt` is not specified. Otherwise, it's undefined (inherit from parent).
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Object[¶](https://microsoft.github.io/poml/stable/language/components/#object "Permanent link")

Object (`<obj>`, `<dataObj>`) displays external data or object content. When in serialize mode, it's serialized according to the given serializer.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_28 "Permanent link")

```
<Object syntax="json" data="{ key: 'value' }" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_28 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml. The syntax or serializer of the content. Default is `json`.
*   **data**: Object. The data object to render.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Table[¶](https://microsoft.github.io/poml/stable/language/components/#table "Permanent link")

Displaying a table with records and columns.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_29 "Permanent link")

```
<table records="{{[{ name: 'Alice', age: 20 }, { name: 'Bob', age: 30 }]}}" />
```

To import an excel file, and display the first 10 records in csv syntax:

```
<table src="data.xlsx" parser="excel" maxRecords="10" syntax="csv" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_29 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, text, csv, tsv, xml. The output syntax of the content.
*   **records**: Object. A list, each element is an object / dictionary / list of elements. The keys are the fields and the values are the data in cells.
*   **columns**: Object. A list of column definitions. Each column definition is an object with keys "field", "header", and "description". The field is the key in the record object, the header is displayed in the top row, and the description is meant to be an explanation. Columns are optional. If not provided, the columns are inferred from the records.
*   **src**: The source file to read the data from. This must be provided if records is not provided.
*   **parser**: Can be one of: auto, csv, tsv, excel, json, jsonl. The parser to use for reading the data. If not provided, it will be inferred from the file extension.
*   **selectedColumns**: Object. The selected columns to display. If not provided, all columns will be displayed. It should be an array of column field names, e.g. `["name", "age"]`; or a string like `2:4` to select columns 2 (inclusive) to 4 (exclusive). There is a special column name called `index` which is the enumeration of the records starting from 0. You can also use a special value called `+index` to add the index column to the original table.
*   **selectedRecords**: Object. The selected records to display. If not provided, all records will be displayed. It should be an array of record indices, e.g. `[0, 1]`; or a string like `2:4` to select records 2 (inclusive) to 4 (exclusive).
*   **maxRecords**: Number. The maximum number of records to display. If not provided, all records will be displayed.
*   **maxColumns**: Number. The maximum number of columns to display. If not provided, all columns will be displayed.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

Utilities[¶](https://microsoft.github.io/poml/stable/language/components/#utilities "Permanent link")
-----------------------------------------------------------------------------------------------------

### AiMessage[¶](https://microsoft.github.io/poml/stable/language/components/#aimessage "Permanent link")

Wrap the contents in a AI message.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_30 "Permanent link")

```
<ai-msg>Paris</ai-msg>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_30 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### Conversation[¶](https://microsoft.github.io/poml/stable/language/components/#conversation "Permanent link")

Display a conversation between system, human and AI.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_31 "Permanent link")

```
<conversation messages="{{[{ speaker: 'human', content: 'What is the capital of France?' }, { speaker: 'ai', content: 'Paris' }]}}" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_31 "Permanent link")

*   **messages**: Object. A list of message. Each message should have a `speaker` and a `content` field.
*   **selectedMessages**: The messages to be selected. If not provided, all messages will be selected. You can use a string like `2` to specify a single message, or slice like `2:4` to specify a range of messages (2 inclusive, 4 exclusive). Or use `-6:` to select the last 6 messages.

### Folder[¶](https://microsoft.github.io/poml/stable/language/components/#folder "Permanent link")

Displays a directory structure as a tree.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_32 "Permanent link")

To display a directory structure with a filter for Python files:

```
<folder src="project_dir" filter=".*\.py$" maxDepth="3" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_32 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, text, xml. The output syntax of the content.
*   **src**: The source directory path to display.
*   **data**: TreeItemData[]. Alternative to src, directly provide tree data structure.
*   **filter**: RegExp. A regular expression to filter files. The regex is applied to the folder names and file names (not the full path). Directories are included by default unless all of their nested content is filtered out. When filter is on, empty directories will not be shown.
*   **maxDepth**: Number. Maximum depth of directory traversal. Default is 3.
*   **showContent**: Boolean. Whether to show file contents. Default is false.

### HumanMessage[¶](https://microsoft.github.io/poml/stable/language/components/#humanmessage "Permanent link")

Wrap the contents in a user message.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_33 "Permanent link")

```
<user-msg>What is the capital of France?</user-msg>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_33 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### MessageContent[¶](https://microsoft.github.io/poml/stable/language/components/#messagecontent "Permanent link")

Display a message content.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_34 "Permanent link")

```
<msg-content content="What is the capital of France?" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_34 "Permanent link")

*   **content**: Object. The content of the message. It can be a string, or an array of strings and multimedia content.

### SystemMessage[¶](https://microsoft.github.io/poml/stable/language/components/#systemmessage "Permanent link")

Wrap the contents in a system message.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_35 "Permanent link")

```
<system-msg>Answer concisely.</system-msg>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_35 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content. Note `xml` and `text` are experimental.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **name**: The name of the content, used in serialization.
*   **type**: The type of the content, used in serialization.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

### ToolRequest[¶](https://microsoft.github.io/poml/stable/language/components/#toolrequest "Permanent link")

ToolRequest represents an AI-generated tool request with parameters. Used to display tool calls made by AI models.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_36 "Permanent link")

```
<ToolRequest id="123" name="search" parameters={{ query: "hello" }} />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_36 "Permanent link")

*   **id**: Tool request ID
*   **name**: Tool name
*   **parameters**: Any. Tool input parameters
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. Default is `ai`.

### ToolResponse[¶](https://microsoft.github.io/poml/stable/language/components/#toolresponse "Permanent link")

ToolResponse represents the result of a tool execution. Used to display tool execution results with rich content.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_37 "Permanent link")

```
<ToolResponse id="123" name="search">
 <Paragraph>Search results for "hello":</Paragraph>
 <List>
  <ListItem>Result 1</ListItem>
  <ListItem>Result 2</ListItem>
 </List>
</ToolResponse>
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_37 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of ToolResponse is special. It is always `multimedia` for itself. The syntax is used to render the content inside. If not specified, it will inherit from the parent context.
*   **id**: Tool call ID to respond to
*   **name**: Tool name
*   **speaker**: Can be one of: human, ai, system, tool. The speaker of the content. Default is `tool`.

### Tree[¶](https://microsoft.github.io/poml/stable/language/components/#tree "Permanent link")

Renders a tree structure in various formats.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_38 "Permanent link")

```
<Tree items={treeData} syntax="markdown" showContent={true} />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_38 "Permanent link")

*   **syntax**: Can be one of: markdown, html, json, yaml, text, xml. The output syntax to use for rendering the tree
*   **items**: TreeItemData[]. Array of tree items to render
*   **showContent**: Boolean. Whether to show content values of tree items

### Webpage[¶](https://microsoft.github.io/poml/stable/language/components/#webpage "Permanent link")

Displays content from a webpage.

#### Usages[¶](https://microsoft.github.io/poml/stable/language/components/#usages_39 "Permanent link")

Display content from a URL:

```
<webpage url="https://example.com" />
```

Extract only specific content using a selector:

```
<webpage url="https://example.com" selector="main article" />
```

Convert HTML to structured POML components:

```
<webpage url="https://example.com" extractText="false" />
```

#### Parameters[¶](https://microsoft.github.io/poml/stable/language/components/#parameters_39 "Permanent link")

*   **url**: The URL of the webpage to fetch and display.
*   **src**: Local file path to an HTML file to display.
*   **buffer**: Buffer. HTML content as string or buffer.
*   **base64**: Base64 encoded HTML content.
*   **extractText**: Boolean. Whether to extract plain text content (true) or convert HTML to structured POML (false). Default is false.
*   **selector**: CSS selector to extract specific content from the page (e.g., "article", ".content", "#main"). Default is "body".
*   **syntax**: Can be one of: markdown, html, json, yaml, xml, text. The syntax of the content.
*   **className**: A class name for quickly styling the current block with stylesheets.
*   **speaker**: Can be one of: human, ai, system. The speaker of the content. By default, it's determined by the context and the content.
*   **writerOptions**: Object. **Experimental.**. Optional JSON string to customize the format of markdown headers, JSON indents, etc.
*   **whiteSpace**: Can be one of: pre, filter, trim. **Experimental.** Controls how whitespace is handled in text content. `'pre'` (default when `syntax` is `text`): Preserves all whitespace as-is; `'filter'` (default when `syntax` is not `text`): Removes leading/trailing whitespace and normalizes internal whitespace in the gaps; `'trim'`: Trims whitespace from the beginning and end.
*   **charLimit**: Number. **Experimental.** Soft character limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **tokenLimit**: Number. **Experimental.** Soft token limit before truncation is applied. Content exceeding this limit will be truncated with a marker.
*   **priority**: Number. **Experimental.** Priority used when truncating globally. Lower numbers are dropped first when content needs to be reduced to fit limits.

