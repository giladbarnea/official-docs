Title: Slidev

URL Source: http://sli.dev/features/slide-hook

Markdown Content:
Slide Hooks | Slidev

===============

[Skip to content](http://sli.dev/features/slide-hook#VPContent)

[![Image 1](http://sli.dev/logo.svg)Slidev[New Docs!](http://sli.dev/features/slide-hook)](http://sli.dev/)

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

[简体中文](https://cn.sli.dev/features/slide-hook)

[日本語](https://ja.sli.dev/features/slide-hook)

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/slide-hook)

[日本語](https://ja.sli.dev/features/slide-hook)

Appearance

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

Menu

Return to top

 Sidebar Navigation 

Back to
-------

[All Features](http://sli.dev/features)

Depends on
----------

[📖 Global Context](http://sli.dev/guide/global-context)

 Tags 

[Client API](http://sli.dev/features/#tags=client-api)

On this page

Are you an LLM? You can read better optimized documentation at /features/slide-hook.md for this page in Markdown format

Slide Hooks [​](http://sli.dev/features/slide-hook#slide-hooks)
===============================================================

Slidev provides a set of hooks to help you manage the slide lifecycle:

ts
```
import { onSlideEnter, onSlideLeave, useIsSlideActive } from '@slidev/client'

const isActive = useIsSlideActive()

onSlideEnter(() => {
  /* Called whenever the slide becomes active */
})

onSlideLeave(() => {
  /* Called whenever the slide becomes inactive */
})
```

You can also use 📖 Global Context to access other useful context information.

WARNING

In the slide component, `onMounted` and `onUnmounted` hooks are not available, because the component instance is preserved even when the slide is not active. Use `onSlideEnter` and `onSlideLeave` instead.

[Suggest changes to this page](https://github.com/slidevjs/slidev/edit/main/docs/features/slide-hook.md)

Pager

[Next page All Features](http://sli.dev/features)

Released under the MIT License.

Copyright © 2020-2025 Anthony Fu.

