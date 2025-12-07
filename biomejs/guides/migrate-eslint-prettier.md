[Skip to content](https://biomejs.dev/guides/migrate-eslint-prettier/#_top)

# Migrate from ESLint and Prettier

Biome provides dedicated commands to ease the migration from ESLint and Prettier.

If you don’t want to know the details, just run the following commands:

```
biome migrate eslint --write

biome migrate prettier --write
```

## Migrate from ESLint

[Section titled “Migrate from ESLint”](https://biomejs.dev/guides/migrate-eslint-prettier/#migrate-from-eslint)

Many Biome linter rules are inspired by or identical to the ESLint rules or the rules of an ESLint plugin.
We handle some ESLint plugins such as [TypeScript ESLint](https://typescript-eslint.io/), [ESLint JSX A11y](https://github.com/jsx-eslint/eslint-plugin-jsx-a11y), [ESLint React](https://github.com/jsx-eslint/eslint-plugin-react), and [ESLint Unicorn](https://github.com/sindresorhus/eslint-plugin-unicorn).
However, Biome has its own naming convention for its rules.
Biome uses `camelCaseRuleName` while ESLint uses `kebab-case-rule-name`.
Moreover, Biome has often chosen to use different names to better convey the intent of its rules.
The source of a rule can be found on the page describing the rule.
You can also find the equivalent Biome rule from an ESLint rule using the [dedicated page](https://biomejs.dev/linter/rules-sources).

To ease the migration, Biome provides the `biome migrate eslint` subcommand.
This subcommand will read your ESLint configuration and attempt to port its settings to Biome.
The subcommand is able to handle both the legacy and the flat configuration files.
It supports the `extends` field of the legacy configuration and loads both shared and plugin configurations.
For flat configuration files, the subcommand will attempt to search for JavaScript extension only (`js`, `cjs`, `mjs`) to be loaded into Node.js.
The subcommand needs Node.js to load and resolve all the plugins and `extends` configured in the ESLint configuration file.
The subcommand also migrates `.eslintignore`.

Given the following ESLint configuration:

```
{

  "extends": ["plugin:unicorn/recommended"],

  "plugins": ["unicorn"],

  "ignore_patterns": ["dist/**"],

  "globals": {

    "Global1": "readonly"

  },

  "rules": {

    "eqeqeq": "error"

  },

  "overrides": [\
\
    {\
\
      "files": ["tests/**"],\
\
      "rules": {\
\
        "eqeqeq": "off"\
\
      }\
\
    }\
\
  ]

}
```

And the following Biome configuration:

```
{

  "linter": {

    "enabled": true,

    "rules": {

      "recommended": true

    }

  }

}
```

Run the following command to migrate your ESLint configuration to Biome.

- [npm](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-194)
- [pnpm](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-195)
- [bun](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-196)
- [deno](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-197)
- [yarn](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-198)

```
npx @biomejs/biome migrate eslint --write
```

```
pnpm exec biome migrate eslint --write
```

```
bunx --bun biome migrate eslint --write
```

```
deno run -A npm:@biomejs/biome migrate eslint --write
```

```
yarn exec biome migrate eslint --write
```

The subcommand overwrites your initial Biome configuration.
For example, it disables `recommended`.
This results in the following Biome configuration:

```
{

  "organizeImports": { "enabled": true },

  "linter": {

    "enabled": true,

    "rules": {

      "recommended": false,

      "complexity": {

        "noForEach": "error",

        "noStaticOnlyClass": "error",

        "noUselessSwitchCase": "error",

        "useFlatMap": "error"

      },

      "style": {

        "noNegationElse": "off",

        "useForOf": "error",

        "useNodejsImportProtocol": "error",

        "useNumberNamespace": "error"

      },

      "suspicious": {

        "noDoubleEquals": "error",

        "noThenProperty": "error",

        "useIsArray": "error"

      }

    }

  },

  "javascript": { "globals": ["Global1"] },

  "overrides": [\
\
    {\
\
      "include": ["tests/**"],\
\
      "linter": { "rules": { "suspicious": { "noDoubleEquals": "off" } } }\
\
    }\
\
  ]

}
```

For now, `biome migrate eslint` doesn’t support configuration written in YAML.

By default, Biome doesn’t migrate inspired rules.
You can use the CLI flag `--include-inspired` to migrate them.

- [npm](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-199)
- [pnpm](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-200)
- [bun](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-201)
- [deno](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-202)
- [yarn](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-203)

```
npx @biomejs/biome migrate eslint --write --include-inspired
```

```
pnpm exec biome migrate eslint --write --include-inspired
```

```
bunx --bun biome migrate eslint --write --include-inspired
```

```
deno run -A npm:@biomejs/biome migrate eslint --write --include-inspired
```

```
yarn exec biome migrate eslint --write --include-inspired
```

Note that you are unlikely to get exactly the same behavior as ESLint because Biome has chosen not to implement some rule options or to deviate slightly from the original implementation.

Since ESLint takes VCS ignore files into account,
we recommend that you enable Biome’s [VCS integration](https://biomejs.dev/guides/integrate-in-vcs).

## Migrate from Prettier

[Section titled “Migrate from Prettier”](https://biomejs.dev/guides/migrate-eslint-prettier/#migrate-from-prettier)

Biome tries to match the Prettier formatter as closely as possible.
However, Biome uses different defaults for its formatter.
For example, it uses tabs for indentation instead of spaces.
You can easily migrate to Biome by running `biome migrate prettier --write`.

Given the following Prettier configuration:

```
{

  "useTabs": false,

  "singleQuote": true,

  "overrides": [\
\
    {\
\
          "files": ["*.json"],\
\
          "options": { "tabWidth": 2 }\
\
      }\
\
  ]

}
```

Run the following command to migrate your Prettier configuration to Biome.

- [npm](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-204)
- [pnpm](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-205)
- [bun](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-206)
- [deno](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-207)
- [yarn](https://biomejs.dev/guides/migrate-eslint-prettier/#tab-panel-208)

```
npx @biomejs/biome migrate prettier --write
```

```
pnpm exec biome migrate prettier --write
```

```
bunx --bun biome migrate prettier --write
```

```
deno run -A npm:@biomejs/biome migrate prettier --write
```

```
yarn exec biome migrate prettier --write
```

This results in the following Biome configuration:

```
{

  "formatter": {

    "enabled": true,

    "formatWithErrors": false,

    "indentStyle": "space",

    "indentWidth": 2,

    "lineEnding": "lf",

    "lineWidth": 80,

    "attributePosition": "auto"

  },

  "organizeImports": { "enabled": true },

  "linter": { "enabled": true, "rules": { "recommended": true } },

  "javascript": {

    "formatter": {

      "jsxQuoteStyle": "double",

      "quoteProperties": "asNeeded",

      "trailingCommas": "all",

      "semicolons": "asNeeded",

      "arrowParentheses": "always",

      "bracketSpacing": true,

      "bracketSameLine": false,

      "quoteStyle": "single",

      "attributePosition": "auto"

    }

  },

  "overrides": [\
\
    {\
\
      "include": ["*.json"],\
\
      "formatter": {\
\
        "indentWidth": 2\
\
      }\
\
    }\
\
  ]

}
```

The subcommand needs Node.js to load JavaScript configurations such as `.prettierrc.js`.
`biome migrate prettier` doesn’t support configuration written in JSON5, TOML, or YAML.

Since Prettier takes VCS ignore files into account,
we recommend that you enable Biome’s [VCS integration](https://biomejs.dev/guides/integrate-in-vcs).

Copyright (c) 2023-present Biome Developers and Contributors.
