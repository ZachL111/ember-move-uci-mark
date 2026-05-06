# ember-move-uci-mark

`ember-move-uci-mark` keeps a focused Elixir implementation around chess and game engines. The project goal is to build an Elixir toolkit that studies uci behavior through log and snapshot fixtures, with replay consistency checks and local-only command execution.

## Purpose

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Ember Move UCI Mark Review Notes

`baseline` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ember-move-uci-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir addition stays small enough to inspect in one sitting.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
