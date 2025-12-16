Title: Slidev

URL Source: http://sli.dev/features/import-snippet

Markdown Content:
Import Code Snippets | Slidev

===============

[Skip to content](http://sli.dev/features/import-snippet#VPContent)

[![Image 1](http://sli.dev/logo.svg)Slidev[New Docs!](http://sli.dev/features/import-snippet)](http://sli.dev/)

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

[简体中文](https://cn.sli.dev/features/import-snippet)

[日本語](https://ja.sli.dev/features/import-snippet)

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/import-snippet)

[日本語](https://ja.sli.dev/features/import-snippet)

Appearance

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

Menu

Return to top

 Sidebar Navigation 

Back to
-------

[All Features](http://sli.dev/features)

Related to
----------

[✨ Writable Monaco Editor](http://sli.dev/features/monaco-write)

[✨ Monaco Editor](http://sli.dev/features/monaco-editor)

Derives
-------

[✨ Writable Monaco Editor](http://sli.dev/features/monaco-write)

 Tags 

[Codeblock](http://sli.dev/features/#tags=codeblock)[Syntax](http://sli.dev/features/#tags=syntax)

 Since 

[v0.47.0](https://github.com/slidevjs/slidev/releases/tag/v0.47.0)

On this page

Are you an LLM? You can read better optimized documentation at /features/import-snippet.md for this page in Markdown format

Import Code Snippets [​](http://sli.dev/features/import-snippet#import-code-snippets)
=====================================================================================

You can import code snippets from existing files via the following syntax:

md`<<< @/snippets/snippet.js`

TIP

The value of `@` corresponds to your package's root directory. It's recommended to put snippets in `@/snippets` in order to be compatible with the Monaco editor. Alternatively, you can also import from relative paths.

You can also use a [VS Code region](https://code.visualstudio.com/docs/editor/codebasics#_folding) to only include the corresponding part of the code file:

md`<<< @/snippets/snippet.js#region-name`

To explicitly specify the language of the imported code, you can add a language identifier after:

md`<<< @/snippets/snippet.js ts`

Any code block features like [line highlighting](http://sli.dev/features/import-snippet#line-highlighting) and [Monaco editor](http://sli.dev/features/import-snippet#monaco-editor) are also supported:

md
```
<<< @/snippets/snippet.js {2,3|5}{lines:true}
<<< @/snippets/snippet.js ts {monaco}{height:200px}
```

Note that you can use `{*}` as a placeholder of ✨ Line Highlighting

[✨ Line Highlighting](http://sli.dev/features/line-highlighting)

:

md`<<< @/snippets/snippet.js {*}{lines:true}`

[Suggest changes to this page](https://github.com/slidevjs/slidev/edit/main/docs/features/import-snippet.md)

Pager

[Next page All Features](http://sli.dev/features)

Released under the MIT License.

Copyright © 2020-2025 Anthony Fu.

