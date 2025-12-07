[Skip to content](https://biomejs.dev/reference/configuration/#_top)

# Configuration

## `$schema`

[Section titled “$schema”](https://biomejs.dev/reference/configuration/#schema)

Allows to pass a path to a JSON schema file.

We publish a JSON schema file for our `biome.json`/`biome.jsonc` files.

You can specify a relative path to the schema inside the `@biomejs/biome` NPM
package if it is installed in the `node_modules` folder:

```
{

  "$schema": "./node_modules/@biomejs/biome/configuration_schema.json"

}
```

If you have problems with resolving the physical file, you can use the one
published on this site:

```
{

  "$schema": "https://biomejs.dev/schemas/2.0.5/schema.json"

}
```

## `extends`

[Section titled “extends”](https://biomejs.dev/reference/configuration/#extends)

A list of paths to other Biome configuration files. Biome resolves and applies
the configuration settings from the files contained in the `extends` list, and
eventually applies the options contained in this `biome.json`/`biome.jsonc`
file.

The order of paths to extend goes from least relevant to most relevant.

Since v2, this option accepts a string that must match the value `"//"`, which can be used
when setting up [monorepos](https://biomejs.dev/guides/big-projects#monorepo)

## `root`

[Section titled “root”](https://biomejs.dev/reference/configuration/#root)

Whether this configuration should be treated as a root. By default, any configuration file is considered a root by default.
When a configuration file is a “nested configuration”, it must set `"root": false`, otherwise an error is thrown.

This is required so Biome can orchestrate multiple files in CLI and editors at the same time.

> Default: `true`

## `formatter`

[Section titled “formatter”](https://biomejs.dev/reference/configuration/#formatter)

These options apply to all languages. There are additional language-specific formatting options below.

### `formatter.enabled`

[Section titled “formatter.enabled”](https://biomejs.dev/reference/configuration/#formatterenabled)

Enables Biome’s formatter.

> Default: `true`

### `formatter.includes`

[Section titled “formatter.includes”](https://biomejs.dev/reference/configuration/#formatterincludes)

A list of [glob patterns](https://biomejs.dev/reference/configuration/#glob-syntax-reference) of files to format.

The following example formats all files with a `.js` extension inside the `src`
folder:

```
{

  "formatter": {

    "includes": ["src/**/*.js"]

  }

}
```

`*` is used to match _all files in a folder_, while `**` _recursively_ matches
all files and subfolders in a folder. For more information on globs, see the
[glob syntax reference](https://biomejs.dev/reference/configuration/#glob-syntax-reference)

`includes` also supports negated patterns, or exceptions. These are patterns
that start with `!` and they can be used to instruct Biome to process all files
_except_ those matching the negated pattern.

Note that exceptions are processed in order, allowing you to specify exceptions
to exceptions.

Consider the following example:

```
{

  "formatter": {

    "includes": ["**", "!**/*.test.js", "**/special.test.js"]

  }

}
```

This example specifies that:

1. All files inside all (sub)folders are formatted, thanks to the `**` pattern…
2. … _except_ when those files have a `.test.js` extension…
3. … but the file `special.test.ts` _is_ still formatted.

This means that:

- `src/app.js` **is** formatted.
- `src/app.test.js` **is not** formatted.
- `src/special.test.js` **is** formatted.

Note that `formatter.includes` is applied _after_`files.includes`. This means
that any file that is not matched by `files.includes` can no longer be matched
`formatter.includes`. This means the following example **doesn’t work**:

```
{

  "files": {

    "includes": "src/**"

  },

  "formatter": {

    // This matches nothing because there is no overlap with `files.includes`:

    "includes": "scripts/**"

  }

}
```

If `formatter.includes` is not specified, all files matched by
[`files.includes`](https://biomejs.dev/reference/configuration/#filesincludes) are formatted.

### `formatter.formatWithErrors`

[Section titled “formatter.formatWithErrors”](https://biomejs.dev/reference/configuration/#formatterformatwitherrors)

Allows to format a document that has syntax errors.

```
{

  "formatter": {

    "formatWithErrors": true

  }

}
```

> Default: `false`

### `formatter.indentStyle`

[Section titled “formatter.indentStyle”](https://biomejs.dev/reference/configuration/#formatterindentstyle)

The style of the indentation. It can be `"tab"` or `"space"`.

> Default: `"tab"`

### `formatter.indentWidth`

[Section titled “formatter.indentWidth”](https://biomejs.dev/reference/configuration/#formatterindentwidth)

How big the indentation should be.

> Default: `2`

### `formatter.lineEnding`

[Section titled “formatter.lineEnding”](https://biomejs.dev/reference/configuration/#formatterlineending)

The type of line ending.

- `"lf"`, Line Feed only (`\n`), common on Linux and macOS as well as inside git repos;
- `"crlf"`, Carriage Return + Line Feed characters (`\r\n`), common on Windows;
- `"cr"`, Carriage Return character only (`\r`), used very rarely.

> Default: `"lf"`

### `formatter.lineWidth`

[Section titled “formatter.lineWidth”](https://biomejs.dev/reference/configuration/#formatterlinewidth)

The amount of characters that can be written on a single line..

> Default: `80`

### `formatter.attributePosition`

[Section titled “formatter.attributePosition”](https://biomejs.dev/reference/configuration/#formatterattributeposition)

The attribute position style in HTMLish languages.

- `"auto"`, the attributes are automatically formatted, and they will collapse in multiple lines only when they hit certain criteria;
- `"multiline"`, the attributes will collapse in multiple lines if more than 1 attribute is used.

> Default: `"auto"`

### `formatter.bracketSpacing`

[Section titled “formatter.bracketSpacing”](https://biomejs.dev/reference/configuration/#formatterbracketspacing)

Choose whether spaces should be added between brackets and inner values.

> Default: `true`

### `formatter.expand`

[Section titled “formatter.expand”](https://biomejs.dev/reference/configuration/#formatterexpand)

Whether to expand arrays and objects on multiple lines.

- `"auto"`, object literals are formatted on multiple lines if the first property has a newline,
and array literals are formatted on a single line if it fits in the line.
- `"always"`, these literals are formatted on multiple lines, regardless of length of the list.
- `"never"`, these literals are formatted on a single line if it fits in the line.

When formatting `package.json`, Biome will use `always` unless configured otherwise.

> Default: `"auto"`

### `formatter.useEditorconfig`

[Section titled “formatter.useEditorconfig”](https://biomejs.dev/reference/configuration/#formatteruseeditorconfig)

Whether Biome should use the `.editorconfig` file to determine the formatting options.

The config files `.editorconfig` and `biome.json` will follow the following rules:

- Formatting settings in `biome.json` always take precedence over `.editorconfig` files.
- `.editorconfig` files that exist higher up in the hierarchy than a `biome.json` file are already ignored. This is to avoid loading formatting settings from someone’s home directory into a project with a `biome.json` file.
- Nested `.editorconfig` files aren’t supported currently.

> Default: `false`

## `javascript`

[Section titled “javascript”](https://biomejs.dev/reference/configuration/#javascript)

These options apply only to JavaScript (and TypeScript) files.

### `javascript.parser.unsafeParameterDecoratorsEnabled`

[Section titled “javascript.parser.unsafeParameterDecoratorsEnabled”](https://biomejs.dev/reference/configuration/#javascriptparserunsafeparameterdecoratorsenabled)

Allows to support the unsafe/experimental parameter decorators.

```
{

  "javascript": {

    "parser": {

      "unsafeParameterDecoratorsEnabled": true

    }

  }

}
```

> Default: `false`

### `javascript.parser.jsxEverywhere`

[Section titled “javascript.parser.jsxEverywhere”](https://biomejs.dev/reference/configuration/#javascriptparserjsxeverywhere)

When set to `true`, allows to parse JSX syntax inside `.js` files. When set to `false`, Biome will raise diagnostics when it encounters JSX syntax inside `.js` files.

> Default: `true`

```
{

  "javascript": {

    "parser": {

      "jsxEverywhere": false

    }

  }

}
```

### `javascript.formatter.quoteStyle`

[Section titled “javascript.formatter.quoteStyle”](https://biomejs.dev/reference/configuration/#javascriptformatterquotestyle)

The type of quote used when representing string literals. It can be `"single"` or `"double"`.

> Default: `"double"`

```
{

  "javascript": {

    "formatter": {

      "quoteStyle": "single"

    }

  }

}
```

### `javascript.formatter.jsxQuoteStyle`

[Section titled “javascript.formatter.jsxQuoteStyle”](https://biomejs.dev/reference/configuration/#javascriptformatterjsxquotestyle)

The type of quote used when representing jsx string literals. It can be `"single"` or `"double"`.

> Default: `"double"`

```
{

  "javascript": {

    "formatter": {

      "jsxQuoteStyle": "single"

    }

  }

}
```

### `javascript.formatter.quoteProperties`

[Section titled “javascript.formatter.quoteProperties”](https://biomejs.dev/reference/configuration/#javascriptformatterquoteproperties)

When properties inside objects should be quoted. It can be `"asNeeded"` or `"preserve"`.

> Default: `"asNeeded"`

```
{

  "javascript": {

    "formatter": {

      "quoteProperties": "preserve"

    }

  }

}
```

### `javascript.formatter.trailingCommas`

[Section titled “javascript.formatter.trailingCommas”](https://biomejs.dev/reference/configuration/#javascriptformattertrailingcommas)

Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Possible values:

- `"all"`, the trailing comma is always added;
- `"es5"`, the trailing comma is added only in places where it’s supported by older version of JavaScript;
- `"none"`, trailing commas are never added.

> Default: `"all"`

### `javascript.formatter.semicolons`

[Section titled “javascript.formatter.semicolons”](https://biomejs.dev/reference/configuration/#javascriptformattersemicolons)

It configures where the formatter prints semicolons:

- `"always"`, the semicolons is always added at the end of each statement;
- `"asNeeded"`, the semicolons are added only in places where it’s needed, to protect from [ASI](https://en.wikibooks.org/wiki/JavaScript/Automatic_semicolon_insertion).

> Default: `"always"`

Example:

```
{

  "javascript": {

    "formatter": {

      "semicolons": "asNeeded"

    }

  }

}
```

### `javascript.formatter.arrowParentheses`

[Section titled “javascript.formatter.arrowParentheses”](https://biomejs.dev/reference/configuration/#javascriptformatterarrowparentheses)

Whether to add non-necessary parentheses to arrow functions:

- `"always"`, the parentheses are always added;
- `"asNeeded"`, the parentheses are added only when they are needed.

> Default: `"always"`

### `javascript.formatter.enabled`

[Section titled “javascript.formatter.enabled”](https://biomejs.dev/reference/configuration/#javascriptformatterenabled)

Enables Biome’s formatter for JavaScript (and its super languages) files.

> Default: `true`

### `javascript.formatter.indentStyle`

[Section titled “javascript.formatter.indentStyle”](https://biomejs.dev/reference/configuration/#javascriptformatterindentstyle)

The style of the indentation for JavaScript (and its super languages) files. It can be `"tab"` or `"space"`.

> Default: `"tab"`

### `javascript.formatter.indentWidth`

[Section titled “javascript.formatter.indentWidth”](https://biomejs.dev/reference/configuration/#javascriptformatterindentwidth)

How big the indentation should be for JavaScript (and its super languages) files.

> Default: `2`

### `javascript.formatter.lineEnding`

[Section titled “javascript.formatter.lineEnding”](https://biomejs.dev/reference/configuration/#javascriptformatterlineending)

The type of line ending for JavaScript (and its super languages) files.

- `"lf"`, Line Feed only (`\n`), common on Linux and macOS as well as inside git repos;
- `"crlf"`, Carriage Return + Line Feed characters (`\r\n`), common on Windows;
- `"cr"`, Carriage Return character only (`\r`), used very rarely.

> Default: `"lf"`

### `javascript.formatter.lineWidth`

[Section titled “javascript.formatter.lineWidth”](https://biomejs.dev/reference/configuration/#javascriptformatterlinewidth)

The amount of characters that can be written on a single line in JavaScript (and its super languages) files.

> Default: `80`

### `javascript.formatter.bracketSameLine`

[Section titled “javascript.formatter.bracketSameLine”](https://biomejs.dev/reference/configuration/#javascriptformatterbracketsameline)

Choose whether the ending `>` of a multi-line JSX element should be on the last attribute line or not

> Default: `false`

### `javascript.formatter.bracketSpacing`

[Section titled “javascript.formatter.bracketSpacing”](https://biomejs.dev/reference/configuration/#javascriptformatterbracketspacing)

Choose whether spaces should be added between brackets and inner values.

> Default: `true`

### `javascript.formatter.attributePosition`

[Section titled “javascript.formatter.attributePosition”](https://biomejs.dev/reference/configuration/#javascriptformatterattributeposition)

The attribute position style in jsx elements.

- `"auto"`, do not enforce single attribute per line.
- `"multiline"`, enforce single attribute per line.

> Default: `"auto"`

### `javascript.formatter.expand`

[Section titled “javascript.formatter.expand”](https://biomejs.dev/reference/configuration/#javascriptformatterexpand)

Whether to expand arrays and objects on multiple lines.

- `"auto"`, object literals are formatted on multiple lines if the first property has a newline,
and array literals are formatted on a single line if it fits in the line.
- `"always"`, these literals are formatted on multiple lines, regardless of length of the list.
- `"never"`, these literals are formatted on a single line if it fits in the line.

> Default: `"auto"`

### `javascript.formatter.operatorLinebreak`

[Section titled “javascript.formatter.operatorLinebreak”](https://biomejs.dev/reference/configuration/#javascriptformatteroperatorlinebreak)

When breaking binary expressions into multiple lines, whether to break them before or after the binary operator.

> Default: `"after"`.

- `"after`: the operator is placed after the expression:



```
if (

    expressionOne &&

    expressionTwo &&

    expressionThree &&

    expressionFour

) {}
```

- `"before`: the operator is placed before the expression:



```
if (

    expressionOne

    && expressionTwo

    && expressionThree

    && expressionFour

) {}
```


### `javascript.globals`

[Section titled “javascript.globals”](https://biomejs.dev/reference/configuration/#javascriptglobals)

A list of global names that Biome should ignore (analyzer, linter, etc.)

```
{

  "javascript": {

    "globals": ["$", "_", "externalVariable"]

  }

}
```

### `javascript.jsxRuntime`

[Section titled “javascript.jsxRuntime”](https://biomejs.dev/reference/configuration/#javascriptjsxruntime)

Indicates the type of runtime or transformation used for interpreting JSX.

- `"transparent"` — Indicates a modern or native JSX environment, that
doesn’t require special handling by Biome.
- `"reactClassic"` — Indicates a classic React environment that requires
the `React` import. Corresponds to the `react` value for the
`jsx` option in TypeScript’s [`tsconfig.json`](https://www.typescriptlang.org/tsconfig#jsx).

```
{

  "javascript": {

    "jsxRuntime": "reactClassic"

  }

}
```

For more information about the old vs. new JSX runtime, please see:
[https://legacy.reactjs.org/blog/2020/09/22/introducing-the-new-jsx-transform.html](https://legacy.reactjs.org/blog/2020/09/22/introducing-the-new-jsx-transform.html)

> Default: `"transparent"`

### `javascript.linter.enabled`

[Section titled “javascript.linter.enabled”](https://biomejs.dev/reference/configuration/#javascriptlinterenabled)

Enables Biome’s linter for JavaScript (and its super languages) files.

> Default: `true`

```
{

  "javascript": {

    "linter": {

      "enabled": false

    }

  }

}
```

### `javascript.assist.enabled`

[Section titled “javascript.assist.enabled”](https://biomejs.dev/reference/configuration/#javascriptassistenabled)

Enables Biome’s assist for JavaScript (and its super languages) files.

> Default: `true`

```
{

  "javascript": {

    "assist": {

      "enabled": false

    }

  }

}
```

## `html`

[Section titled “html”](https://biomejs.dev/reference/configuration/#html)

### `html.parser.interpolation`

[Section titled “html.parser.interpolation”](https://biomejs.dev/reference/configuration/#htmlparserinterpolation)

Enables the parsing of double text expressions such as `{{ expression }}` inside `.html` files.

> Default: `false`

### `html.formatter.enabled`

[Section titled “html.formatter.enabled”](https://biomejs.dev/reference/configuration/#htmlformatterenabled)

Enables Biome’s formatter for HTML files.

> Default: `false`

### `html.formatter.indentStyle`

[Section titled “html.formatter.indentStyle”](https://biomejs.dev/reference/configuration/#htmlformatterindentstyle)

The style of the indentation for HTML files. It can be `"tab"` or `"space"`.

> Default: `"tab"`

### `html.formatter.indentWidth`

[Section titled “html.formatter.indentWidth”](https://biomejs.dev/reference/configuration/#htmlformatterindentwidth)

How big the indentation should be for HTML files.

> Default: `2`

### `html.formatter.lineEnding`

[Section titled “html.formatter.lineEnding”](https://biomejs.dev/reference/configuration/#htmlformatterlineending)

The type of line ending for HTML files.

- `"lf"`, Line Feed only (`\n`), common on Linux and macOS as well as inside git repos;
- `"crlf"`, Carriage Return + Line Feed characters (`\r\n`), common on Windows;
- `"cr"`, Carriage Return character only (`\r`), used very rarely.

> Default: `"lf"`

### `html.formatter.lineWidth`

[Section titled “html.formatter.lineWidth”](https://biomejs.dev/reference/configuration/#htmlformatterlinewidth)

The amount of characters that can be written on a single line in HTML files.

> Default: `80`

### `html.formatter.attributePosition`

[Section titled “html.formatter.attributePosition”](https://biomejs.dev/reference/configuration/#htmlformatterattributeposition)

The attribute position style in HTML elements.

- `"auto"`, the attributes are automatically formatted, and they will collapse in multiple lines only when they hit certain criteria;
- `"multiline"`, the attributes will collapse in multiple lines if more than 1 attribute is used.

> Default: `"auto"`

### `html.formatter.bracketSameLine`

[Section titled “html.formatter.bracketSameLine”](https://biomejs.dev/reference/configuration/#htmlformatterbracketsameline)

Whether to hug the closing bracket of multiline HTML tags to the end of the last line, rather than being alone on the following line.

> Default: `false`

### `html.formatter.whitespaceSensitivity`

[Section titled “html.formatter.whitespaceSensitivity”](https://biomejs.dev/reference/configuration/#htmlformatterwhitespacesensitivity)

whitespaceSensitivity, whitespace sensitivity

Whether to account for whitespace sensitivity when formatting HTML (and its super languages).

> Default: “css”

- `"css"`: The formatter considers whitespace significant for elements that have an “inline” display style by default in browser’s user agent style sheets.

- `"strict"`: Leading and trailing whitespace in content is considered significant for all elements.

The formatter should leave at least one whitespace character if whitespace is present.
Otherwise, if there is no whitespace, it should not add any after `>` or before `<`. In other words, if there’s no whitespace, the text content should hug the tags.

Example of text hugging the tags:



```
<b

     >content</b

>
```

- `"ignore"`: whitespace is considered insignificant. The formatter is free to remove or add whitespace as it sees fit.


### `html.formatter.indentScriptAndStyle`

[Section titled “html.formatter.indentScriptAndStyle”](https://biomejs.dev/reference/configuration/#htmlformatterindentscriptandstyle)

indentScriptAndStyle, indent script, indent style

_Since 2.3: Only affects `.vue` and `.svelte` files_

Whether to indent the content of `<script>` and `<style>` tags for Vue and Svelte files. Currently, this does not apply to plain HTML files.

> Default: `false`

When true, the content of `<script>` and `<style>` tags will be indented by one level relative to the tags.

```
<script>

import Bar from "./Bar.vue";

  import Bar from "./Bar.vue";

</script>
```

### `html.formatter.selfCloseVoidElements`

[Section titled “html.formatter.selfCloseVoidElements”](https://biomejs.dev/reference/configuration/#htmlformatterselfclosevoidelements)

selfCloseVoidElements, void elements, self closing elements

Whether void elements should be self-closed. Defaults to never.

> Default: `"never"`

- `"never"`: The slash `/` inside void elements is removed by the formatter.
- `"always"`: The slash `/` inside void elements is always added.

### `html.linter.enabled`

[Section titled “html.linter.enabled”](https://biomejs.dev/reference/configuration/#htmllinterenabled)

Enables Biome’s linter for HTML files.

> Default: `true`

### `html.linter.assist`

[Section titled “html.linter.assist”](https://biomejs.dev/reference/configuration/#htmllinterassist)

Enables Biome’s assist for HTML files.

> Default: `true`

Copyright (c) 2023-present Biome Developers and Contributors.
