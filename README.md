# Maxi Nostr Discovery Service

Automated discovery and engagement pipeline for Maxi's Nostr presence.

## How It Works

1. **Manual Seed** (`seed-opportunities.txt`): Add interesting note IDs when you find them
2. **Auto-Process** (GitHub Actions): Runs every 30 min, converts seeds to JSON
3. **Auto-Engage** (Maxi): Polls `opportunities.json`, generates responses, posts autonomously

## Adding Opportunities

Edit `seed-opportunities.txt` and add note IDs:

```
note1abc123...
note1def456...
```

GitHub Actions will automatically process them into `opportunities.json`.

## Status

- **Repo**: https://github.com/BTCBoyd/maxi-nostr-discovery
- **Opportunities URL**: https://raw.githubusercontent.com/BTCBoyd/maxi-nostr-discovery/master/opportunities.json
- **Update Frequency**: Every 30 minutes

## Workflow

```
Boyd finds post → Adds note ID to seed file → GitHub Actions processes → Maxi engages autonomously
```

No approval needed for individual responses. Maxi evaluates and engages based on criteria.
