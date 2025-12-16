Title: Slidev

URL Source: http://sli.dev/features/prettier-plugin

Markdown Content:
Prettier Plugin | Slidev

===============

[Skip to content](http://sli.dev/features/prettier-plugin#VPContent)

[![Image 1](http://sli.dev/logo.svg)Slidev[New Docs!](http://sli.dev/features/prettier-plugin)](http://sli.dev/)

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

[简体中文](https://cn.sli.dev/features/prettier-plugin)

[日本語](https://ja.sli.dev/features/prettier-plugin)

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/prettier-plugin)

[日本語](https://ja.sli.dev/features/prettier-plugin)

Appearance

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

Menu

On this page

 Sidebar Navigation 

Back to
-------

[All Features](http://sli.dev/features)

Related to
----------

[✨ Block Frontmatter](http://sli.dev/features/block-frontmatter)

[GitHub Repo](https://github.com/slidevjs/prettier-plugin)

[Prettier](https://prettier.io/)

 Tags 

[Editor](http://sli.dev/features/#tags=editor)

On this page

*   [1. Install](http://sli.dev/features/prettier-plugin#_1-install "1. Install")
*   [2. Activate the plugin](http://sli.dev/features/prettier-plugin#_2-activate-the-plugin "2. Activate the plugin")

Are you an LLM? You can read better optimized documentation at /features/prettier-plugin.md for this page in Markdown format

Prettier Plugin [​](http://sli.dev/features/prettier-plugin#prettier-plugin)
============================================================================

The Slidev's syntax may be incompatible with the default Markdown parser of [Prettier](https://prettier.io/). To solve this, Slidev provides a Prettier plugin to format your slides. You can use it with your favorite editor that supports Prettier.

1. Install [​](http://sli.dev/features/prettier-plugin#_1-install)
------------------------------------------------------------------

npm pnpm yarn bun deno 

bash`npm i -D prettier prettier-plugin-slidev`

bash`pnpm i -D prettier prettier-plugin-slidev`

bash`yarn add -D prettier prettier-plugin-slidev`

bash`bun add -D prettier prettier-plugin-slidev`

bash`deno add -D npm:prettier npm:prettier-plugin-slidev`

2. Activate the plugin [​](http://sli.dev/features/prettier-plugin#_2-activate-the-plugin)
------------------------------------------------------------------------------------------

Create or modify your [prettier configuration file](https://prettier.io/docs/en/configuration) to activate the plugin:

json
```
{
  "overrides": [
    {
      "files": ["slides.md", "pages/*.md"],
      "options": {
        "parser": "slidev",
        "plugins": ["prettier-plugin-slidev"]
      }
    }
  ]
}
```

Note that only specifying `plugins` is not enough, because Slidev and common Markdown files share the same file extension `.md`.

[Suggest changes to this page](https://github.com/slidevjs/slidev/edit/main/docs/features/prettier-plugin.md)

Pager

[Next page All Features](http://sli.dev/features)

Released under the MIT License.

Copyright © 2020-2025 Anthony Fu.

