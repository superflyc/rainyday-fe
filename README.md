# Rainy Day

Rainy Day is a React-based application named for the rainy day on which it was built.

This repository is an [Nx](https://nx.dev) monorepo. Nx provides the workspace structure,
project graph, task orchestration, caching, and integrations used for testing and builds.

## Apps

- `apps/web` - Next.js web application
- `apps/mobile` - Expo / React Native mobile application
- `packages/core` - Shared application logic
- `apps/web-e2e` - Playwright end-to-end tests for the web app

## Development

The recommended environment is the repository's devcontainer. It includes Node.js 22,
pnpm, TypeScript, Watchman for Expo development, and Playwright browser dependencies.
After creating the container, dependencies and Playwright browsers are installed by the
post-create script.

To install dependencies manually:

```bash
pnpm install
```

### Web

```bash
pnpm nx dev web
pnpm nx build web
```

The development server runs at `http://localhost:3000` by default.

### Mobile

```bash
pnpm nx start mobile
pnpm nx build mobile
```

Expo provides the interactive options for opening the app on a device, emulator, or web.
For platform-specific native development, use `pnpm nx run mobile:run-ios` or
`pnpm nx run mobile:run-android`.

## Testing and quality

Run Nx targets with the project name:

```bash
pnpm nx test core
pnpm nx test mobile
pnpm nx lint web
pnpm nx e2e web-e2e
```

## Related repositories

- [rainyday-be](https://github.com/superflyc/rainyday-be) - FastAPI backend for Rainy Day
- [dotfiles](https://github.com/superflyc/dotfiles) - Convenience tooling and development environment configuration
