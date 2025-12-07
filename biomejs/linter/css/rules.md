[Skip to content](https://biomejs.dev/linter/css/rules/#_top)

# CSS Rules

Below the list of rules supported by Biome, divided by group. Here’s a legend of the emojis:

- The icon  indicates that the rule is part of the recommended rules.
- The icon  indicates that the rule provides a code action (fix) that is **safe** to apply.
- The icon  indicates that the rule provides a code action (fix) that is **unsafe** to apply.
- The icon  indicates that the rule has been implemented and scheduled for the next release.

## `a11y`

[Section titled “a11y”](https://biomejs.dev/linter/css/rules/#a11y)

| Rule name | Description | Properties |
| --- | --- | --- |
| [useGenericFontNames](https://biomejs.dev/linter/rules/use-generic-font-names) | Disallow a missing generic family keyword within font families. |  |

## `complexity`

[Section titled “complexity”](https://biomejs.dev/linter/css/rules/#complexity)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noImportantStyles](https://biomejs.dev/linter/rules/no-important-styles) | Disallow the use of the `!important` style. |  |

## `correctness`

[Section titled “correctness”](https://biomejs.dev/linter/css/rules/#correctness)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noInvalidDirectionInLinearGradient](https://biomejs.dev/linter/rules/no-invalid-direction-in-linear-gradient) | Disallow non-standard direction values for linear gradient functions. |  |
| [noInvalidGridAreas](https://biomejs.dev/linter/rules/no-invalid-grid-areas) | Disallows invalid named grid areas in CSS Grid Layouts. |  |
| [noInvalidPositionAtImportRule](https://biomejs.dev/linter/rules/no-invalid-position-at-import-rule) | Disallow the use of `@import` at-rules in invalid positions. |  |
| [noMissingVarFunction](https://biomejs.dev/linter/rules/no-missing-var-function) | Disallow missing var function for css variables. |  |
| [noUnknownFunction](https://biomejs.dev/linter/rules/no-unknown-function) | Disallow unknown CSS value functions. |  |
| [noUnknownMediaFeatureName](https://biomejs.dev/linter/rules/no-unknown-media-feature-name) | Disallow unknown media feature names. |  |
| [noUnknownProperty](https://biomejs.dev/linter/rules/no-unknown-property) | Disallow unknown properties. |  |
| [noUnknownPseudoClass](https://biomejs.dev/linter/rules/no-unknown-pseudo-class) | Disallow unknown pseudo-class selectors. |  |
| [noUnknownPseudoElement](https://biomejs.dev/linter/rules/no-unknown-pseudo-element) | Disallow unknown pseudo-element selectors. |  |
| [noUnknownTypeSelector](https://biomejs.dev/linter/rules/no-unknown-type-selector) | Disallow unknown type selectors. |  |
| [noUnknownUnit](https://biomejs.dev/linter/rules/no-unknown-unit) | Disallow unknown CSS units. |  |
| [noUnmatchableAnbSelector](https://biomejs.dev/linter/rules/no-unmatchable-anb-selector) | Disallow unmatchable An+B selectors. |  |

## `nursery`

[Section titled “nursery”](https://biomejs.dev/linter/css/rules/#nursery)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noEmptySource](https://biomejs.dev/linter/rules/no-empty-source) | Disallow empty sources. |  |

## `style`

[Section titled “style”](https://biomejs.dev/linter/css/rules/#style)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noDescendingSpecificity](https://biomejs.dev/linter/rules/no-descending-specificity) | Disallow a lower specificity selector from coming after a higher specificity selector. |  |
| [noValueAtRule](https://biomejs.dev/linter/rules/no-value-at-rule) | Disallow use of `@value` rule in css modules. |  |

## `suspicious`

[Section titled “suspicious”](https://biomejs.dev/linter/css/rules/#suspicious)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noDuplicateAtImportRules](https://biomejs.dev/linter/rules/no-duplicate-at-import-rules) | Disallow duplicate `@import` rules. |  |
| [noDuplicateCustomProperties](https://biomejs.dev/linter/rules/no-duplicate-custom-properties) | Disallow duplicate custom properties within declaration blocks. |  |
| [noDuplicateFontNames](https://biomejs.dev/linter/rules/no-duplicate-font-names) | Disallow duplicate names within font families. |  |
| [noDuplicateProperties](https://biomejs.dev/linter/rules/no-duplicate-properties) | Disallow duplicate properties within declaration blocks. |  |
| [noDuplicateSelectorsKeyframeBlock](https://biomejs.dev/linter/rules/no-duplicate-selectors-keyframe-block) | Disallow duplicate selectors within keyframe blocks. |  |
| [noEmptyBlock](https://biomejs.dev/linter/rules/no-empty-block) | Disallow CSS empty blocks. |  |
| [noImportantInKeyframe](https://biomejs.dev/linter/rules/no-important-in-keyframe) | Disallow invalid `!important` within keyframe declarations |  |
| [noIrregularWhitespace](https://biomejs.dev/linter/rules/no-irregular-whitespace) | Disallows the use of irregular whitespace characters. |  |
| [noShorthandPropertyOverrides](https://biomejs.dev/linter/rules/no-shorthand-property-overrides) | Disallow shorthand properties that override related longhand properties. |  |
| [noUnknownAtRules](https://biomejs.dev/linter/rules/no-unknown-at-rules) | Disallow unknown at-rules. |  |
| [noUselessEscapeInString](https://biomejs.dev/linter/rules/no-useless-escape-in-string) | Disallow unnecessary escapes in string literals. |  |

## Recommended rules

[Section titled “Recommended rules”](https://biomejs.dev/linter/css/rules/#recommended-rules)

- [useGenericFontNames](https://biomejs.dev/linter/rules/use-generic-font-names) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noImportantStyles](https://biomejs.dev/linter/rules/no-important-styles) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noInvalidDirectionInLinearGradient](https://biomejs.dev/linter/rules/no-invalid-direction-in-linear-gradient) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInvalidGridAreas](https://biomejs.dev/linter/rules/no-invalid-grid-areas) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInvalidPositionAtImportRule](https://biomejs.dev/linter/rules/no-invalid-position-at-import-rule) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noMissingVarFunction](https://biomejs.dev/linter/rules/no-missing-var-function) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownFunction](https://biomejs.dev/linter/rules/no-unknown-function) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownMediaFeatureName](https://biomejs.dev/linter/rules/no-unknown-media-feature-name) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownProperty](https://biomejs.dev/linter/rules/no-unknown-property) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownPseudoClass](https://biomejs.dev/linter/rules/no-unknown-pseudo-class) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownPseudoElement](https://biomejs.dev/linter/rules/no-unknown-pseudo-element) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownTypeSelector](https://biomejs.dev/linter/rules/no-unknown-type-selector) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownUnit](https://biomejs.dev/linter/rules/no-unknown-unit) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnmatchableAnbSelector](https://biomejs.dev/linter/rules/no-unmatchable-anb-selector) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDescendingSpecificity](https://biomejs.dev/linter/rules/no-descending-specificity) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noDuplicateAtImportRules](https://biomejs.dev/linter/rules/no-duplicate-at-import-rules) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateCustomProperties](https://biomejs.dev/linter/rules/no-duplicate-custom-properties) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateFontNames](https://biomejs.dev/linter/rules/no-duplicate-font-names) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateProperties](https://biomejs.dev/linter/rules/no-duplicate-properties) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateSelectorsKeyframeBlock](https://biomejs.dev/linter/rules/no-duplicate-selectors-keyframe-block) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noEmptyBlock](https://biomejs.dev/linter/rules/no-empty-block) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noImportantInKeyframe](https://biomejs.dev/linter/rules/no-important-in-keyframe) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noIrregularWhitespace](https://biomejs.dev/linter/rules/no-irregular-whitespace) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noShorthandPropertyOverrides](https://biomejs.dev/linter/rules/no-shorthand-property-overrides) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnknownAtRules](https://biomejs.dev/linter/rules/no-unknown-at-rules) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUselessEscapeInString](https://biomejs.dev/linter/rules/no-useless-escape-in-string) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))

Missing a rule? Help us by [contributing](https://github.com/biomejs/biome/blob/main/CONTRIBUTING.md) to the [analyzer](https://github.com/biomejs/biome/blob/main/crates/biome_analyze/CONTRIBUTING.md) or create a rule suggestion [here](https://github.com/biomejs/biome/discussions/categories/rule-suggestion).

Copyright (c) 2023-present Biome Developers and Contributors.
