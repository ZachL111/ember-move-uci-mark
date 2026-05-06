# Ember Move UCI Mark Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 217 | ship |
| stress | move ordering | 207 | ship |
| edge | search width | 187 | ship |
| recovery | endgame risk | 205 | ship |
| stale | position pressure | 139 | watch |

Start with `baseline` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
