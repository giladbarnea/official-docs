Title: Slidev

URL Source: http://sli.dev/features/drawing

Markdown Content:
Drawing & Annotations [​](http://sli.dev/features/drawing#drawing-annotations)
------------------------------------------------------------------------------

Slidev comes with a built-in drawing and annotation feature powered by [drauu](https://github.com/antfu/drauu). It allows you to draw and annotate your slides with ease.

To start, click the  icon in the [navigation bar](https://sli.dev/guide/ui#navigation-bar) to open the drawing toolbar. It's also available in the [Presenter Mode](https://sli.dev/guide/ui#presenter-mode). Drawings and annotations you created will be **synced** automatically across all instances in real-time.

Use with Stylus Pen [​](http://sli.dev/features/drawing#use-with-stylus-pen)
----------------------------------------------------------------------------

When using a stylus pen on a tablet (for example, iPad with Apple Pencil), Slidev will intelligently detect the input type. You can directly draw on your slides with the pen without turning on the drawing mode while having your fingers or mouse control the navigation.

Persist Drawings [​](http://sli.dev/features/drawing#persist-drawings)
----------------------------------------------------------------------

The following frontmatter configuration allows you to persist your drawings as SVGs under `.slidev/drawings` directory and have them inside your exported PDF or hosted site.

md

```
---
drawings:
  persist: true
---
```

Disable Drawings [​](http://sli.dev/features/drawing#disable-drawings)
----------------------------------------------------------------------

Entirely:

md

```
---
drawings:
  enabled: false
---
```

Only in Development:

md

```
---
drawings:
  enabled: dev
---
```

Only in Presenter Mode:

md

```
---
drawings:
  presenterOnly: true
---
```

Drawing Syncing [​](http://sli.dev/features/drawing#drawing-syncing)
--------------------------------------------------------------------

By default, Slidev syncs up your drawings across all instances. If you are sharing your slides with others, you might want to disable the syncing via:

md

```
---
drawings:
  syncAll: false
---
```

With this config, only the drawing from the presenter instance will be able to sync with others.

