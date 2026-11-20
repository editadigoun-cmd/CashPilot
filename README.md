# CashPilot

Offline-first mobile/web management for Mobile Money agents and multi-branch owners.

## Current foundation
- Responsive owner dashboard and transaction capture interface.
- Deposit, withdrawal, transfer received, and transfer sent categories.
- Local IndexedDB persistence; queued transactions are retained when offline.
- PWA manifest and service-worker shell caching.
- Signup/login API, sessions, multi-business data model, branch membership.
- Cloudflare Worker API and Cloudflare D1 SQL database.
- Branch-level reports, employee invitations, daily closure capture and cash/electronic variance tracking.\n- Ledger-based account movements for cash and each electronic operator account.\n- Offline queue for transactions and daily closures with idempotent Cloudflare sync.

## Transaction accounting model
- Customer deposit: cash increases, electronic balance decreases.
- Customer withdrawal: electronic balance increases, cash decreases.
- Transfer received: selected account increases.
- Transfer sent: selected account decreases.
- Commissions are recorded separately from transaction principal.

## Cloudflare resources
D1 database: `cashpilot-db` (database ID configured in `wrangler.jsonc`).

Apply migrations:
```bash
npx wrangler d1 migrations apply cashpilot-db --remote
```
The schema is already created in the connected production D1 database, and migration records have been initialized.

## Local development
```bash
npm install
npm run dev
```

## Cloudflare deployment
```bash
npm run deploy
```
The repository is configured for Cloudflare Workers + Static Assets. Connect the GitHub repository to Cloudflare Workers Builds or deploy using Wrangler authenticated to Cloudflare. No Vercel or Neon is used.

## Status
Early foundation: responsive UI, local transaction capture, PWA shell, and API scaffolding are committed. Employee invitations, ledger-based balance calculations, transaction validation, complete offline sync testing, and production deployment remain in the next milestones.
