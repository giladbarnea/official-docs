[Skip to content](https://biomejs.dev/linter/javascript/rules/#_top)

# JavaScript Rules

Below the list of rules supported by Biome, divided by group. Here’s a legend of the emojis:

- The icon  indicates that the rule is part of the recommended rules.
- The icon  indicates that the rule provides a code action (fix) that is **safe** to apply.
- The icon  indicates that the rule provides a code action (fix) that is **unsafe** to apply.
- The icon  indicates that the rule has been implemented and scheduled for the next release.

## `a11y`

[Section titled “a11y”](https://biomejs.dev/linter/javascript/rules/#a11y)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noAccessKey](https://biomejs.dev/linter/rules/no-access-key) | Enforce that the `accessKey` attribute is not used on any HTML element. |  |
| [noAriaHiddenOnFocusable](https://biomejs.dev/linter/rules/no-aria-hidden-on-focusable) | Enforce that aria-hidden=“true” is not set on focusable elements. |  |
| [noAriaUnsupportedElements](https://biomejs.dev/linter/rules/no-aria-unsupported-elements) | Enforce that elements that do not support ARIA roles, states, and properties do not have those attributes. |  |
| [noAutofocus](https://biomejs.dev/linter/rules/no-autofocus) | Enforce that autoFocus prop is not used on elements. |  |
| [noDistractingElements](https://biomejs.dev/linter/rules/no-distracting-elements) | Enforces that no distracting elements are used. |  |
| [noHeaderScope](https://biomejs.dev/linter/rules/no-header-scope) | The scope prop should be used only on `<th>` elements. |  |
| [noInteractiveElementToNoninteractiveRole](https://biomejs.dev/linter/rules/no-interactive-element-to-noninteractive-role) | Enforce that non-interactive ARIA roles are not assigned to interactive HTML elements. |  |
| [noLabelWithoutControl](https://biomejs.dev/linter/rules/no-label-without-control) | Enforce that a label element or component has a text label and an associated input. |  |
| [noNoninteractiveElementInteractions](https://biomejs.dev/linter/rules/no-noninteractive-element-interactions) | Disallow use event handlers on non-interactive elements. |  |
| [noNoninteractiveElementToInteractiveRole](https://biomejs.dev/linter/rules/no-noninteractive-element-to-interactive-role) | Enforce that interactive ARIA roles are not assigned to non-interactive HTML elements. |  |
| [noNoninteractiveTabindex](https://biomejs.dev/linter/rules/no-noninteractive-tabindex) | Enforce that `tabIndex` is not assigned to non-interactive HTML elements. |  |
| [noPositiveTabindex](https://biomejs.dev/linter/rules/no-positive-tabindex) | Prevent the usage of positive integers on `tabIndex` property |  |
| [noRedundantAlt](https://biomejs.dev/linter/rules/no-redundant-alt) | Enforce `img` alt prop does not contain the word “image”, “picture”, or “photo”. |  |
| [noRedundantRoles](https://biomejs.dev/linter/rules/no-redundant-roles) | Enforce explicit `role` property is not the same as implicit/default role property on an element. |  |
| [noStaticElementInteractions](https://biomejs.dev/linter/rules/no-static-element-interactions) | Enforce that static, visible elements (such as `<div>`) that have click handlers use the valid role attribute. |  |
| [noSvgWithoutTitle](https://biomejs.dev/linter/rules/no-svg-without-title) | Enforces the usage of the `title` element for the `svg` element. |  |
| [useAltText](https://biomejs.dev/linter/rules/use-alt-text) | Enforce that all elements that require alternative text have meaningful information to relay back to the end user. |  |
| [useAnchorContent](https://biomejs.dev/linter/rules/use-anchor-content) | Enforce that anchors have content and that the content is accessible to screen readers. |  |
| [useAriaActivedescendantWithTabindex](https://biomejs.dev/linter/rules/use-aria-activedescendant-with-tabindex) | Enforce that `tabIndex` is assigned to non-interactive HTML elements with `aria-activedescendant`. |  |
| [useAriaPropsForRole](https://biomejs.dev/linter/rules/use-aria-props-for-role) | Enforce that elements with ARIA roles must have all required ARIA attributes for that role. |  |
| [useAriaPropsSupportedByRole](https://biomejs.dev/linter/rules/use-aria-props-supported-by-role) | Enforce that ARIA properties are valid for the roles that are supported by the element. |  |
| [useButtonType](https://biomejs.dev/linter/rules/use-button-type) | Enforces the usage of the attribute `type` for the element `button` |  |
| [useFocusableInteractive](https://biomejs.dev/linter/rules/use-focusable-interactive) | Elements with an interactive role and interaction handlers must be focusable. |  |
| [useHeadingContent](https://biomejs.dev/linter/rules/use-heading-content) | Enforce that heading elements (h1, h2, etc.) have content and that the content is accessible to screen readers. Accessible means that it is not hidden using the aria-hidden prop. |  |
| [useHtmlLang](https://biomejs.dev/linter/rules/use-html-lang) | Enforce that `html` element has `lang` attribute. |  |
| [useIframeTitle](https://biomejs.dev/linter/rules/use-iframe-title) | Enforces the usage of the attribute `title` for the element `iframe`. |  |
| [useKeyWithClickEvents](https://biomejs.dev/linter/rules/use-key-with-click-events) | Enforce onClick is accompanied by at least one of the following: `onKeyUp`, `onKeyDown`, `onKeyPress`. |  |
| [useKeyWithMouseEvents](https://biomejs.dev/linter/rules/use-key-with-mouse-events) | Enforce `onMouseOver` / `onMouseOut` are accompanied by `onFocus` / `onBlur`. |  |
| [useMediaCaption](https://biomejs.dev/linter/rules/use-media-caption) | Enforces that `audio` and `video` elements must have a `track` for captions. |  |
| [useSemanticElements](https://biomejs.dev/linter/rules/use-semantic-elements) | It detects the use of `role` attributes in JSX elements and suggests using semantic elements instead. |  |
| [useValidAnchor](https://biomejs.dev/linter/rules/use-valid-anchor) | Enforce that all anchors are valid, and they are navigable elements. |  |
| [useValidAriaProps](https://biomejs.dev/linter/rules/use-valid-aria-props) | Ensures that ARIA properties `aria-*` are all valid. |  |
| [useValidAriaRole](https://biomejs.dev/linter/rules/use-valid-aria-role) | Elements with ARIA roles must use a valid, non-abstract ARIA role. |  |
| [useValidAriaValues](https://biomejs.dev/linter/rules/use-valid-aria-values) | Enforce that ARIA state and property values are valid. |  |
| [useValidAutocomplete](https://biomejs.dev/linter/rules/use-valid-autocomplete) | Use valid values for the `autocomplete` attribute on `input` elements. |  |
| [useValidLang](https://biomejs.dev/linter/rules/use-valid-lang) | Ensure that the attribute passed to the `lang` attribute is a correct ISO language and/or country. |  |

## `complexity`

[Section titled “complexity”](https://biomejs.dev/linter/javascript/rules/#complexity)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noAdjacentSpacesInRegex](https://biomejs.dev/linter/rules/no-adjacent-spaces-in-regex) | Disallow unclear usage of consecutive space characters in regular expression literals |  |
| [noArguments](https://biomejs.dev/linter/rules/no-arguments) | Disallow the use of `arguments`. |  |
| [noBannedTypes](https://biomejs.dev/linter/rules/no-banned-types) | Disallow primitive type aliases and misleading types. |  |
| [noCommaOperator](https://biomejs.dev/linter/rules/no-comma-operator) | Disallow comma operator. |  |
| [noEmptyTypeParameters](https://biomejs.dev/linter/rules/no-empty-type-parameters) | Disallow empty type parameters in type aliases and interfaces. |  |
| [noExcessiveCognitiveComplexity](https://biomejs.dev/linter/rules/no-excessive-cognitive-complexity) | Disallow functions that exceed a given Cognitive Complexity score. |  |
| [noExcessiveLinesPerFunction](https://biomejs.dev/linter/rules/no-excessive-lines-per-function) | Restrict the number of lines of code in a function. |  |
| [noExcessiveNestedTestSuites](https://biomejs.dev/linter/rules/no-excessive-nested-test-suites) | This rule enforces a maximum depth to nested `describe()` in test files. |  |
| [noExtraBooleanCast](https://biomejs.dev/linter/rules/no-extra-boolean-cast) | Disallow unnecessary boolean casts |  |
| [noFlatMapIdentity](https://biomejs.dev/linter/rules/no-flat-map-identity) | Disallow to use unnecessary callback on `flatMap`. |  |
| [noForEach](https://biomejs.dev/linter/rules/no-for-each) | Prefer `for...of` statement instead of `Array.forEach`. |  |
| [noImplicitCoercions](https://biomejs.dev/linter/rules/no-implicit-coercions) | Disallow shorthand type conversions. |  |
| [noStaticOnlyClass](https://biomejs.dev/linter/rules/no-static-only-class) | This rule reports when a class has no non-static members, such as for a class used exclusively as a static namespace. |  |
| [noThisInStatic](https://biomejs.dev/linter/rules/no-this-in-static) | Disallow `this` and `super` in `static` contexts. |  |
| [noUselessCatch](https://biomejs.dev/linter/rules/no-useless-catch) | Disallow unnecessary `catch` clauses. |  |
| [noUselessConstructor](https://biomejs.dev/linter/rules/no-useless-constructor) | Disallow unnecessary constructors. |  |
| [noUselessContinue](https://biomejs.dev/linter/rules/no-useless-continue) | Avoid using unnecessary `continue`. |  |
| [noUselessEmptyExport](https://biomejs.dev/linter/rules/no-useless-empty-export) | Disallow empty exports that don’t change anything in a module file. |  |
| [noUselessEscapeInRegex](https://biomejs.dev/linter/rules/no-useless-escape-in-regex) | Disallow unnecessary escape sequence in regular expression literals. |  |
| [noUselessFragments](https://biomejs.dev/linter/rules/no-useless-fragments) | Disallow unnecessary fragments |  |
| [noUselessLabel](https://biomejs.dev/linter/rules/no-useless-label) | Disallow unnecessary labels. |  |
| [noUselessLoneBlockStatements](https://biomejs.dev/linter/rules/no-useless-lone-block-statements) | Disallow unnecessary nested block statements. |  |
| [noUselessRename](https://biomejs.dev/linter/rules/no-useless-rename) | Disallow renaming import, export, and destructured assignments to the same name. |  |
| [noUselessStringConcat](https://biomejs.dev/linter/rules/no-useless-string-concat) | Disallow unnecessary concatenation of string or template literals. |  |
| [noUselessStringRaw](https://biomejs.dev/linter/rules/no-useless-string-raw) | Disallow unnecessary `String.raw` function in template string literals without any escape sequence. |  |
| [noUselessSwitchCase](https://biomejs.dev/linter/rules/no-useless-switch-case) | Disallow useless `case` in `switch` statements. |  |
| [noUselessTernary](https://biomejs.dev/linter/rules/no-useless-ternary) | Disallow ternary operators when simpler alternatives exist. |  |
| [noUselessThisAlias](https://biomejs.dev/linter/rules/no-useless-this-alias) | Disallow useless `this` aliasing. |  |
| [noUselessTypeConstraint](https://biomejs.dev/linter/rules/no-useless-type-constraint) | Disallow using `any` or `unknown` as type constraint. |  |
| [noUselessUndefinedInitialization](https://biomejs.dev/linter/rules/no-useless-undefined-initialization) | Disallow initializing variables to `undefined`. |  |
| [noVoid](https://biomejs.dev/linter/rules/no-void) | Disallow the use of `void` operators, which is not a familiar operator. |  |
| [useArrowFunction](https://biomejs.dev/linter/rules/use-arrow-function) | Use arrow functions over function expressions. |  |
| [useDateNow](https://biomejs.dev/linter/rules/use-date-now) | Use `Date.now()` to get the number of milliseconds since the Unix Epoch. |  |
| [useFlatMap](https://biomejs.dev/linter/rules/use-flat-map) | Promotes the use of `.flatMap()` when `map().flat()` are used together. |  |
| [useIndexOf](https://biomejs.dev/linter/rules/use-index-of) | Prefer `Array#{indexOf,lastIndexOf}()` over `Array#{findIndex,findLastIndex}()` when looking for the index of an item. |  |
| [useLiteralKeys](https://biomejs.dev/linter/rules/use-literal-keys) | Enforce the usage of a literal access to properties over computed property access. |  |
| [useNumericLiterals](https://biomejs.dev/linter/rules/use-numeric-literals) | Disallow `parseInt()` and `Number.parseInt()` in favor of binary, octal, and hexadecimal literals |  |
| [useOptionalChain](https://biomejs.dev/linter/rules/use-optional-chain) | Enforce using concise optional chain instead of chained logical expressions. |  |
| [useRegexLiterals](https://biomejs.dev/linter/rules/use-regex-literals) | Enforce the use of the regular expression literals instead of the RegExp constructor if possible. |  |
| [useSimpleNumberKeys](https://biomejs.dev/linter/rules/use-simple-number-keys) | Disallow number literal object member names which are not base 10 or use underscore as separator. |  |
| [useSimplifiedLogicExpression](https://biomejs.dev/linter/rules/use-simplified-logic-expression) | Discard redundant terms from logical expressions. |  |
| [useWhile](https://biomejs.dev/linter/rules/use-while) | Enforce the use of `while` loops instead of `for` loops when the initializer and update expressions are not needed. |  |

## `correctness`

[Section titled “correctness”](https://biomejs.dev/linter/javascript/rules/#correctness)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noChildrenProp](https://biomejs.dev/linter/rules/no-children-prop) | Prevent passing of children as props. |  |
| [noConstAssign](https://biomejs.dev/linter/rules/no-const-assign) | Prevents from having `const` variables being re-assigned. |  |
| [noConstantCondition](https://biomejs.dev/linter/rules/no-constant-condition) | Disallow constant expressions in conditions |  |
| [noConstantMathMinMaxClamp](https://biomejs.dev/linter/rules/no-constant-math-min-max-clamp) | Disallow the use of `Math.min` and `Math.max` to clamp a value where the result itself is constant. |  |
| [noConstructorReturn](https://biomejs.dev/linter/rules/no-constructor-return) | Disallow returning a value from a `constructor`. |  |
| [noEmptyCharacterClassInRegex](https://biomejs.dev/linter/rules/no-empty-character-class-in-regex) | Disallow empty character classes in regular expression literals. |  |
| [noEmptyPattern](https://biomejs.dev/linter/rules/no-empty-pattern) | Disallows empty destructuring patterns. |  |
| [noGlobalDirnameFilename](https://biomejs.dev/linter/rules/no-global-dirname-filename) | Disallow the use of `__dirname` and `__filename` in the global scope. |  |
| [noGlobalObjectCalls](https://biomejs.dev/linter/rules/no-global-object-calls) | Disallow calling global object properties as functions |  |
| [noInnerDeclarations](https://biomejs.dev/linter/rules/no-inner-declarations) | Disallow `function` and `var` declarations that are accessible outside their block. |  |
| [noInvalidBuiltinInstantiation](https://biomejs.dev/linter/rules/no-invalid-builtin-instantiation) | Ensure that builtins are correctly instantiated. |  |
| [noInvalidConstructorSuper](https://biomejs.dev/linter/rules/no-invalid-constructor-super) | Prevents the incorrect use of `super()` inside classes. It also checks whether a call `super()` is missing from classes that extends other constructors. |  |
| [noInvalidUseBeforeDeclaration](https://biomejs.dev/linter/rules/no-invalid-use-before-declaration) | Disallow the use of variables, function parameters, classes, and enums before their declaration |  |
| [noNestedComponentDefinitions](https://biomejs.dev/linter/rules/no-nested-component-definitions) | Disallows defining React components inside other components. |  |
| [noNodejsModules](https://biomejs.dev/linter/rules/no-nodejs-modules) | Forbid the use of Node.js builtin modules. |  |
| [noNonoctalDecimalEscape](https://biomejs.dev/linter/rules/no-nonoctal-decimal-escape) | Disallow `\8` and `\9` escape sequences in string literals. |  |
| [noPrecisionLoss](https://biomejs.dev/linter/rules/no-precision-loss) | Disallow literal numbers that lose precision |  |
| [noPrivateImports](https://biomejs.dev/linter/rules/no-private-imports) | Restrict imports of private exports. |  |
| [noProcessGlobal](https://biomejs.dev/linter/rules/no-process-global) | Disallow the use of `process` global. |  |
| [noQwikUseVisibleTask](https://biomejs.dev/linter/rules/no-qwik-use-visible-task) | Disallow `useVisibleTask$()` functions in Qwik components. |  |
| [noReactPropAssignments](https://biomejs.dev/linter/rules/no-react-prop-assignments) | Disallow assigning to React component props. |  |
| [noRenderReturnValue](https://biomejs.dev/linter/rules/no-render-return-value) | Prevent the usage of the return value of `React.render`. |  |
| [noRestrictedElements](https://biomejs.dev/linter/rules/no-restricted-elements) | Disallow the use of configured elements. |  |
| [noSelfAssign](https://biomejs.dev/linter/rules/no-self-assign) | Disallow assignments where both sides are exactly the same. |  |
| [noSetterReturn](https://biomejs.dev/linter/rules/no-setter-return) | Disallow returning a value from a setter |  |
| [noSolidDestructuredProps](https://biomejs.dev/linter/rules/no-solid-destructured-props) | Disallow destructuring props inside JSX components in Solid projects. |  |
| [noStringCaseMismatch](https://biomejs.dev/linter/rules/no-string-case-mismatch) | Disallow comparison of expressions modifying the string case with non-compliant value. |  |
| [noSwitchDeclarations](https://biomejs.dev/linter/rules/no-switch-declarations) | Disallow lexical declarations in `switch` clauses. |  |
| [noUndeclaredDependencies](https://biomejs.dev/linter/rules/no-undeclared-dependencies) | Disallow the use of dependencies that aren’t specified in the `package.json`. |  |
| [noUndeclaredVariables](https://biomejs.dev/linter/rules/no-undeclared-variables) | Prevents the usage of variables that haven’t been declared inside the document. |  |
| [noUnreachable](https://biomejs.dev/linter/rules/no-unreachable) | Disallow unreachable code |  |
| [noUnreachableSuper](https://biomejs.dev/linter/rules/no-unreachable-super) | Ensures the `super()` constructor is called exactly once on every code path in a class constructor before `this` is accessed if the class has a superclass |  |
| [noUnsafeFinally](https://biomejs.dev/linter/rules/no-unsafe-finally) | Disallow control flow statements in finally blocks. |  |
| [noUnsafeOptionalChaining](https://biomejs.dev/linter/rules/no-unsafe-optional-chaining) | Disallow the use of optional chaining in contexts where the undefined value is not allowed. |  |
| [noUnusedFunctionParameters](https://biomejs.dev/linter/rules/no-unused-function-parameters) | Disallow unused function parameters. |  |
| [noUnusedImports](https://biomejs.dev/linter/rules/no-unused-imports) | Disallow unused imports. |  |
| [noUnusedLabels](https://biomejs.dev/linter/rules/no-unused-labels) | Disallow unused labels. |  |
| [noUnusedPrivateClassMembers](https://biomejs.dev/linter/rules/no-unused-private-class-members) | Disallow unused private class members |  |
| [noUnusedVariables](https://biomejs.dev/linter/rules/no-unused-variables) | Disallow unused variables. |  |
| [noVoidElementsWithChildren](https://biomejs.dev/linter/rules/no-void-elements-with-children) | This rules prevents void elements (AKA self-closing elements) from having children. |  |
| [noVoidTypeReturn](https://biomejs.dev/linter/rules/no-void-type-return) | Disallow returning a value from a function with the return type ‘void’ |  |
| [useExhaustiveDependencies](https://biomejs.dev/linter/rules/use-exhaustive-dependencies) | Enforce all dependencies are correctly specified in a React hook. |  |
| [useHookAtTopLevel](https://biomejs.dev/linter/rules/use-hook-at-top-level) | Enforce that all React hooks are being called from the Top Level component functions. |  |
| [useImageSize](https://biomejs.dev/linter/rules/use-image-size) | Enforces that `<img>` elements have both width and height attributes. |  |
| [useImportExtensions](https://biomejs.dev/linter/rules/use-import-extensions) | Enforce file extensions for relative imports. |  |
| [useIsNan](https://biomejs.dev/linter/rules/use-is-nan) | Require calls to `isNaN()` when checking for `NaN`. |  |
| [useJsonImportAttributes](https://biomejs.dev/linter/rules/use-json-import-attributes) | Enforces the use of `with { type: "json" }` for JSON module imports. |  |
| [useJsxKeyInIterable](https://biomejs.dev/linter/rules/use-jsx-key-in-iterable) | Disallow missing key props in iterators/collection literals. |  |
| [useParseIntRadix](https://biomejs.dev/linter/rules/use-parse-int-radix) | Enforce the consistent use of the radix argument when using `parseInt()`. |  |
| [useQwikClasslist](https://biomejs.dev/linter/rules/use-qwik-classlist) | Prefer using the `class` prop as a classlist over the `classnames` helper. |  |
| [useSingleJsDocAsterisk](https://biomejs.dev/linter/rules/use-single-js-doc-asterisk) | Enforce JSDoc comment lines to start with a single asterisk, except for the first one. |  |
| [useUniqueElementIds](https://biomejs.dev/linter/rules/use-unique-element-ids) | Prevent the usage of static string literal `id` attribute on elements. |  |
| [useValidForDirection](https://biomejs.dev/linter/rules/use-valid-for-direction) | Enforce “for” loop update clause moving the counter in the right direction. |  |
| [useValidTypeof](https://biomejs.dev/linter/rules/use-valid-typeof) | This rule checks that the result of a `typeof` expression is compared to a valid value. |  |
| [useYield](https://biomejs.dev/linter/rules/use-yield) | Require generator functions to contain `yield`. |  |

## `nursery`

[Section titled “nursery”](https://biomejs.dev/linter/javascript/rules/#nursery)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noContinue](https://biomejs.dev/linter/rules/no-continue) | Disallow continue statements. |  |
| [noDeprecatedImports](https://biomejs.dev/linter/rules/no-deprecated-imports) | Restrict imports of deprecated exports. |  |
| [noDuplicatedSpreadProps](https://biomejs.dev/linter/rules/no-duplicated-spread-props) | Disallow JSX prop spreading the same identifier multiple times. |  |
| [noEmptySource](https://biomejs.dev/linter/rules/no-empty-source) | Disallow empty sources. |  |
| [noEqualsToNull](https://biomejs.dev/linter/rules/no-equals-to-null) | Require the use of `===` or `!==` for comparison with `null`. |  |
| [noFloatingPromises](https://biomejs.dev/linter/rules/no-floating-promises) | Require Promise-like statements to be handled appropriately. |  |
| [noForIn](https://biomejs.dev/linter/rules/no-for-in) | Disallow iterating using a for-in loop. |  |
| [noImportCycles](https://biomejs.dev/linter/rules/no-import-cycles) | Prevent import cycles. |  |
| [noIncrementDecrement](https://biomejs.dev/linter/rules/no-increment-decrement) | Disallows the usage of the unary operators ++ and —. |  |
| [noJsxLiterals](https://biomejs.dev/linter/rules/no-jsx-literals) | Disallow string literals inside JSX elements. |  |
| [noLeakedRender](https://biomejs.dev/linter/rules/no-leaked-render) | Prevent problematic leaked values from being rendered. |  |
| [noMisusedPromises](https://biomejs.dev/linter/rules/no-misused-promises) | Disallow Promises to be used in places where they are almost certainly a |  |
| [noMultiStr](https://biomejs.dev/linter/rules/no-multi-str) | Disallow creating multiline strings by escaping newlines. |  |
| [noNextAsyncClientComponent](https://biomejs.dev/linter/rules/no-next-async-client-component) | Prevent client components from being async functions. |  |
| [noParametersOnlyUsedInRecursion](https://biomejs.dev/linter/rules/no-parameters-only-used-in-recursion) | Disallow function parameters that are only used in recursive calls. |  |
| [noReactForwardRef](https://biomejs.dev/linter/rules/no-react-forward-ref) | Replaces usages of `forwardRef` with passing `ref` as a prop. |  |
| [noShadow](https://biomejs.dev/linter/rules/no-shadow) | Disallow variable declarations from shadowing variables declared in the outer scope. |  |
| [noSyncScripts](https://biomejs.dev/linter/rules/no-sync-scripts) | Prevent the usage of synchronous scripts. |  |
| [noTernary](https://biomejs.dev/linter/rules/no-ternary) | Disallow ternary operators. |  |
| [noUnknownAttribute](https://biomejs.dev/linter/rules/no-unknown-attribute) | Disallow unknown DOM properties. |  |
| [noUnnecessaryConditions](https://biomejs.dev/linter/rules/no-unnecessary-conditions) | Disallow unnecessary type-based conditions that can be statically determined as redundant. |  |
| [noUnresolvedImports](https://biomejs.dev/linter/rules/no-unresolved-imports) | Warn when importing non-existing exports. |  |
| [noUnusedExpressions](https://biomejs.dev/linter/rules/no-unused-expressions) | Disallow expression statements that are neither a function call nor an |  |
| [noUselessCatchBinding](https://biomejs.dev/linter/rules/no-useless-catch-binding) | Disallow unused catch bindings. |  |
| [noUselessUndefined](https://biomejs.dev/linter/rules/no-useless-undefined) | Disallow the use of useless `undefined`. |  |
| [noVueDataObjectDeclaration](https://biomejs.dev/linter/rules/no-vue-data-object-declaration) | Enforce that Vue component `data` options are declared as functions. |  |
| [noVueDuplicateKeys](https://biomejs.dev/linter/rules/no-vue-duplicate-keys) | Disallow duplicate keys in Vue component data, methods, computed properties, and other options. |  |
| [noVueReservedKeys](https://biomejs.dev/linter/rules/no-vue-reserved-keys) | Disallow reserved keys in Vue component data and computed properties. |  |
| [noVueReservedProps](https://biomejs.dev/linter/rules/no-vue-reserved-props) | Disallow reserved names to be used as props. |  |
| [useArraySortCompare](https://biomejs.dev/linter/rules/use-array-sort-compare) | Require Array#sort and Array#toSorted calls to always provide a compareFunction. |  |
| [useConsistentArrowReturn](https://biomejs.dev/linter/rules/use-consistent-arrow-return) | Enforce consistent arrow function bodies. |  |
| [useExhaustiveSwitchCases](https://biomejs.dev/linter/rules/use-exhaustive-switch-cases) | Require switch-case statements to be exhaustive. |  |
| [useExplicitType](https://biomejs.dev/linter/rules/use-explicit-type) | Enforce types in functions, methods, variables, and parameters. |  |
| [useFind](https://biomejs.dev/linter/rules/use-find) | Enforce the use of Array.prototype.find() over Array.prototype.filter() followed by \[0\] when looking for a single result. |  |
| [useMaxParams](https://biomejs.dev/linter/rules/use-max-params) | Enforce a maximum number of parameters in function definitions. |  |
| [useQwikMethodUsage](https://biomejs.dev/linter/rules/use-qwik-method-usage) | Disallow `use*` hooks outside of `component$` or other `use*` hooks in Qwik applications. |  |
| [useQwikValidLexicalScope](https://biomejs.dev/linter/rules/use-qwik-valid-lexical-scope) | Disallow unserializable expressions in Qwik dollar ($) scopes. |  |
| [useSortedClasses](https://biomejs.dev/linter/rules/use-sorted-classes) | Enforce the sorting of CSS utility classes. |  |
| [useSpread](https://biomejs.dev/linter/rules/use-spread) | Enforce the use of the spread operator over `.apply()`. |  |
| [useVueDefineMacrosOrder](https://biomejs.dev/linter/rules/use-vue-define-macros-order) | Enforce specific order of Vue compiler macros. |  |
| [useVueMultiWordComponentNames](https://biomejs.dev/linter/rules/use-vue-multi-word-component-names) | Enforce multi-word component names in Vue components. |  |

## `performance`

[Section titled “performance”](https://biomejs.dev/linter/javascript/rules/#performance)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noAccumulatingSpread](https://biomejs.dev/linter/rules/no-accumulating-spread) | Disallow the use of spread (`...`) syntax on accumulators. |  |
| [noAwaitInLoops](https://biomejs.dev/linter/rules/no-await-in-loops) | Disallow `await` inside loops. |  |
| [noBarrelFile](https://biomejs.dev/linter/rules/no-barrel-file) | Disallow the use of barrel file. |  |
| [noDelete](https://biomejs.dev/linter/rules/no-delete) | Disallow the use of the `delete` operator. |  |
| [noDynamicNamespaceImportAccess](https://biomejs.dev/linter/rules/no-dynamic-namespace-import-access) | Disallow accessing namespace imports dynamically. |  |
| [noImgElement](https://biomejs.dev/linter/rules/no-img-element) | Prevent usage of `<img>` element in a Next.js project. |  |
| [noNamespaceImport](https://biomejs.dev/linter/rules/no-namespace-import) | Disallow the use of namespace imports. |  |
| [noReExportAll](https://biomejs.dev/linter/rules/no-re-export-all) | Avoid re-export all. |  |
| [noUnwantedPolyfillio](https://biomejs.dev/linter/rules/no-unwanted-polyfillio) | Prevent duplicate polyfills from Polyfill.io. |  |
| [useGoogleFontPreconnect](https://biomejs.dev/linter/rules/use-google-font-preconnect) | Ensure the `preconnect` attribute is used when using Google Fonts. |  |
| [useSolidForComponent](https://biomejs.dev/linter/rules/use-solid-for-component) | Enforce using Solid’s `<For />` component for mapping an array to JSX elements. |  |
| [useTopLevelRegex](https://biomejs.dev/linter/rules/use-top-level-regex) | Require regex literals to be declared at the top level. |  |

## `security`

[Section titled “security”](https://biomejs.dev/linter/javascript/rules/#security)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noBlankTarget](https://biomejs.dev/linter/rules/no-blank-target) | Disallow `target="_blank"` attribute without `rel="noopener"`. |  |
| [noDangerouslySetInnerHtml](https://biomejs.dev/linter/rules/no-dangerously-set-inner-html/) | Prevent the usage of dangerous JSX props |  |
| [noDangerouslySetInnerHtmlWithChildren](https://biomejs.dev/linter/rules/no-dangerously-set-inner-html-with-children) | Report when a DOM element or a component uses both `children` and `dangerouslySetInnerHTML` prop. |  |
| [noGlobalEval](https://biomejs.dev/linter/rules/no-global-eval) | Disallow the use of global `eval()`. |  |
| [noSecrets](https://biomejs.dev/linter/rules/no-secrets) | Disallow usage of sensitive data such as API keys and tokens. |  |

## `style`

[Section titled “style”](https://biomejs.dev/linter/javascript/rules/#style)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noCommonJs](https://biomejs.dev/linter/rules/no-common-js) | Disallow use of CommonJs module system in favor of ESM style imports. |  |
| [noDefaultExport](https://biomejs.dev/linter/rules/no-default-export) | Disallow default exports. |  |
| [noDoneCallback](https://biomejs.dev/linter/rules/no-done-callback) | Disallow using a callback in asynchronous tests and hooks. |  |
| [noEnum](https://biomejs.dev/linter/rules/no-enum) | Disallow TypeScript enum. |  |
| [noExportedImports](https://biomejs.dev/linter/rules/no-exported-imports) | Disallow exporting an imported variable. |  |
| [noHeadElement](https://biomejs.dev/linter/rules/no-head-element) | Prevent usage of `<head>` element in a Next.js project. |  |
| [noImplicitBoolean](https://biomejs.dev/linter/rules/no-implicit-boolean) | Disallow implicit `true` values on JSX boolean attributes |  |
| [noInferrableTypes](https://biomejs.dev/linter/rules/no-inferrable-types) | Disallow type annotations for variables, parameters, and class properties initialized with a literal expression. |  |
| [noMagicNumbers](https://biomejs.dev/linter/rules/no-magic-numbers) | Reports usage of “magic numbers” — numbers used directly instead of being assigned to named constants. |  |
| [noNamespace](https://biomejs.dev/linter/rules/no-namespace) | Disallow the use of TypeScript’s `namespace`s. |  |
| [noNegationElse](https://biomejs.dev/linter/rules/no-negation-else) | Disallow negation in the condition of an `if` statement if it has an `else` clause. |  |
| [noNestedTernary](https://biomejs.dev/linter/rules/no-nested-ternary) | Disallow nested ternary expressions. |  |
| [noNonNullAssertion](https://biomejs.dev/linter/rules/no-non-null-assertion) | Disallow non-null assertions using the `!` postfix operator. |  |
| [noParameterAssign](https://biomejs.dev/linter/rules/no-parameter-assign) | Disallow reassigning `function` parameters. |  |
| [noParameterProperties](https://biomejs.dev/linter/rules/no-parameter-properties) | Disallow the use of parameter properties in class constructors. |  |
| [noProcessEnv](https://biomejs.dev/linter/rules/no-process-env) | Disallow the use of `process.env`. |  |
| [noRestrictedGlobals](https://biomejs.dev/linter/rules/no-restricted-globals) | This rule allows you to specify global variable names that you don’t want to use in your application. |  |
| [noRestrictedImports](https://biomejs.dev/linter/rules/no-restricted-imports) | Disallow specified modules when loaded by import or require. |  |
| [noRestrictedTypes](https://biomejs.dev/linter/rules/no-restricted-types) | Disallow user defined types. |  |
| [noShoutyConstants](https://biomejs.dev/linter/rules/no-shouty-constants) | Disallow the use of constants which its value is the upper-case version of its name. |  |
| [noSubstr](https://biomejs.dev/linter/rules/no-substr) | Enforce the use of `String.slice()` over `String.substr()` and `String.substring()`. |  |
| [noUnusedTemplateLiteral](https://biomejs.dev/linter/rules/no-unused-template-literal) | Disallow template literals if interpolation and special-character handling are not needed |  |
| [noUselessElse](https://biomejs.dev/linter/rules/no-useless-else) | Disallow `else` block when the `if` block breaks early. |  |
| [noYodaExpression](https://biomejs.dev/linter/rules/no-yoda-expression) | Disallow the use of yoda expressions. |  |
| [useArrayLiterals](https://biomejs.dev/linter/rules/use-array-literals) | Disallow Array constructors. |  |
| [useAsConstAssertion](https://biomejs.dev/linter/rules/use-as-const-assertion) | Enforce the use of `as const` over literal type and type annotation. |  |
| [useAtIndex](https://biomejs.dev/linter/rules/use-at-index) | Use `at()` instead of integer index access. |  |
| [useBlockStatements](https://biomejs.dev/linter/rules/use-block-statements) | Requires following curly brace conventions. |  |
| [useCollapsedElseIf](https://biomejs.dev/linter/rules/use-collapsed-else-if) | Enforce using `else if` instead of nested `if` in `else` clauses. |  |
| [useCollapsedIf](https://biomejs.dev/linter/rules/use-collapsed-if) | Enforce using single `if` instead of nested `if` clauses. |  |
| [useComponentExportOnlyModules](https://biomejs.dev/linter/rules/use-component-export-only-modules) | Enforce declaring components only within modules that export React Components exclusively. |  |
| [useConsistentArrayType](https://biomejs.dev/linter/rules/use-consistent-array-type) | Require consistently using either `T[]` or `Array<T>` |  |
| [useConsistentBuiltinInstantiation](https://biomejs.dev/linter/rules/use-consistent-builtin-instantiation) | Enforce the use of `new` for all builtins, except `String`, `Number` and `Boolean`. |  |
| [useConsistentCurlyBraces](https://biomejs.dev/linter/rules/use-consistent-curly-braces) | This rule enforces consistent use of curly braces inside JSX attributes and JSX children. |  |
| [useConsistentMemberAccessibility](https://biomejs.dev/linter/rules/use-consistent-member-accessibility) | Require consistent accessibility modifiers on class properties and methods. |  |
| [useConsistentObjectDefinitions](https://biomejs.dev/linter/rules/use-consistent-object-definitions) | Require the consistent declaration of object literals. Defaults to explicit definitions. |  |
| [useConsistentTypeDefinitions](https://biomejs.dev/linter/rules/use-consistent-type-definitions) | Enforce type definitions to consistently use either `interface` or `type`. |  |
| [useConst](https://biomejs.dev/linter/rules/use-const) | Require `const` declarations for variables that are only assigned once. |  |
| [useDefaultParameterLast](https://biomejs.dev/linter/rules/use-default-parameter-last) | Enforce default function parameters and optional function parameters to be last. |  |
| [useDefaultSwitchClause](https://biomejs.dev/linter/rules/use-default-switch-clause) | Require the default clause in switch statements. |  |
| [useEnumInitializers](https://biomejs.dev/linter/rules/use-enum-initializers) | Require that each enum member value be explicitly initialized. |  |
| [useExplicitLengthCheck](https://biomejs.dev/linter/rules/use-explicit-length-check) | Enforce explicitly comparing the `length`, `size`, `byteLength` or `byteOffset` property of a value. |  |
| [useExponentiationOperator](https://biomejs.dev/linter/rules/use-exponentiation-operator) | Disallow the use of `Math.pow` in favor of the `**` operator. |  |
| [useExportType](https://biomejs.dev/linter/rules/use-export-type) | Promotes the use of `export type` for types. |  |
| [useExportsLast](https://biomejs.dev/linter/rules/use-exports-last) | Require that all exports are declared after all non-export statements. |  |
| [useFilenamingConvention](https://biomejs.dev/linter/rules/use-filenaming-convention) | Enforce naming conventions for JavaScript and TypeScript filenames. |  |
| [useForOf](https://biomejs.dev/linter/rules/use-for-of) | Prefer using `for...of` loops over standard `for` loops where possible. |  |
| [useFragmentSyntax](https://biomejs.dev/linter/rules/use-fragment-syntax) | This rule enforces the use of `<>...</>` over `<Fragment>...</Fragment>`. |  |
| [useGroupedAccessorPairs](https://biomejs.dev/linter/rules/use-grouped-accessor-pairs) | Enforce that getters and setters for the same property are adjacent in class and object definitions. |  |
| [useImportType](https://biomejs.dev/linter/rules/use-import-type) | Promotes the use of `import type` for types. |  |
| [useLiteralEnumMembers](https://biomejs.dev/linter/rules/use-literal-enum-members) | Require all enum members to be literal values. |  |
| [useNamingConvention](https://biomejs.dev/linter/rules/use-naming-convention) | Enforce naming conventions for everything across a codebase. |  |
| [useNodeAssertStrict](https://biomejs.dev/linter/rules/use-node-assert-strict) | Promotes the usage of `node:assert/strict` over `node:assert`. |  |
| [useNodejsImportProtocol](https://biomejs.dev/linter/rules/use-nodejs-import-protocol) | Enforces using the `node:` protocol for Node.js builtin modules. |  |
| [useNumberNamespace](https://biomejs.dev/linter/rules/use-number-namespace) | Use the `Number` properties instead of global ones. |  |
| [useNumericSeparators](https://biomejs.dev/linter/rules/use-numeric-separators) | Enforce the use of numeric separators in numeric literals. |  |
| [useObjectSpread](https://biomejs.dev/linter/rules/use-object-spread) | Prefer object spread over `Object.assign()` when constructing new objects. |  |
| [useReactFunctionComponents](https://biomejs.dev/linter/rules/use-react-function-components) | Enforce that components are defined as functions and never as classes. |  |
| [useReadonlyClassProperties](https://biomejs.dev/linter/rules/use-readonly-class-properties) | Enforce marking members as `readonly` if they are never modified outside the constructor. |  |
| [useSelfClosingElements](https://biomejs.dev/linter/rules/use-self-closing-elements) | Prevent extra closing tags for components without children. |  |
| [useShorthandAssign](https://biomejs.dev/linter/rules/use-shorthand-assign) | Require assignment operator shorthand where possible. |  |
| [useShorthandFunctionType](https://biomejs.dev/linter/rules/use-shorthand-function-type) | Enforce using function types instead of object type with call signatures. |  |
| [useSingleVarDeclarator](https://biomejs.dev/linter/rules/use-single-var-declarator) | Disallow multiple variable declarations in the same variable statement |  |
| [useSymbolDescription](https://biomejs.dev/linter/rules/use-symbol-description) | Require a description parameter for the `Symbol()`. |  |
| [useTemplate](https://biomejs.dev/linter/rules/use-template) | Prefer template literals over string concatenation. |  |
| [useThrowNewError](https://biomejs.dev/linter/rules/use-throw-new-error) | Require `new` when throwing an error. |  |
| [useThrowOnlyError](https://biomejs.dev/linter/rules/use-throw-only-error) | Disallow throwing non-`Error` values. |  |
| [useTrimStartEnd](https://biomejs.dev/linter/rules/use-trim-start-end) | Enforce the use of `String.trimStart()` and `String.trimEnd()` over `String.trimLeft()` and `String.trimRight()`. |  |
| [useUnifiedTypeSignatures](https://biomejs.dev/linter/rules/use-unified-type-signatures) | Disallow overload signatures that can be unified into a single signature. |  |

## `suspicious`

[Section titled “suspicious”](https://biomejs.dev/linter/javascript/rules/#suspicious)

| Rule name | Description | Properties |
| --- | --- | --- |
| [noAlert](https://biomejs.dev/linter/rules/no-alert) | Disallow the use of `alert`, `confirm`, and `prompt`. |  |
| [noApproximativeNumericConstant](https://biomejs.dev/linter/rules/no-approximative-numeric-constant) | Use standard constants instead of approximated literals. |  |
| [noArrayIndexKey](https://biomejs.dev/linter/rules/no-array-index-key) | Discourage the usage of Array index in keys. |  |
| [noAssignInExpressions](https://biomejs.dev/linter/rules/no-assign-in-expressions) | Disallow assignments in expressions. |  |
| [noAsyncPromiseExecutor](https://biomejs.dev/linter/rules/no-async-promise-executor) | Disallows using an async function as a Promise executor. |  |
| [noBitwiseOperators](https://biomejs.dev/linter/rules/no-bitwise-operators) | Disallow bitwise operators. |  |
| [noCatchAssign](https://biomejs.dev/linter/rules/no-catch-assign) | Disallow reassigning exceptions in catch clauses. |  |
| [noClassAssign](https://biomejs.dev/linter/rules/no-class-assign) | Disallow reassigning class members. |  |
| [noCommentText](https://biomejs.dev/linter/rules/no-comment-text) | Prevent comments from being inserted as text nodes |  |
| [noCompareNegZero](https://biomejs.dev/linter/rules/no-compare-neg-zero) | Disallow comparing against `-0` |  |
| [noConfusingLabels](https://biomejs.dev/linter/rules/no-confusing-labels) | Disallow labeled statements that are not loops. |  |
| [noConfusingVoidType](https://biomejs.dev/linter/rules/no-confusing-void-type) | Disallow `void` type outside of generic or return types. |  |
| [noConsole](https://biomejs.dev/linter/rules/no-console) | Disallow the use of `console`. |  |
| [noConstEnum](https://biomejs.dev/linter/rules/no-const-enum) | Disallow TypeScript `const enum` |  |
| [noConstantBinaryExpressions](https://biomejs.dev/linter/rules/no-constant-binary-expressions) | Disallow expressions where the operation doesn’t affect the value |  |
| [noControlCharactersInRegex](https://biomejs.dev/linter/rules/no-control-characters-in-regex) | Prevents from having control characters and some escape sequences that match control characters in regular expression literals. |  |
| [noDebugger](https://biomejs.dev/linter/rules/no-debugger) | Disallow the use of `debugger` |  |
| [noDocumentCookie](https://biomejs.dev/linter/rules/no-document-cookie) | Disallow direct assignments to `document.cookie`. |  |
| [noDocumentImportInPage](https://biomejs.dev/linter/rules/no-document-import-in-page) | Prevents importing `next/document` outside of `pages/_document.jsx` in Next.js projects. |  |
| [noDoubleEquals](https://biomejs.dev/linter/rules/no-double-equals) | Require the use of `===` and `!==`. |  |
| [noDuplicateCase](https://biomejs.dev/linter/rules/no-duplicate-case) | Disallow duplicate case labels. |  |
| [noDuplicateClassMembers](https://biomejs.dev/linter/rules/no-duplicate-class-members) | Disallow duplicate class members. |  |
| [noDuplicateElseIf](https://biomejs.dev/linter/rules/no-duplicate-else-if) | Disallow duplicate conditions in if-else-if chains |  |
| [noDuplicateJsxProps](https://biomejs.dev/linter/rules/no-duplicate-jsx-props) | Prevents JSX properties to be assigned multiple times. |  |
| [noDuplicateObjectKeys](https://biomejs.dev/linter/rules/no-duplicate-object-keys) | Disallow two keys with the same name inside objects. |  |
| [noDuplicateParameters](https://biomejs.dev/linter/rules/no-duplicate-parameters) | Disallow duplicate function parameter name. |  |
| [noDuplicateTestHooks](https://biomejs.dev/linter/rules/no-duplicate-test-hooks) | A `describe` block should not contain duplicate hooks. |  |
| [noEmptyBlockStatements](https://biomejs.dev/linter/rules/no-empty-block-statements) | Disallow empty block statements and static blocks. |  |
| [noEmptyInterface](https://biomejs.dev/linter/rules/no-empty-interface) | Disallow the declaration of empty interfaces. |  |
| [noEvolvingTypes](https://biomejs.dev/linter/rules/no-evolving-types) | Disallow variables from evolving into `any` type through reassignments. |  |
| [noExplicitAny](https://biomejs.dev/linter/rules/no-explicit-any) | Disallow the `any` type usage. |  |
| [noExportsInTest](https://biomejs.dev/linter/rules/no-exports-in-test) | Disallow using `export` or `module.exports` in files containing tests |  |
| [noExtraNonNullAssertion](https://biomejs.dev/linter/rules/no-extra-non-null-assertion) | Prevents the wrong usage of the non-null assertion operator (`!`) in TypeScript files. |  |
| [noFallthroughSwitchClause](https://biomejs.dev/linter/rules/no-fallthrough-switch-clause) | Disallow fallthrough of `switch` clauses. |  |
| [noFocusedTests](https://biomejs.dev/linter/rules/no-focused-tests) | Disallow focused tests. |  |
| [noFunctionAssign](https://biomejs.dev/linter/rules/no-function-assign) | Disallow reassigning function declarations. |  |
| [noGlobalAssign](https://biomejs.dev/linter/rules/no-global-assign) | Disallow assignments to native objects and read-only global variables. |  |
| [noGlobalIsFinite](https://biomejs.dev/linter/rules/no-global-is-finite) | Use `Number.isFinite` instead of global `isFinite`. |  |
| [noGlobalIsNan](https://biomejs.dev/linter/rules/no-global-is-nan) | Use `Number.isNaN` instead of global `isNaN`. |  |
| [noHeadImportInDocument](https://biomejs.dev/linter/rules/no-head-import-in-document) | Prevent using the `next/head` module in `pages/_document.js` on Next.js projects. |  |
| [noImplicitAnyLet](https://biomejs.dev/linter/rules/no-implicit-any-let) | Disallow use of implicit `any` type on variable declarations. |  |
| [noImportAssign](https://biomejs.dev/linter/rules/no-import-assign) | Disallow assigning to imported bindings |  |
| [noIrregularWhitespace](https://biomejs.dev/linter/rules/no-irregular-whitespace) | Disallows the use of irregular whitespace characters. |  |
| [noLabelVar](https://biomejs.dev/linter/rules/no-label-var) | Disallow labels that share a name with a variable |  |
| [noMisleadingCharacterClass](https://biomejs.dev/linter/rules/no-misleading-character-class) | Disallow characters made with multiple code points in character class syntax. |  |
| [noMisleadingInstantiator](https://biomejs.dev/linter/rules/no-misleading-instantiator) | Enforce proper usage of `new` and `constructor`. |  |
| [noMisplacedAssertion](https://biomejs.dev/linter/rules/no-misplaced-assertion) | Checks that the assertion function, for example `expect`, is placed inside an `it()` function call. |  |
| [noMisrefactoredShorthandAssign](https://biomejs.dev/linter/rules/no-misrefactored-shorthand-assign) | Disallow shorthand assign when variable appears on both sides. |  |
| [noNonNullAssertedOptionalChain](https://biomejs.dev/linter/rules/no-non-null-asserted-optional-chain) | Disallow non-null assertions after optional chaining expressions. |  |
| [noOctalEscape](https://biomejs.dev/linter/rules/no-octal-escape) | Disallow octal escape sequences in string literals |  |
| [noPrototypeBuiltins](https://biomejs.dev/linter/rules/no-prototype-builtins) | Disallow direct use of `Object.prototype` builtins. |  |
| [noReactSpecificProps](https://biomejs.dev/linter/rules/no-react-specific-props) | Prevents React-specific JSX properties from being used. |  |
| [noRedeclare](https://biomejs.dev/linter/rules/no-redeclare) | Disallow variable, function, class, and type redeclarations in the same scope. |  |
| [noRedundantUseStrict](https://biomejs.dev/linter/rules/no-redundant-use-strict) | Prevents from having redundant `"use strict"`. |  |
| [noSelfCompare](https://biomejs.dev/linter/rules/no-self-compare) | Disallow comparisons where both sides are exactly the same. |  |
| [noShadowRestrictedNames](https://biomejs.dev/linter/rules/no-shadow-restricted-names) | Disallow identifiers from shadowing restricted names. |  |
| [noSkippedTests](https://biomejs.dev/linter/rules/no-skipped-tests) | Disallow disabled tests. |  |
| [noSparseArray](https://biomejs.dev/linter/rules/no-sparse-array) | Prevents the use of sparse arrays (arrays with holes). |  |
| [noSuspiciousSemicolonInJsx](https://biomejs.dev/linter/rules/no-suspicious-semicolon-in-jsx) | It detects possible “wrong” semicolons inside JSX elements. |  |
| [noTemplateCurlyInString](https://biomejs.dev/linter/rules/no-template-curly-in-string) | Disallow template literal placeholder syntax in regular strings. |  |
| [noThenProperty](https://biomejs.dev/linter/rules/no-then-property) | Disallow `then` property. |  |
| [noTsIgnore](https://biomejs.dev/linter/rules/no-ts-ignore) | Prevents the use of the TypeScript directive `@ts-ignore`. |  |
| [noUnassignedVariables](https://biomejs.dev/linter/rules/no-unassigned-variables) | Disallow `let` or `var` variables that are read but never assigned. |  |
| [noUnsafeDeclarationMerging](https://biomejs.dev/linter/rules/no-unsafe-declaration-merging) | Disallow unsafe declaration merging between interfaces and classes. |  |
| [noUnsafeNegation](https://biomejs.dev/linter/rules/no-unsafe-negation) | Disallow using unsafe negation. |  |
| [noUselessEscapeInString](https://biomejs.dev/linter/rules/no-useless-escape-in-string) | Disallow unnecessary escapes in string literals. |  |
| [noUselessRegexBackrefs](https://biomejs.dev/linter/rules/no-useless-regex-backrefs) | Disallow useless backreferences in regular expression literals that always match an empty string. |  |
| [noVar](https://biomejs.dev/linter/rules/no-var) | Disallow the use of `var` |  |
| [noWith](https://biomejs.dev/linter/rules/no-with) | Disallow `with` statements in non-strict contexts. |  |
| [useAdjacentOverloadSignatures](https://biomejs.dev/linter/rules/use-adjacent-overload-signatures) | Disallow the use of overload signatures that are not next to each other. |  |
| [useAwait](https://biomejs.dev/linter/rules/use-await) | Ensure `async` functions utilize `await`. |  |
| [useDefaultSwitchClauseLast](https://biomejs.dev/linter/rules/use-default-switch-clause-last) | Enforce default clauses in switch statements to be last |  |
| [useErrorMessage](https://biomejs.dev/linter/rules/use-error-message) | Enforce passing a message value when creating a built-in error. |  |
| [useGetterReturn](https://biomejs.dev/linter/rules/use-getter-return) | Enforce `get` methods to always return a value. |  |
| [useGoogleFontDisplay](https://biomejs.dev/linter/rules/use-google-font-display) | Enforces the use of a recommended `display` strategy with Google Fonts. |  |
| [useGuardForIn](https://biomejs.dev/linter/rules/use-guard-for-in) | Require `for-in` loops to include an `if` statement. |  |
| [useIsArray](https://biomejs.dev/linter/rules/use-is-array) | Use `Array.isArray()` instead of `instanceof Array`. |  |
| [useIterableCallbackReturn](https://biomejs.dev/linter/rules/use-iterable-callback-return) | Enforce consistent return values in iterable callbacks. |  |
| [useNamespaceKeyword](https://biomejs.dev/linter/rules/use-namespace-keyword) | Require using the `namespace` keyword over the `module` keyword to declare TypeScript namespaces. |  |
| [useNumberToFixedDigitsArgument](https://biomejs.dev/linter/rules/use-number-to-fixed-digits-argument) | Enforce using the digits argument with `Number#toFixed()`. |  |
| [useStaticResponseMethods](https://biomejs.dev/linter/rules/use-static-response-methods) | Use static `Response` methods instead of `new Response()` constructor when possible. |  |
| [useStrictMode](https://biomejs.dev/linter/rules/use-strict-mode) | Enforce the use of the directive `"use strict"` in script files. |  |

## Recommended rules

[Section titled “Recommended rules”](https://biomejs.dev/linter/javascript/rules/#recommended-rules)

- [noAccessKey](https://biomejs.dev/linter/rules/no-access-key) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noAriaHiddenOnFocusable](https://biomejs.dev/linter/rules/no-aria-hidden-on-focusable) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noAriaUnsupportedElements](https://biomejs.dev/linter/rules/no-aria-unsupported-elements) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noAutofocus](https://biomejs.dev/linter/rules/no-autofocus) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDistractingElements](https://biomejs.dev/linter/rules/no-distracting-elements) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noHeaderScope](https://biomejs.dev/linter/rules/no-header-scope) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInteractiveElementToNoninteractiveRole](https://biomejs.dev/linter/rules/no-interactive-element-to-noninteractive-role) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noLabelWithoutControl](https://biomejs.dev/linter/rules/no-label-without-control) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noNoninteractiveElementToInteractiveRole](https://biomejs.dev/linter/rules/no-noninteractive-element-to-interactive-role) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noNoninteractiveTabindex](https://biomejs.dev/linter/rules/no-noninteractive-tabindex) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noPositiveTabindex](https://biomejs.dev/linter/rules/no-positive-tabindex) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noRedundantAlt](https://biomejs.dev/linter/rules/no-redundant-alt) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noRedundantRoles](https://biomejs.dev/linter/rules/no-redundant-roles) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noStaticElementInteractions](https://biomejs.dev/linter/rules/no-static-element-interactions) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noSvgWithoutTitle](https://biomejs.dev/linter/rules/no-svg-without-title) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useAltText](https://biomejs.dev/linter/rules/use-alt-text) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useAnchorContent](https://biomejs.dev/linter/rules/use-anchor-content) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useAriaActivedescendantWithTabindex](https://biomejs.dev/linter/rules/use-aria-activedescendant-with-tabindex) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useAriaPropsForRole](https://biomejs.dev/linter/rules/use-aria-props-for-role) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useAriaPropsSupportedByRole](https://biomejs.dev/linter/rules/use-aria-props-supported-by-role) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useButtonType](https://biomejs.dev/linter/rules/use-button-type) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useFocusableInteractive](https://biomejs.dev/linter/rules/use-focusable-interactive) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useHeadingContent](https://biomejs.dev/linter/rules/use-heading-content) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useHtmlLang](https://biomejs.dev/linter/rules/use-html-lang) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useIframeTitle](https://biomejs.dev/linter/rules/use-iframe-title) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useKeyWithClickEvents](https://biomejs.dev/linter/rules/use-key-with-click-events) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useKeyWithMouseEvents](https://biomejs.dev/linter/rules/use-key-with-mouse-events) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useMediaCaption](https://biomejs.dev/linter/rules/use-media-caption) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useSemanticElements](https://biomejs.dev/linter/rules/use-semantic-elements) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidAnchor](https://biomejs.dev/linter/rules/use-valid-anchor) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidAriaProps](https://biomejs.dev/linter/rules/use-valid-aria-props) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidAriaRole](https://biomejs.dev/linter/rules/use-valid-aria-role) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidAriaValues](https://biomejs.dev/linter/rules/use-valid-aria-values) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidAutocomplete](https://biomejs.dev/linter/rules/use-valid-autocomplete) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidLang](https://biomejs.dev/linter/rules/use-valid-lang) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noAdjacentSpacesInRegex](https://biomejs.dev/linter/rules/no-adjacent-spaces-in-regex) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noArguments](https://biomejs.dev/linter/rules/no-arguments) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noBannedTypes](https://biomejs.dev/linter/rules/no-banned-types) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noCommaOperator](https://biomejs.dev/linter/rules/no-comma-operator) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noEmptyTypeParameters](https://biomejs.dev/linter/rules/no-empty-type-parameters) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noExtraBooleanCast](https://biomejs.dev/linter/rules/no-extra-boolean-cast) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noFlatMapIdentity](https://biomejs.dev/linter/rules/no-flat-map-identity) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noStaticOnlyClass](https://biomejs.dev/linter/rules/no-static-only-class) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noThisInStatic](https://biomejs.dev/linter/rules/no-this-in-static) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUselessCatch](https://biomejs.dev/linter/rules/no-useless-catch) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessConstructor](https://biomejs.dev/linter/rules/no-useless-constructor) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessContinue](https://biomejs.dev/linter/rules/no-useless-continue) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessEmptyExport](https://biomejs.dev/linter/rules/no-useless-empty-export) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessEscapeInRegex](https://biomejs.dev/linter/rules/no-useless-escape-in-regex) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessFragments](https://biomejs.dev/linter/rules/no-useless-fragments) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessLabel](https://biomejs.dev/linter/rules/no-useless-label) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessLoneBlockStatements](https://biomejs.dev/linter/rules/no-useless-lone-block-statements) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessRename](https://biomejs.dev/linter/rules/no-useless-rename) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessStringRaw](https://biomejs.dev/linter/rules/no-useless-string-raw) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessSwitchCase](https://biomejs.dev/linter/rules/no-useless-switch-case) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessTernary](https://biomejs.dev/linter/rules/no-useless-ternary) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessThisAlias](https://biomejs.dev/linter/rules/no-useless-this-alias) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessTypeConstraint](https://biomejs.dev/linter/rules/no-useless-type-constraint) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noUselessUndefinedInitialization](https://biomejs.dev/linter/rules/no-useless-undefined-initialization) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useArrowFunction](https://biomejs.dev/linter/rules/use-arrow-function) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useDateNow](https://biomejs.dev/linter/rules/use-date-now) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useFlatMap](https://biomejs.dev/linter/rules/use-flat-map) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useIndexOf](https://biomejs.dev/linter/rules/use-index-of) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useLiteralKeys](https://biomejs.dev/linter/rules/use-literal-keys) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useNumericLiterals](https://biomejs.dev/linter/rules/use-numeric-literals) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useOptionalChain](https://biomejs.dev/linter/rules/use-optional-chain) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useRegexLiterals](https://biomejs.dev/linter/rules/use-regex-literals) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useSimpleNumberKeys](https://biomejs.dev/linter/rules/use-simple-number-keys) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noConstAssign](https://biomejs.dev/linter/rules/no-const-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noConstantCondition](https://biomejs.dev/linter/rules/no-constant-condition) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noConstantMathMinMaxClamp](https://biomejs.dev/linter/rules/no-constant-math-min-max-clamp) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noConstructorReturn](https://biomejs.dev/linter/rules/no-constructor-return) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noEmptyCharacterClassInRegex](https://biomejs.dev/linter/rules/no-empty-character-class-in-regex) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noEmptyPattern](https://biomejs.dev/linter/rules/no-empty-pattern) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noGlobalObjectCalls](https://biomejs.dev/linter/rules/no-global-object-calls) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInnerDeclarations](https://biomejs.dev/linter/rules/no-inner-declarations) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInvalidBuiltinInstantiation](https://biomejs.dev/linter/rules/no-invalid-builtin-instantiation) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInvalidConstructorSuper](https://biomejs.dev/linter/rules/no-invalid-constructor-super) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noInvalidUseBeforeDeclaration](https://biomejs.dev/linter/rules/no-invalid-use-before-declaration) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noNonoctalDecimalEscape](https://biomejs.dev/linter/rules/no-nonoctal-decimal-escape) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noPrecisionLoss](https://biomejs.dev/linter/rules/no-precision-loss) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noSelfAssign](https://biomejs.dev/linter/rules/no-self-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noSetterReturn](https://biomejs.dev/linter/rules/no-setter-return) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noStringCaseMismatch](https://biomejs.dev/linter/rules/no-string-case-mismatch) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noSwitchDeclarations](https://biomejs.dev/linter/rules/no-switch-declarations) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnreachable](https://biomejs.dev/linter/rules/no-unreachable) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnreachableSuper](https://biomejs.dev/linter/rules/no-unreachable-super) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnsafeFinally](https://biomejs.dev/linter/rules/no-unsafe-finally) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnsafeOptionalChaining](https://biomejs.dev/linter/rules/no-unsafe-optional-chaining) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnusedFunctionParameters](https://biomejs.dev/linter/rules/no-unused-function-parameters) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUnusedImports](https://biomejs.dev/linter/rules/no-unused-imports) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUnusedLabels](https://biomejs.dev/linter/rules/no-unused-labels) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUnusedPrivateClassMembers](https://biomejs.dev/linter/rules/no-unused-private-class-members) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUnusedVariables](https://biomejs.dev/linter/rules/no-unused-variables) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noVoidElementsWithChildren](https://biomejs.dev/linter/rules/no-void-elements-with-children) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noVoidTypeReturn](https://biomejs.dev/linter/rules/no-void-type-return) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useIsNan](https://biomejs.dev/linter/rules/use-is-nan) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useParseIntRadix](https://biomejs.dev/linter/rules/use-parse-int-radix) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useValidForDirection](https://biomejs.dev/linter/rules/use-valid-for-direction) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useValidTypeof](https://biomejs.dev/linter/rules/use-valid-typeof) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useYield](https://biomejs.dev/linter/rules/use-yield) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noAccumulatingSpread](https://biomejs.dev/linter/rules/no-accumulating-spread) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noDynamicNamespaceImportAccess](https://biomejs.dev/linter/rules/no-dynamic-namespace-import-access) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noBlankTarget](https://biomejs.dev/linter/rules/no-blank-target) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noGlobalEval](https://biomejs.dev/linter/rules/no-global-eval) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noNonNullAssertion](https://biomejs.dev/linter/rules/no-non-null-assertion) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useArrayLiterals](https://biomejs.dev/linter/rules/use-array-literals) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useConst](https://biomejs.dev/linter/rules/use-const) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useExponentiationOperator](https://biomejs.dev/linter/rules/use-exponentiation-operator) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useExportType](https://biomejs.dev/linter/rules/use-export-type) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useImportType](https://biomejs.dev/linter/rules/use-import-type) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useLiteralEnumMembers](https://biomejs.dev/linter/rules/use-literal-enum-members) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useNodejsImportProtocol](https://biomejs.dev/linter/rules/use-nodejs-import-protocol) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useShorthandFunctionType](https://biomejs.dev/linter/rules/use-shorthand-function-type) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [useTemplate](https://biomejs.dev/linter/rules/use-template) (Severity: [information](https://biomejs.dev/reference/diagnostics#information))
- [noApproximativeNumericConstant](https://biomejs.dev/linter/rules/no-approximative-numeric-constant) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noAssignInExpressions](https://biomejs.dev/linter/rules/no-assign-in-expressions) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noAsyncPromiseExecutor](https://biomejs.dev/linter/rules/no-async-promise-executor) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noCatchAssign](https://biomejs.dev/linter/rules/no-catch-assign) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noClassAssign](https://biomejs.dev/linter/rules/no-class-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noCommentText](https://biomejs.dev/linter/rules/no-comment-text) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noCompareNegZero](https://biomejs.dev/linter/rules/no-compare-neg-zero) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noConfusingLabels](https://biomejs.dev/linter/rules/no-confusing-labels) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noConfusingVoidType](https://biomejs.dev/linter/rules/no-confusing-void-type) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noConstEnum](https://biomejs.dev/linter/rules/no-const-enum) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noControlCharactersInRegex](https://biomejs.dev/linter/rules/no-control-characters-in-regex) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDebugger](https://biomejs.dev/linter/rules/no-debugger) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDocumentCookie](https://biomejs.dev/linter/rules/no-document-cookie) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noDoubleEquals](https://biomejs.dev/linter/rules/no-double-equals) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateCase](https://biomejs.dev/linter/rules/no-duplicate-case) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateClassMembers](https://biomejs.dev/linter/rules/no-duplicate-class-members) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateElseIf](https://biomejs.dev/linter/rules/no-duplicate-else-if) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateJsxProps](https://biomejs.dev/linter/rules/no-duplicate-jsx-props) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateObjectKeys](https://biomejs.dev/linter/rules/no-duplicate-object-keys) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noDuplicateParameters](https://biomejs.dev/linter/rules/no-duplicate-parameters) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noEmptyInterface](https://biomejs.dev/linter/rules/no-empty-interface) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noExplicitAny](https://biomejs.dev/linter/rules/no-explicit-any) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noExtraNonNullAssertion](https://biomejs.dev/linter/rules/no-extra-non-null-assertion) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noFallthroughSwitchClause](https://biomejs.dev/linter/rules/no-fallthrough-switch-clause) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noFunctionAssign](https://biomejs.dev/linter/rules/no-function-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noGlobalAssign](https://biomejs.dev/linter/rules/no-global-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noGlobalIsFinite](https://biomejs.dev/linter/rules/no-global-is-finite) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noGlobalIsNan](https://biomejs.dev/linter/rules/no-global-is-nan) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noImplicitAnyLet](https://biomejs.dev/linter/rules/no-implicit-any-let) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noImportAssign](https://biomejs.dev/linter/rules/no-import-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noIrregularWhitespace](https://biomejs.dev/linter/rules/no-irregular-whitespace) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noLabelVar](https://biomejs.dev/linter/rules/no-label-var) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noMisleadingCharacterClass](https://biomejs.dev/linter/rules/no-misleading-character-class) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noMisleadingInstantiator](https://biomejs.dev/linter/rules/no-misleading-instantiator) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noMisrefactoredShorthandAssign](https://biomejs.dev/linter/rules/no-misrefactored-shorthand-assign) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noNonNullAssertedOptionalChain](https://biomejs.dev/linter/rules/no-non-null-asserted-optional-chain) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noOctalEscape](https://biomejs.dev/linter/rules/no-octal-escape) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noPrototypeBuiltins](https://biomejs.dev/linter/rules/no-prototype-builtins) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noRedeclare](https://biomejs.dev/linter/rules/no-redeclare) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noRedundantUseStrict](https://biomejs.dev/linter/rules/no-redundant-use-strict) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noSelfCompare](https://biomejs.dev/linter/rules/no-self-compare) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noShadowRestrictedNames](https://biomejs.dev/linter/rules/no-shadow-restricted-names) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noSparseArray](https://biomejs.dev/linter/rules/no-sparse-array) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noSuspiciousSemicolonInJsx](https://biomejs.dev/linter/rules/no-suspicious-semicolon-in-jsx) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noTemplateCurlyInString](https://biomejs.dev/linter/rules/no-template-curly-in-string) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noThenProperty](https://biomejs.dev/linter/rules/no-then-property) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noTsIgnore](https://biomejs.dev/linter/rules/no-ts-ignore) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUnsafeDeclarationMerging](https://biomejs.dev/linter/rules/no-unsafe-declaration-merging) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUnsafeNegation](https://biomejs.dev/linter/rules/no-unsafe-negation) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [noUselessEscapeInString](https://biomejs.dev/linter/rules/no-useless-escape-in-string) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noUselessRegexBackrefs](https://biomejs.dev/linter/rules/no-useless-regex-backrefs) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [noWith](https://biomejs.dev/linter/rules/no-with) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useAdjacentOverloadSignatures](https://biomejs.dev/linter/rules/use-adjacent-overload-signatures) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useDefaultSwitchClauseLast](https://biomejs.dev/linter/rules/use-default-switch-clause-last) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useGetterReturn](https://biomejs.dev/linter/rules/use-getter-return) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useGoogleFontDisplay](https://biomejs.dev/linter/rules/use-google-font-display) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useIsArray](https://biomejs.dev/linter/rules/use-is-array) (Severity: [warning](https://biomejs.dev/reference/diagnostics#warning))
- [useIterableCallbackReturn](https://biomejs.dev/linter/rules/use-iterable-callback-return) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))
- [useNamespaceKeyword](https://biomejs.dev/linter/rules/use-namespace-keyword) (Severity: [error](https://biomejs.dev/reference/diagnostics#error))

Missing a rule? Help us by [contributing](https://github.com/biomejs/biome/blob/main/CONTRIBUTING.md) to the [analyzer](https://github.com/biomejs/biome/blob/main/crates/biome_analyze/CONTRIBUTING.md) or create a rule suggestion [here](https://github.com/biomejs/biome/discussions/categories/rule-suggestion).

Copyright (c) 2023-present Biome Developers and Contributors.
