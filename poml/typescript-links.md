# TypeScript API Reference
==========================================================================================================================

_Estimated time to read: 1 minute_

Warning

The TypeScript API is currently in rapid development and may change frequently. Please do not consider it a stable API. Use at your own risk.

Note

This documentation is auto-generated from the TypeScript source code using TypeDoc.

Installation[¶](https://microsoft.github.io/poml/stable/typescript/#installation "Permanent link")
--------------------------------------------------------------------------------------------------

### Stable Release[¶](https://microsoft.github.io/poml/stable/typescript/#stable-release "Permanent link")

To use the POML TypeScript API, install the package via npm:

```
npm install pomljs
```

### Nightly Build[¶](https://microsoft.github.io/poml/stable/typescript/#nightly-build "Permanent link")

```
npm install pomljs@nightly
```

Quick Start[¶](https://microsoft.github.io/poml/stable/typescript/#quick-start "Permanent link")
------------------------------------------------------------------------------------------------

```
import { Paragraph, Image } from 'poml/essentials';
import { read, write } from 'poml';
const prompt = <Paragraph>
  Hello, world! Here is an image:
  <Image src="photo.jpg" alt="A beautiful scenery" />
</Paragraph>;

// Parse the prompt components into an intermediate representation (IR)
const ir = await read(prompt);

// Render it to different formats
const markdown = write(ir);
```

Links[¶](https://microsoft.github.io/poml/stable/typescript/#links "Permanent link")
------------------------------------------------------------------------------------

*   [Components Documentation](https://microsoft.github.io/poml/stable/language/components/): detailed component specifications with examples and parameters.
*   [TypeScript API Reference](https://microsoft.github.io/poml/stable/typescript/reference/): auto-generated API reference for TypeScript components and utilities.
