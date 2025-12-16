Title: Slidev

URL Source: http://sli.dev/features/slot-sugar

Markdown Content:
Slot Sugar for Layouts | Slidev

===============

[Skip to content](http://sli.dev/features/slot-sugar#VPContent)

[![Image 1](http://sli.dev/logo.svg)Slidev[New Docs!](http://sli.dev/features/slot-sugar)](http://sli.dev/)

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

[简体中文](https://cn.sli.dev/features/slot-sugar)

[日本語](https://ja.sli.dev/features/slot-sugar)

[](https://github.com/slidevjs/slidev)[](https://twitter.com/slidevjs)[](https://chat.sli.dev/)

English (v52.10.1)

[简体中文](https://cn.sli.dev/features/slot-sugar)

[日本語](https://ja.sli.dev/features/slot-sugar)

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

[Vue's Named Slots](https://v3.vuejs.org/guide/component-slots.html)

 Tags 

[Layout](http://sli.dev/features/#tags=layout)[Syntax](http://sli.dev/features/#tags=syntax)

On this page

Are you an LLM? You can read better optimized documentation at /features/slot-sugar.md for this page in Markdown format

Slot Sugar for Layouts [​](http://sli.dev/features/slot-sugar#slot-sugar-for-layouts)
=====================================================================================

Some layouts can provide multiple contributing points using [Vue's named slots](https://vuejs.org/guide/components/slots.html).

For example, in [`two-cols` layout](https://github.com/slidevjs/slidev/blob/main/packages/client/layouts/two-cols.vue), you can have two columns left (`default` slot) and right (`right` slot) side by side.

md
```
---
layout: two-cols
---

<template v-slot:default>

# Left

This is shown on the left

</template>
<template v-slot:right>

# Right

This is shown on the right

</template>
```

### Left

This shows on the left

### Right

This shows on the right

We also provide a shorthand syntactical sugar `::name::` for slot name. The following works exactly the same as the previous example.

md
```
---
layout: two-cols
---

# Left

This is shown on the left

::right::

# Right

This is shown on the right
```

You can also explicitly specify the default slot and provide it in the custom order.

md
```
---
layout: two-cols
---

::right::

# Right

This shows on the right

::default::

# Left

This is shown on the left
```

[Suggest changes to this page](https://github.com/slidevjs/slidev/edit/main/docs/features/slot-sugar.md)

Pager

[Next page All Features](http://sli.dev/features)

Released under the MIT License.

Copyright © 2020-2025 Anthony Fu.

