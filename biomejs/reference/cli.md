# CLI

# Command summary
## biome check

[Section titled “biome check”](https://biomejs.dev/reference/cli/#biome-check)

Runs formatter, linter and import sorting to the requested files.

**Usage**: **`biome`** **`check`** \[ **`--write`**\] \[ **`--unsafe`**\] \[ **`--assist-enabled`** = _`<true|false>`_\] \[ **`--enforce-assist`** = _`<true|false>`_\] \[ **`--format-with-errors`** = _`<true|false>`_\] \[ **`--staged`**\] \[ **`--changed`**\] \[ **`--since`** = _`REF`_\] \[ _`PATH`_\]…

**Options that changes how the JSON parser behaves**

- **`    --json-parse-allow-comments`** = _`<true|false>`_ —
Allow parsing comments in `.json` files
- **`    --json-parse-allow-trailing-commas`** = _`<true|false>`_ —
Allow parsing trailing commas in `.json` files

**The configuration that is contained inside the file `biome.json`**

- **`    --vcs-enabled`** = _`<true|false>`_ —
Whether Biome should integrate itself with the VCS client

- **`    --vcs-client-kind`** = _`<git>`_ —
The kind of client.

- **`    --vcs-use-ignore-file`** = _`<true|false>`_ —
Whether Biome should use the VCS ignore file. When \[true\], Biome will ignore the files specified in the ignore file.

- **`    --vcs-root`** = _`PATH`_ —
The folder where Biome should check for VCS files. By default, Biome will use the same folder where `biome.json` was found.

If Biome can’t find the configuration, it will attempt to use the current working directory. If no current working directory can’t be found, Biome won’t use the VCS integration, and a diagnostic will be emitted

- **`    --vcs-default-branch`** = _`BRANCH`_ —
The main branch of the project

- **`    --files-max-size`** = _`NUMBER`_ —
The maximum allowed size for source code files in bytes. Files above this limit will be ignored for performance reasons. Defaults to 1 MiB

- **`    --files-ignore-unknown`** = _`<true|false>`_ —
Tells Biome to not emit diagnostics when handling files that it doesn’t know

- **`    --format-with-errors`** = _`<true|false>`_ —
Whether formatting should be allowed to proceed if a given file has syntax errors

- **`    --indent-style`** = _`<tab|space>`_ —
The indent style.

- **`    --indent-width`** = _`NUMBER`_ —
The size of the indentation, 2 by default

- **`    --line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending.

- **`    --line-width`** = _`NUMBER`_ —
What’s the max width of a line. Defaults to 80.

- **`    --attribute-position`** = _`<multiline|auto>`_ —
The attribute position style in HTML-ish languages. Defaults to auto.

- **`    --bracket-same-line`** = _`<true|false>`_ —
Put the `>` of a multi-line HTML or JSX element at the end of the last line instead of being alone on the next line (does not apply to self closing elements).

- **`    --bracket-spacing`** = _`<true|false>`_ —
Whether to insert spaces around brackets in object literals. Defaults to true.

- **`    --expand`** = _`<auto|always|never>`_ —
Whether to expand arrays and objects on multiple lines. When set to `auto`, object literals are formatted on multiple lines if the first property has a newline, and array literals are formatted on a single line if it fits in the line. When set to `always`, these literals are formatted on multiple lines, regardless of length of the list. When set to `never`, these literals are formatted on a single line if it fits in the line. When formatting `package.json`, Biome will use `always` unless configured otherwise. Defaults to “auto”.

- **`    --use-editorconfig`** = _`<true|false>`_ —
Use any `.editorconfig` files to configure the formatter. Configuration in `biome.json` will override `.editorconfig` configuration.

Default: `true`.

- **`    --jsx-everywhere`** = _`<true|false>`_ —
When enabled, files like `.js`/`.mjs`/`.cjs` may contain JSX syntax.

Defaults to `true`.

- **`    --javascript-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for JavaScript (and its super languages) files.

- **`    --jsx-quote-style`** = _`<double|single>`_ —
The type of quotes used in JSX. Defaults to double.

- **`    --quote-properties`** = _`<preserve|as-needed>`_ —
When properties in objects are quoted. Defaults to asNeeded.

- **`    --trailing-commas`** = _`<all|es5|none>`_ —
Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to “all”.

- **`    --semicolons`** = _`<always|as-needed>`_ —
Whether the formatter prints semicolons for all statements or only in for statements where it is necessary because of ASI.

- **`    --arrow-parentheses`** = _`<always|as-needed>`_ —
Whether to add non-necessary parentheses to arrow functions. Defaults to “always”.

- **`    --bracket-same-line`** = _`<true|false>`_ —
Whether to hug the closing bracket of multiline HTML/JSX tags to the end of the last line, rather than being alone on the following line. Defaults to false.

- **`    --javascript-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to JavaScript (and its super languages) files.

- **`    --javascript-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to JavaScript (and its super languages) files. Default to 2.

- **`    --javascript-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to JavaScript (and its super languages) files. `auto` uses CRLF on Windows and LF on other platforms.

- **`    --javascript-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to JavaScript (and its super languages) files. Defaults to 80.

- **`    --javascript-formatter-quote-style`** = _`<double|single>`_ —
The type of quotes used in JavaScript code. Defaults to double.

- **`    --javascript-formatter-attribute-position`** = _`<multiline|auto>`_ —
The attribute position style in JSX elements. Defaults to auto.

- **`    --javascript-formatter-bracket-spacing`** = _`<true|false>`_ —
Whether to insert spaces around brackets in object literals. Defaults to true.

- **`    --javascript-formatter-expand`** = _`<auto|always|never>`_ —
Whether to expand arrays and objects on multiple lines. When set to `auto`, object literals are formatted on multiple lines if the first property has a newline, and array literals are formatted on a single line if it fits in the line. When set to `always`, these literals are formatted on multiple lines, regardless of length of the list. When set to `never`, these literals are formatted on a single line if it fits in the line. When formatting `package.json`, Biome will use `always` unless configured otherwise. Defaults to “auto”.

- **`    --javascript-formatter-operator-linebreak`** = _`<before|after>`_ —
When breaking binary expressions into multiple lines, whether to break them before or after the binary operator. Defaults to “after”.

- **`    --javascript-linter-enabled`** = _`<true|false>`_ —
Control the linter for JavaScript (and its super languages) files.

- **`    --javascript-assist-enabled`** = _`<true|false>`_ —
Control the assist for JavaScript (and its super languages) files.

- **`    --json-parse-allow-comments`** = _`<true|false>`_ —
Allow parsing comments in `.json` files

- **`    --json-parse-allow-trailing-commas`** = _`<true|false>`_ —
Allow parsing trailing commas in `.json` files

- **`    --json-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for JSON (and its super languages) files.

- **`    --json-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to JSON (and its super languages) files.

- **`    --json-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to JSON (and its super languages) files. Default to 2.

- **`    --json-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to JSON (and its super languages) files. `auto` uses CRLF on Windows and LF on other platforms.

- **`    --json-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to JSON (and its super languages) files. Defaults to 80.

- **`    --json-formatter-trailing-commas`** = _`<none|all>`_ —
Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to “none”.

- **`    --json-formatter-expand`** = _`<auto|always|never>`_ —
Whether to expand arrays and objects on multiple lines. When set to `auto`, object literals are formatted on multiple lines if the first property has a newline, and array literals are formatted on a single line if it fits in the line. When set to `always`, these literals are formatted on multiple lines, regardless of length of the list. When set to `never`, these literals are formatted on a single line if it fits in the line. When formatting `package.json`, Biome will use `always` unless configured otherwise. Defaults to “auto”.

- **`    --json-formatter-bracket-spacing`** = _`<true|false>`_ —
Whether to insert spaces around brackets in object literals. Defaults to true.

- **`    --json-linter-enabled`** = _`<true|false>`_ —
Control the linter for JSON (and its super languages) files.

- **`    --json-assist-enabled`** = _`<true|false>`_ —
Control the assist for JSON (and its super languages) files.

- **`    --css-parse-css-modules`** = _`<true|false>`_ —
Enables parsing of CSS Modules specific features.

- **`    --css-parse-tailwind-directives`** = _`<true|false>`_ —
Enables parsing of Tailwind CSS 4.0 directives and functions.

- **`    --css-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for CSS (and its super languages) files.

- **`    --css-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to CSS (and its super languages) files.

- **`    --css-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to CSS (and its super languages) files. Default to 2.

- **`    --css-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to CSS (and its super languages) files. `auto` uses CRLF on Windows and LF on other platforms.

- **`    --css-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to CSS (and its super languages) files. Defaults to 80.

- **`    --css-formatter-quote-style`** = _`<double|single>`_ —
The type of quotes used in CSS code. Defaults to double.

- **`    --css-linter-enabled`** = _`<true|false>`_ —
Control the linter for CSS files.

- **`    --css-assist-enabled`** = _`<true|false>`_ —
Control the assist for CSS files.

- **`    --graphql-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for GraphQL files.

- **`    --graphql-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to GraphQL files.

- **`    --graphql-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to GraphQL files. Default to 2.

- **`    --graphql-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to GraphQL files. `auto` uses CRLF on Windows and LF on other platforms.

- **`    --graphql-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to GraphQL files. Defaults to 80.

- **`    --graphql-formatter-quote-style`** = _`<double|single>`_ —
The type of quotes used in GraphQL code. Defaults to double.

- **`    --graphql-linter-enabled`** = _`<true|false>`_ —
Control the formatter for GraphQL files.

- **`    --graphql-assist-enabled`** = _`<true|false>`_ —
Control the formatter for GraphQL files.

- **`    --grit-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for Grit files.

- **`    --grit-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to Grit files.

- **`    --grit-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to Grit files. Default to 2.

- **`    --grit-formatter-line-ending`** = _`<lf|crlf|cr>`_ —
The type of line ending applied to Grit files.

- **`    --grit-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to Grit files. Defaults to 80.

- **`    --grit-linter-enabled`** = _`<true|false>`_ —
Control the linter for Grit files.

- **`    --grit-assist-enabled`** = _`<true|false>`_ —
Control the assist functionality for Grit files.

- **`    --html-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for HTML (and its super languages) files.

- **`    --html-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to HTML (and its super languages) files.

- **`    --html-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to HTML (and its super languages) files. Default to 2.

- **`    --html-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to HTML (and its super languages) files. `auto` uses CRLF on Windows and LF on other platforms.

- **`    --html-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to HTML (and its super languages) files. Defaults to 80.

- **`    --html-formatter-attribute-position`** = _`<multiline|auto>`_ —
The attribute position style in HTML elements. Defaults to auto.

- **`    --html-formatter-bracket-same-line`** = _`<true|false>`_ —
Whether to hug the closing bracket of multiline HTML tags to the end of the last line, rather than being alone on the following line. Defaults to false.

- **`    --html-formatter-whitespace-sensitivity`** = _`<css|strict|ignore>`_ —
Whether to account for whitespace sensitivity when formatting HTML (and its super languages). Defaults to “css”.

- **`    --html-formatter-indent-script-and-style`** = _`<true|false>`_ —
Whether to indent the `<script>` and `<style>` tags for HTML (and its super languages). Defaults to false.

- **`    --html-formatter-self-close-void-elements`** = _`<always|never>`_ —
Whether void elements should be self-closed. Defaults to never.

- **`    --html-linter-enabled`** = _`<true|false>`_ —
Control the linter for HTML (and its super languages) files.

- **`    --html-assist-enabled`** = _`<true|false>`_ —
Control the assist for HTML (and its super languages) files.

- **`    --assist-enabled`** = _`<true|false>`_ —
Whether Biome should enable assist via LSP and CLI.


**Global options applied to all commands**

- **`    --colors`** = _`<off|force>`_ —
Set the formatting mode for markup: “off” prints everything as plain text, “force” forces the formatting of markup using ANSI even if the console output is determined to be incompatible

- **`    --use-server`** —
Connect to a running instance of the Biome daemon server.

- **`    --verbose`** —
Print additional diagnostics, and some diagnostics show more information. Also, print out what files were processed and which ones were modified.

- **`    --config-path`** = _`PATH`_ —
Set the file path to the configuration file, or the directory path to find `biome.json` or `biome.jsonc`. If used, it disables the default configuration file resolution.

Uses environment variable **`BIOME_CONFIG_PATH`**

- **`    --max-diagnostics`** = _`<none|<NUMBER>>`_ —
Cap the amount of diagnostics displayed. When `none` is provided, the limit is lifted.

\[default: 20\]

- **`    --skip-parse-errors`** —
Skip over files containing syntax errors instead of emitting an error diagnostic.

- **`    --no-errors-on-unmatched`** —
Silence errors that would be emitted in case no files were processed during the execution of the command.

- **`    --error-on-warnings`** —
Tell Biome to exit with an error code if some diagnostics emit warnings.

- **`    --reporter`** = _`<json|json-pretty|github|junit|summary|gitlab|checkstyle|rdjson>`_ —
Allows to change how diagnostics and summary are reported.

- **`    --log-file`** = _`ARG`_ —
Optional path to redirect log messages to.

If omitted, logs are printed to stdout.

- **`    --log-level`** = _`<none|debug|info|warn|error>`_ —
The level of logging. In order, from the most verbose to the least verbose: debug, info, warn, error.

The value `none` won’t show any logging.

\[default: none\]

- **`    --log-kind`** = _`<pretty|compact|json>`_ —
How the log should look like.

\[default: pretty\]

- **`    --diagnostic-level`** = _`<info|warn|error>`_ —
The level of diagnostics to show. In order, from the lowest to the most important: info, warn, error. Passing `--diagnostic-level=error` will cause Biome to print only diagnostics that contain only errors.

\[default: info\]


**Available positional items:**

- _`PATH`_ —
Single file, single path or list of paths

**Available options:**

- **`    --write`** —
Apply safe fixes, formatting and import sorting

- **`    --unsafe`** —
Apply unsafe fixes. Should be used with `--write` or `--fix`

- **`    --fix`** —
Alias for `--write`, writes safe fixes, formatting and import sorting

- **`    --formatter-enabled`** = _`<true|false>`_ —
Allow enabling or disabling the formatter check.

- **`    --linter-enabled`** = _`<true|false>`_ —
Allow enabling or disabling the linter check.

- **`    --assist-enabled`** = _`<true|false>`_ —
Allow enabling or disabling the assist.

- **`    --enforce-assist`** = _`<true|false>`_ —
Allows enforcing assist, and make the CLI fail if some actions aren’t applied. Defaults to `true`.

- **`    --format-with-errors`** = _`<true|false>`_ —
Whether formatting should be allowed to proceed if a given file has syntax errors

- **`    --stdin-file-path`** = _`PATH`_ —
Use this option when you want to format code piped from `stdin`, and print the output to `stdout`.

The file doesn’t need to exist on disk, what matters is the extension of the file. Based on the extension, Biome knows how to check the code.

Also, if you have overrides configured and/or nested configurations, the path may determine the settings being applied.

Example: `shell echo 'let a;' | biome check --stdin-file-path=file.js --write`

- **`    --staged`** —
When set to true, only the files that have been staged (the ones prepared to be committed) will be linted. This option should be used when working locally.

- **`    --changed`** —
When set to true, only the files that have been changed compared to your `defaultBranch` configuration will be linted. This option should be used in CI environments.

- **`    --since`** = _`REF`_ —
Use this to specify the base branch to compare against when you’re using the —changed flag and the `defaultBranch` is not set in your `biome.json`

- **`-h`**, **`--help`** —
Prints help information


## biome lint

[Section titled “biome lint”](https://biomejs.dev/reference/cli/#biome-lint)

Run various checks on a set of files.

**Usage**: **`biome`** **`lint`** \[ **`--write`**\] \[ **`--unsafe`**\] \[ **`--suppress`**\] \[ **`--reason`** = _`STRING`_\] \[ **`--only`** = _`<GROUP|RULE|DOMAIN>`_\]… \[ **`--skip`** = _`<GROUP|RULE|DOMAIN>`_\]… \[ **`--staged`**\] \[ **`--changed`**\] \[ **`--since`** = _`REF`_\] \[ _`PATH`_\]…

**Options that changes how the JSON parser behaves**

- **`    --json-parse-allow-comments`** = _`<true|false>`_ —
Allow parsing comments in `.json` files
- **`    --json-parse-allow-trailing-commas`** = _`<true|false>`_ —
Allow parsing trailing commas in `.json` files

**Set of properties to integrate Biome with a VCS software.**

- **`    --vcs-enabled`** = _`<true|false>`_ —
Whether Biome should integrate itself with the VCS client

- **`    --vcs-client-kind`** = _`<git>`_ —
The kind of client.

- **`    --vcs-use-ignore-file`** = _`<true|false>`_ —
Whether Biome should use the VCS ignore file. When \[true\], Biome will ignore the files specified in the ignore file.

- **`    --vcs-root`** = _`PATH`_ —
The folder where Biome should check for VCS files. By default, Biome will use the same folder where `biome.json` was found.

If Biome can’t find the configuration, it will attempt to use the current working directory. If no current working directory can’t be found, Biome won’t use the VCS integration, and a diagnostic will be emitted

- **`    --vcs-default-branch`** = _`BRANCH`_ —
The main branch of the project


**The configuration of the filesystem**

- **`    --files-max-size`** = _`NUMBER`_ —
The maximum allowed size for source code files in bytes. Files above this limit will be ignored for performance reasons. Defaults to 1 MiB
- **`    --files-ignore-unknown`** = _`<true|false>`_ —
Tells Biome to not emit diagnostics when handling files that it doesn’t know

**Linter options specific to the JavaScript linter**

- **`    --javascript-linter-enabled`** = _`<true|false>`_ —
Control the linter for JavaScript (and its super languages) files.

**Linter options specific to the JSON linter**

- **`    --json-linter-enabled`** = _`<true|false>`_ —
Control the linter for JSON (and its super languages) files.

**Global options applied to all commands**

- **`    --colors`** = _`<off|force>`_ —
Set the formatting mode for markup: “off” prints everything as plain text, “force” forces the formatting of markup using ANSI even if the console output is determined to be incompatible

- **`    --use-server`** —
Connect to a running instance of the Biome daemon server.

- **`    --verbose`** —
Print additional diagnostics, and some diagnostics show more information. Also, print out what files were processed and which ones were modified.

- **`    --config-path`** = _`PATH`_ —
Set the file path to the configuration file, or the directory path to find `biome.json` or `biome.jsonc`. If used, it disables the default configuration file resolution.

Uses environment variable **`BIOME_CONFIG_PATH`**

- **`    --max-diagnostics`** = _`<none|<NUMBER>>`_ —
Cap the amount of diagnostics displayed. When `none` is provided, the limit is lifted.

\[default: 20\]

- **`    --skip-parse-errors`** —
Skip over files containing syntax errors instead of emitting an error diagnostic.

- **`    --no-errors-on-unmatched`** —
Silence errors that would be emitted in case no files were processed during the execution of the command.

- **`    --error-on-warnings`** —
Tell Biome to exit with an error code if some diagnostics emit warnings.

- **`    --reporter`** = _`<json|json-pretty|github|junit|summary|gitlab|checkstyle|rdjson>`_ —
Allows to change how diagnostics and summary are reported.

- **`    --log-file`** = _`ARG`_ —
Optional path to redirect log messages to.

If omitted, logs are printed to stdout.

- **`    --log-level`** = _`<none|debug|info|warn|error>`_ —
The level of logging. In order, from the most verbose to the least verbose: debug, info, warn, error.

The value `none` won’t show any logging.

\[default: none\]

- **`    --log-kind`** = _`<pretty|compact|json>`_ —
How the log should look like.

\[default: pretty\]

- **`    --diagnostic-level`** = _`<info|warn|error>`_ —
The level of diagnostics to show. In order, from the lowest to the most important: info, warn, error. Passing `--diagnostic-level=error` will cause Biome to print only diagnostics that contain only errors.

\[default: info\]


**Available positional items:**

- _`PATH`_ —
Single file, single path or list of paths

**Available options:**

- **`    --write`** —
Writes safe fixes

- **`    --unsafe`** —
Apply unsafe fixes. Should be used with `--write` or `--fix`

- **`    --fix`** —
Alias for `--write`, writes safe fixes

- **`    --suppress`** —
Fixes lint rule violations with comment suppressions instead of using a rule code action (fix)

- **`    --reason`** = _`STRING`_ —
Explanation for suppressing diagnostics with `--suppress`

- **`    --only`** = _`<GROUP|RULE|DOMAIN>`_ —
Run only the given rule, group of rules or domain. If the severity level of a rule is `off`, then the severity level of the rule is set to `error` if it is a recommended rule or `warn` otherwise.

Example:



```
biome lint --only=correctness/noUnusedVariables --only=suspicious --only=test
```

- **`    --skip`** = _`<GROUP|RULE|DOMAIN>`_ —
Skip the given rule, group of rules or domain by setting the severity level of the rules to `off`. This option takes precedence over `--only`.

Example:



```
biome lint --skip=correctness/noUnusedVariables --skip=suspicious --skip=project
```

- **`    --stdin-file-path`** = _`PATH`_ —
Use this option when you want to format code piped from `stdin`, and print the output to `stdout`.

The file doesn’t need to exist on disk, what matters is the extension of the file. Based on the extension, Biome knows how to lint the code.

Example: `shell echo 'let a;' | biome lint --stdin-file-path=file.js --write`

- **`    --staged`** —
When set to true, only the files that have been staged (the ones prepared to be committed) will be linted.

- **`    --changed`** —
When set to true, only the files that have been changed compared to your `defaultBranch` configuration will be linted.

- **`    --since`** = _`REF`_ —
Use this to specify the base branch to compare against when you’re using the —changed flag and the `defaultBranch` is not set in your biome.json

- **`-h`**, **`--help`** —
Prints help information


## biome format

[Section titled “biome format”](https://biomejs.dev/reference/cli/#biome-format)

Run the formatter on a set of files.

**Usage**: **`biome`** **`format`** \[ **`--write`**\] \[ **`--staged`**\] \[ **`--changed`**\] \[ **`--since`** = _`REF`_\] \[ _`PATH`_\]…

**Generic options applied to all files**

- **`    --format-with-errors`** = _`<true|false>`_ —
Whether formatting should be allowed to proceed if a given file has syntax errors

- **`    --indent-style`** = _`<tab|space>`_ —
The indent style.

- **`    --indent-width`** = _`NUMBER`_ —
The size of the indentation, 2 by default

- **`    --line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending.

- **`    --line-width`** = _`NUMBER`_ —
What’s the max width of a line. Defaults to 80.

- **`    --attribute-position`** = _`<multiline|auto>`_ —
The attribute position style in HTML-ish languages. Defaults to auto.

- **`    --bracket-same-line`** = _`<true|false>`_ —
Put the `>` of a multi-line HTML or JSX element at the end of the last line instead of being alone on the next line (does not apply to self closing elements).

- **`    --bracket-spacing`** = _`<true|false>`_ —
Whether to insert spaces around brackets in object literals. Defaults to true.

- **`    --expand`** = _`<auto|always|never>`_ —
Whether to expand arrays and objects on multiple lines. When set to `auto`, object literals are formatted on multiple lines if the first property has a newline, and array literals are formatted on a single line if it fits in the line. When set to `always`, these literals are formatted on multiple lines, regardless of length of the list. When set to `never`, these literals are formatted on a single line if it fits in the line. When formatting `package.json`, Biome will use `always` unless configured otherwise. Defaults to “auto”.

- **`    --use-editorconfig`** = _`<true|false>`_ —
Use any `.editorconfig` files to configure the formatter. Configuration in `biome.json` will override `.editorconfig` configuration.

Default: `true`.


**Formatting options specific to the JavaScript files**

- **`    --javascript-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for JavaScript (and its super languages) files.
- **`    --jsx-quote-style`** = _`<double|single>`_ —
The type of quotes used in JSX. Defaults to double.
- **`    --quote-properties`** = _`<preserve|as-needed>`_ —
When properties in objects are quoted. Defaults to asNeeded.
- **`    --trailing-commas`** = _`<all|es5|none>`_ —
Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to “all”.
- **`    --semicolons`** = _`<always|as-needed>`_ —
Whether the formatter prints semicolons for all statements or only in for statements where it is necessary because of ASI.
- **`    --arrow-parentheses`** = _`<always|as-needed>`_ —
Whether to add non-necessary parentheses to arrow functions. Defaults to “always”.
- **`    --bracket-same-line`** = _`<true|false>`_ —
Whether to hug the closing bracket of multiline HTML/JSX tags to the end of the last line, rather than being alone on the following line. Defaults to false.
- **`    --javascript-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to JavaScript (and its super languages) files.
- **`    --javascript-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to JavaScript (and its super languages) files. Default to 2.
- **`    --javascript-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to JavaScript (and its super languages) files. `auto` uses CRLF on Windows and LF on other platforms.
- **`    --javascript-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to JavaScript (and its super languages) files. Defaults to 80.
- **`    --javascript-formatter-quote-style`** = _`<double|single>`_ —
The type of quotes used in JavaScript code. Defaults to double.
- **`    --javascript-formatter-attribute-position`** = _`<multiline|auto>`_ —
The attribute position style in JSX elements. Defaults to auto.
- **`    --javascript-formatter-bracket-spacing`** = _`<true|false>`_ —
Whether to insert spaces around brackets in object literals. Defaults to true.
- **`    --javascript-formatter-expand`** = _`<auto|always|never>`_ —
Whether to expand arrays and objects on multiple lines. When set to `auto`, object literals are formatted on multiple lines if the first property has a newline, and array literals are formatted on a single line if it fits in the line. When set to `always`, these literals are formatted on multiple lines, regardless of length of the list. When set to `never`, these literals are formatted on a single line if it fits in the line. When formatting `package.json`, Biome will use `always` unless configured otherwise. Defaults to “auto”.
- **`    --javascript-formatter-operator-linebreak`** = _`<before|after>`_ —
When breaking binary expressions into multiple lines, whether to break them before or after the binary operator. Defaults to “after”.

**Options that changes how the JSON parser behaves**

- **`    --json-parse-allow-comments`** = _`<true|false>`_ —
Allow parsing comments in `.json` files
- **`    --json-parse-allow-trailing-commas`** = _`<true|false>`_ —
Allow parsing trailing commas in `.json` files

**Set of properties to integrate Biome with a VCS software.**

- **`    --vcs-enabled`** = _`<true|false>`_ —
Whether Biome should integrate itself with the VCS client

- **`    --vcs-client-kind`** = _`<git>`_ —
The kind of client.

- **`    --vcs-use-ignore-file`** = _`<true|false>`_ —
Whether Biome should use the VCS ignore file. When \[true\], Biome will ignore the files specified in the ignore file.

- **`    --vcs-root`** = _`PATH`_ —
The folder where Biome should check for VCS files. By default, Biome will use the same folder where `biome.json` was found.

If Biome can’t find the configuration, it will attempt to use the current working directory. If no current working directory can’t be found, Biome won’t use the VCS integration, and a diagnostic will be emitted

- **`    --vcs-default-branch`** = _`BRANCH`_ —
The main branch of the project


**The configuration of the filesystem**

- **`    --files-max-size`** = _`NUMBER`_ —
The maximum allowed size for source code files in bytes. Files above this limit will be ignored for performance reasons. Defaults to 1 MiB
- **`    --files-ignore-unknown`** = _`<true|false>`_ —
Tells Biome to not emit diagnostics when handling files that it doesn’t know

**Global options applied to all commands**

- **`    --colors`** = _`<off|force>`_ —
Set the formatting mode for markup: “off” prints everything as plain text, “force” forces the formatting of markup using ANSI even if the console output is determined to be incompatible

- **`    --use-server`** —
Connect to a running instance of the Biome daemon server.

- **`    --verbose`** —
Print additional diagnostics, and some diagnostics show more information. Also, print out what files were processed and which ones were modified.

- **`    --config-path`** = _`PATH`_ —
Set the file path to the configuration file, or the directory path to find `biome.json` or `biome.jsonc`. If used, it disables the default configuration file resolution.

Uses environment variable **`BIOME_CONFIG_PATH`**

- **`    --max-diagnostics`** = _`<none|<NUMBER>>`_ —
Cap the amount of diagnostics displayed. When `none` is provided, the limit is lifted.

\[default: 20\]

- **`    --skip-parse-errors`** —
Skip over files containing syntax errors instead of emitting an error diagnostic.

- **`    --no-errors-on-unmatched`** —
Silence errors that would be emitted in case no files were processed during the execution of the command.

- **`    --error-on-warnings`** —
Tell Biome to exit with an error code if some diagnostics emit warnings.

- **`    --reporter`** = _`<json|json-pretty|github|junit|summary|gitlab|checkstyle|rdjson>`_ —
Allows to change how diagnostics and summary are reported.

- **`    --log-file`** = _`ARG`_ —
Optional path to redirect log messages to.

If omitted, logs are printed to stdout.

- **`    --log-level`** = _`<none|debug|info|warn|error>`_ —
The level of logging. In order, from the most verbose to the least verbose: debug, info, warn, error.

The value `none` won’t show any logging.

\[default: none\]

- **`    --log-kind`** = _`<pretty|compact|json>`_ —
How the log should look like.

\[default: pretty\]

- **`    --diagnostic-level`** = _`<info|warn|error>`_ —
The level of diagnostics to show. In order, from the lowest to the most important: info, warn, error. Passing `--diagnostic-level=error` will cause Biome to print only diagnostics that contain only errors.

\[default: info\]


**Available positional items:**

- _`PATH`_ —
Single file, single path or list of paths.

**Available options:**

- **`    --json-formatter-enabled`** = _`<true|false>`_ —
Control the formatter for JSON (and its super languages) files.

- **`    --json-formatter-indent-style`** = _`<tab|space>`_ —
The indent style applied to JSON (and its super languages) files.

- **`    --json-formatter-indent-width`** = _`NUMBER`_ —
The size of the indentation applied to JSON (and its super languages) files. Default to 2.

- **`    --json-formatter-line-ending`** = _`<lf|crlf|cr|auto>`_ —
The type of line ending applied to JSON (and its super languages) files. `auto` uses CRLF on Windows and LF on other platforms.

- **`    --json-formatter-line-width`** = _`NUMBER`_ —
What’s the max width of a line applied to JSON (and its super languages) files. Defaults to 80.

- **`    --json-formatter-trailing-commas`** = _`<none|all>`_ —
Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to “none”.

- **`    --json-formatter-expand`** = _`<auto|always|never>`_ —
Whether to expand arrays and objects on multiple lines. When set to `auto`, object literals are formatted on multiple lines if the first property has a newline, and array literals are formatted on a single line if it fits in the line. When set to `always`, these literals are formatted on multiple lines, regardless of length of the list. When set to `never`, these literals are formatted on a single line if it fits in the line. When formatting `package.json`, Biome will use `always` unless configured otherwise. Defaults to “auto”.

- **`    --json-formatter-bracket-spacing`** = _`<true|false>`_ —
Whether to insert spaces around brackets in object literals. Defaults to true.

- **`    --stdin-file-path`** = _`PATH`_ —
Use this option when you want to format code piped from `stdin`, and print the output to `stdout`.

The file doesn’t need to exist on disk, what matters is the extension of the file. Based on the extension, Biome knows how to format the code.

Example: `shell echo 'let a;' | biome format --stdin-file-path=file.js --write`

- **`    --write`** —
Writes formatted files to a file system.

- **`    --fix`** —
Alias of `--write`, writes formatted files to a file system.

- **`    --staged`** —
When set to true, only the files that have been staged (the ones prepared to be committed) will be linted.

- **`    --changed`** —
When set to true, only the files that have been changed compared to your `defaultBranch` configuration will be linted.

- **`    --since`** = _`REF`_ —
Use this to specify the base branch to compare against when you’re using the —changed flag, and the `defaultBranch` is not set in your biome.json

- **`-h`**, **`--help`** —
Prints help information


