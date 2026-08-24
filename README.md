# LT Matters — build system

Stops you from having to hand-edit `index.html` every time a new story goes in.
Your existing article HTML files, `style.css`, and the overall design are untouched —
this only automates the repetitive part (keeping the homepage cards in sync).

## How it works

- `data/articles.json` — every article's facts in one place: title, category, date,
  read time, image, dek/excerpt.
- `data/layout.json` — which slugs appear in which section of `index.html`
  (hero lead, hero side cards, featured grid, latest updates, most read, workshops)
  and in what order.
- `templates/index.template.html` — your homepage markup, with
  `<!-- BUILD:SECTION -->...<!-- /BUILD:SECTION -->` markers around each dynamic block.
  Everything outside the markers (nav, calendar widget, footer) is untouched.
- `templates/article.template.html` — the skeleton used when scaffolding a new article page.
- `scripts/build.js` — reads the two JSON files, fills in the template, writes `index.html`.

## Requirements

Node.js (any recent version — no npm packages needed, it's plain `fs`).

## Adding a new story — the actual workflow going forward

**1. Scaffold it:**

```
node scripts/build.js new "Your New Article Title"
```

This creates `your-new-article-title.html` from the article template, and adds a stub
entry for it to `data/articles.json`.

**2. Fill in the real details** in `data/articles.json` for that slug — category, date,
read time, image path, dek. Then write the actual body copy in the generated
`your-new-article-title.html` (replace the `TODO` paragraphs).

**3. Decide where it shows up on the homepage.** Open `data/layout.json` and add the
slug to whichever section(s) you want — `featured`, `latest`, `heroSide`, `mostRead`,
or `workshops` (workshops also need a `workshopDate` field in articles.json instead
of a regular date). Order in the array = order on the page.

**4. Rebuild:**

```
node scripts/build.js build
```

`index.html` is regenerated. Nothing else needs to be touched by hand.

## Notes

- To retire a story from the homepage without deleting it, just remove its slug from
  `data/layout.json` — the article page and its metadata stay intact for later.
- `thumbClass` (`"navy"`, `"gold-tint"`, or `""`) controls the tinted background on
  story-card/list-item thumbnails, matching your existing design.
- Ampersands in your data (e.g. "Awards & Recognition") are auto-escaped to `&amp;`
  in the output, so you can type them normally in the JSON.

