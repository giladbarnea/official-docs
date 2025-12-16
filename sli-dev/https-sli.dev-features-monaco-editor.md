Title: Slidev

URL Source: http://sli.dev/features/monaco-editor

Markdown Content:
Monaco Editor | Slidev

===============

[Skip to content](http://sli.dev/features/monaco-editor#VPContent)

[![Image 1](http://sli.dev/logo.svg)Slidev[New Docs!](http://sli.dev/features/monaco-editor)](http://sli.dev/)

Search

 Main Navigation 

📖 Guide

[Why Slidev](http://sli.dev/guide/why)

[Getting Started](http://sli.dev/guide/)

[Syntax Guide](http://sli.dev/guide/syntax)

[User Interface](http://sli.dev/guide/ui)

[Animations](http://sli.dev/guide/animations)

[Theme & Addons](http://sli.dev/guide/theme-addon)

[Components](http://sli.dev/guide/component)

[Layouts](http://sli.dev/guide/layout)

[Exporting](http://sli.dev/guide/exporting)

[Hosting](http://sli.dev/guide/hosting)

[FAQ](http://sli.dev/guide/faq)

Advanced

[Global Context](http://sli.dev/guide/global-context)

[Writing Layouts](http://sli.dev/guide/write-layout)

[Writing Themes](http://sli.dev/guide/write-theme)

[Writing Addons](http://sli.dev/guide/write-addon)

[✨ Features](http://sli.dev/features/)

Reference

Built-in

[CLI](http://sli.dev/builtin/cli)

[Components](http://sli.dev/builtin/components)

[Layouts](http://sli.dev/builtin/layouts)

Customize

[Configurations](http://sli.dev/custom/)

[Directory Structure](http://sli.dev/custom/directory-structure)

[Configure Highlighter](http://sli.dev/custom/config-highlighter)

[Configure Vite and Plugins](http://sli.dev/custom/config-vite)

[Configure Vue App](http://sli.dev/custom/config-vue)

[Configure UnoCSS](http://sli.dev/custom/config-unocss)

[Configure Code Runners](http://sli.dev/custom/config-code-runners)

[Configure Transformers](http://sli.dev/custom/config-transformers)

[Configure Monaco](http://sli.dev/custom/config-monaco)

[Configure KaTeX](http://sli.dev/custom/config-katex)

[Configure Mermaid](http://sli.dev/custom/config-mermaid)

[Configure Routes](http://sli.dev/custom/config-routes)

[Configure Shortcuts](http://sli.dev/custom/config-shortcuts)

[Configure Context Menu](http://sli.dev/custom/config-context-menu)

[Configure Fonts](http://sli.dev/custom/config-fonts)

[Configure Pre-Parser](http://sli.dev/custom/config-parser)

Resources

[Showcases](http://sli.dev/resources/showcases)

[Theme Gallery](http://sli.dev/resources/theme-gallery)

[Addon Gallery](http://sli.dev/resources/addon-gallery)

[Learning Resources](http://sli.dev/resources/learning)

[Curated Covers](http://sli.dev/resources/covers)

[Release Notes](https://github.com/slidevjs/slidev/releases)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/monaco-editor)

[日本語](https://ja.sli.dev/features/monaco-editor)

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/monaco-editor)

[日本語](https://ja.sli.dev/features/monaco-editor)

Appearance

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

Menu

On this page

 Sidebar Navigation 

Back to
-------

[All Features](http://sli.dev/features)

Depends on
----------

[📖 Syntax Guide](http://sli.dev/guide/syntax)

Related to
----------

[Monaco Editor](https://microsoft.github.io/monaco-editor/)

[Configure Monaco Editor](http://sli.dev/custom/config-monaco)

Derives
-------

[✨ Monaco Runner](http://sli.dev/features/monaco-run)

[✨ Writable Monaco Editor](http://sli.dev/features/monaco-write)

 Tags 

[Codeblock](http://sli.dev/features/#tags=codeblock)[Editor](http://sli.dev/features/#tags=editor)

On this page

*   [Diff Editor](http://sli.dev/features/monaco-editor#diff-editor "Diff Editor")
*   [Editor Height](http://sli.dev/features/monaco-editor#editor-height "Editor Height")

Are you an LLM? You can read better optimized documentation at /features/monaco-editor.md for this page in Markdown format

Monaco Editor [​](http://sli.dev/features/monaco-editor#monaco-editor)
======================================================================

Whenever you want to do some modification in the presentation, simply add `{monaco}` after the language id — it turns the block into a fully-featured Monaco editor!

md
```
```ts {monaco}
console.log('HelloWorld')
```
```

Learn more about [Configuring Monaco](http://sli.dev/custom/config-monaco).

Diff Editor [​](http://sli.dev/features/monaco-editor#diff-editor)
------------------------------------------------------------------

Monaco can also generate a diff between two code blocks. Use `{monaco-diff}` to turn the block into a [Monaco diff editor](https://microsoft.github.io/monaco-editor/playground.html?source=v0.36.1#example-creating-the-diffeditor-multi-line-example) and use `~~~` to separate the original and modified code!

md
```
```ts {monaco-diff}
console.log('Original text')
~~~
console.log('Modified text')
```
```

Editor Height [​](http://sli.dev/features/monaco-editor#editor-height)
----------------------------------------------------------------------

By default, the Monaco editor has a fixed height based on the initial content. If you start with an empty or small code block and want the editor to automatically grow as you type more code, you can set `{height:'auto'}`.

md
```
```ts {monaco} {height:'auto'}
// The editor will automatically grow as you type more code
console.log('Hello, World!')
```
```

You can also set a specific height using CSS units like `{height:'300px'}` or `{height:'100%'}`.

[Suggest changes to this page](https://github.com/slidevjs/slidev/edit/main/docs/features/monaco-editor.md)

Pager

[Next page All Features](http://sli.dev/features)

Released under the MIT License.

Copyright © 2020-2025 Anthony Fu.

