# CashPilot

CashPilot is an offline-first mobile/web management platform for Mobile Money agents and multi-branch owners.

## Stack
- React + TypeScript + Vite (responsive web/PWA)
- Cloudflare Workers API
- Cloudflare D1 SQL database
- Local IndexedDB queue for offline transaction capture

## Transaction categories
- Deposit
- Withdrawal
- Transfer received
- Transfer sent

Every record stores its branch and employee. Internal branch transfers are designed to be linked on both sides.

## Development
```bash
npm install
npm run dev
```

## Cloudflare
The D1 database `cashpilot-db` has been created in the connected Cloudflare account. Apply migrations with:
```bash
npx wrangler d1 migrations apply cashpilot-db --remote
npm run deploy
```

This project is deployed only through Cloudflare. No Vercel or Neon.
