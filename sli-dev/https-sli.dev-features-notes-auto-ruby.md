Title: Slidev

URL Source: http://sli.dev/features/notes-auto-ruby

Markdown Content:
Notes Auto Ruby | Slidev

===============

[Skip to content](http://sli.dev/features/notes-auto-ruby#VPContent)

[![Image 1](http://sli.dev/logo.svg)Slidev[New Docs!](http://sli.dev/features/notes-auto-ruby)](http://sli.dev/)

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

[简体中文](https://cn.sli.dev/features/notes-auto-ruby)

[日本語](https://ja.sli.dev/features/notes-auto-ruby)

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/notes-auto-ruby)

[日本語](https://ja.sli.dev/features/notes-auto-ruby)

Appearance

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

Menu

Return to top

 Sidebar Navigation 

Back to
-------

[All Features](http://sli.dev/features)

 Tags 

[Notes](http://sli.dev/features/#tags=notes)[Presenter](http://sli.dev/features/#tags=presenter)

On this page

Are you an LLM? You can read better optimized documentation at /features/notes-auto-ruby.md for this page in Markdown format

Notes Auto Ruby [​](http://sli.dev/features/notes-auto-ruby#notes-auto-ruby)
============================================================================

> Available since v52.4.0

When you write notes in your slides, you might want to add some ruby text to help pronouncing the some words. You can always add `<ruby>` tags to your notes manually, but Slidev also provides a convenient way to do this automatically by a global auto-replacement.

In the headmatter, you can set the `notesAutoRuby` option to a map of words to their ruby text:

md
```
---
notesAutoRuby:
  日本語: ni hon go
  勉強: べんきょう
---

# Your slides here

<!--
私は日本語を勉強しています。
-->
```

And the notes will be rendered as:

私は 日本語 ni hon go を 勉強 べんきょう しています。

[Suggest changes to this page](https://github.com/slidevjs/slidev/edit/main/docs/features/notes-auto-ruby.md)

Pager

[Next page All Features](http://sli.dev/features)

Released under the MIT License.

Copyright © 2020-2025 Anthony Fu.

