Title: Slidev

URL Source: http://sli.dev/features/remote-access

Markdown Content:
Remote Access [​](http://sli.dev/features/remote-access#remote-access)
----------------------------------------------------------------------

You can run your presentation with remote access by using the `--remote` flag:

pnpm npm yarn bun deno

bash

```
pnpm dev --remote
# i.e. slidev --remote
```

bash

```
npm run dev -- --remote
# i.e. slidev --remote
```

bash

```
yarn dev --remote
# i.e. slidev --remote
```

bash

```
bun dev --remote
# i.e. slidev --remote
```

bash

```
deno run dev --remote
# i.e. slidev --remote
```

Password Protection [​](http://sli.dev/features/remote-access#password-protection)
----------------------------------------------------------------------------------

If you want to share your slides but don't want other people to access the presenter mode, you can pass a password to the option, i.e. `--remote=your_password`. Then the password is required when accessing the presenter mode.

Remote Tunnel [​](http://sli.dev/features/remote-access#remote-tunnel)
----------------------------------------------------------------------

You can open a [Cloudflare Quick Tunnels](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/do-more-with-tunnels/trycloudflare/) to expose your local server to the internet. This way, you can share your slides with others without setting up a server.

pnpm npm yarn bun deno

bash

```
pnpm dev --remote --tunnel
# i.e. slidev --remote --tunnel
```

bash

```
npm run dev -- --remote --tunnel
# i.e. slidev --remote --tunnel
```

bash

```
yarn dev --remote --tunnel
# i.e. slidev --remote --tunnel
```

bash

```
bun dev --remote --tunnel
# i.e. slidev --remote --tunnel
```

bash

```
deno run dev --remote --tunnel
# i.e. slidev --remote --tunnel
```

