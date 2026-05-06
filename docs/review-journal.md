# Review Journal

The review surface for `ember-move-uci-mark` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 217, lane `ship`
- `stress`: `move ordering`, score 207, lane `ship`
- `edge`: `search width`, score 187, lane `ship`
- `recovery`: `endgame risk`, score 205, lane `ship`
- `stale`: `position pressure`, score 139, lane `watch`

## Note

This file is intentionally plain so the fixture remains the source of truth.
