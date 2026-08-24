#!/usr/bin/env node
/**
 * LT Matters build script
 * -------------------------------------------------------------
 * Commands:
 *   node scripts/build.js build          -> regenerates index.html from data/*.json
 *   node scripts/build.js new <slug>     -> scaffolds a new article HTML file
 *                                            and adds a stub entry to articles.json
 *
 * Run these from the project root (the folder that contains data/, templates/, index.html)
 * -------------------------------------------------------------
 */

const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..');
const ARTICLES_PATH = path.join(ROOT, 'data', 'articles.json');
const LAYOUT_PATH = path.join(ROOT, 'data', 'layout.json');
const INDEX_TEMPLATE_PATH = path.join(ROOT, 'templates', 'index.template.html');
const ARTICLE_TEMPLATE_PATH = path.join(ROOT, 'templates', 'article.template.html');
const INDEX_OUT_PATH = path.join(ROOT, 'index.html');

function readJSON(p) {
  return JSON.parse(fs.readFileSync(p, 'utf8'));
}

function writeJSON(p, obj) {
  fs.writeFileSync(p, JSON.stringify(obj, null, 2) + '\n', 'utf8');
}

function href(slug) {
  return slug === 'article' ? 'article.html' : `${slug}.html`;
}

function esc(str) {
  return (str || '').toString().replace(/&(?!amp;|middot;|nbsp;|#\d+;)/g, '&amp;');
}

// ---------- Section renderers ----------

function renderHero(articles, layout) {
  const lead = articles[layout.heroLead];
  const leadHtml = `      <article class="lead-story">
        <div class="media">
          <img src="${esc(lead.image)}" alt="${esc(lead.title)}" class="media-img">
          <span class="category-pill">${esc(lead.category)}</span>
        </div>
        <div class="body">
          <h2><a href="${href(layout.heroLead)}">${esc(lead.title)}</a></h2>
          <p class="dek">${esc(lead.dek)}</p>
          <div class="byline">${esc(lead.byline)} &middot; ${esc(lead.readTime)}</div>
        </div>
      </article>

      <div class="hero-side">`;

  const sideCards = layout.heroSide.map(slug => {
    const a = articles[slug];
    const img = a.image
      ? `\n          <img src="${esc(a.image)}" alt="${esc(a.title)}" class="media-img">`
      : '';
    return `        <div class="side-card">${img}
          <span class="category-pill">${esc(a.category)}</span>
          <h3><a href="${href(slug)}">${esc(a.title)}</a></h3>
          <div class="meta">${esc(a.category)} &middot; ${esc(a.readTime)}</div>
        </div>`;
  }).join('\n');

  return `${leadHtml}\n${sideCards}\n      </div>`;
}

function renderFeatured(articles, layout) {
  return layout.featured.map(slug => {
    const a = articles[slug];
    const thumbClass = a.thumbClass ? `thumb ${a.thumbClass}` : 'thumb';
    return `      <article class="story-card">
        <div class="${thumbClass}"><img src="${esc(a.image)}" alt="" class="thumb-img"><span class="category-pill">${esc(a.category)}</span></div>
        <div class="body">
          <h3><a href="${href(slug)}">${esc(a.title)}</a></h3>
          <p>${esc(a.dek)}</p>
          <div class="meta">${esc(a.category)} &middot; ${esc(a.date)}</div>
        </div>
      </article>`;
  }).join('\n\n');
}

function renderLatest(articles, layout) {
  return layout.latest.map(slug => {
    const a = articles[slug];
    const thumbClass = a.thumbClass ? `thumb ${a.thumbClass}` : 'thumb';
    return `      <div class="list-item">
        <div class="${thumbClass}"><img src="${esc(a.image)}" alt="" class="thumb-img"></div>
        <div class="text">
          <span class="category-pill">${esc(a.category)}</span>
          <h4><a href="${href(slug)}">${esc(a.title)}</a></h4>
          <div class="meta">${esc(a.date)} &middot; ${esc(a.readTime)}</div>
        </div>
      </div>`;
  }).join('\n');
}

function renderMostRead(articles, layout) {
  return layout.mostRead.map((slug, i) => {
    const a = articles[slug];
    const num = String(i + 1).padStart(2, '0');
    return `        <div class="rank-item"><span class="num">${num}</span><a href="${href(slug)}">${esc(a.title)}</a></div>`;
  }).join('\n');
}

function renderWorkshops(articles, layout) {
  return layout.workshops.map(slug => {
    const a = articles[slug];
    return `      <div class="mini-card">
        <span class="category-pill">${esc(a.workshopDate)}</span>
        <h4><a href="${href(slug)}">${esc(a.title)}</a></h4>
      </div>`;
  }).join('\n');
}

// ---------- Build command ----------

function build() {
  const articles = readJSON(ARTICLES_PATH);
  const layout = readJSON(LAYOUT_PATH);
  let tpl = fs.readFileSync(INDEX_TEMPLATE_PATH, 'utf8');

  const sections = {
    HERO: renderHero(articles, layout),
    FEATURED: renderFeatured(articles, layout),
    LATEST: renderLatest(articles, layout),
    MOSTREAD: renderMostRead(articles, layout),
    WORKSHOPS: renderWorkshops(articles, layout),
  };

  for (const [name, html] of Object.entries(sections)) {
    const re = new RegExp(`<!-- BUILD:${name} -->[\\s\\S]*?<!-- /BUILD:${name} -->`);
    if (!re.test(tpl)) {
      throw new Error(`Marker for ${name} not found in template`);
    }
    tpl = tpl.replace(re, `<!-- BUILD:${name} -->\n${html}\n<!-- /BUILD:${name} -->`);
  }

  tpl = tpl.replace('{{FEATURED_COUNT}}', layout.featured.length);

  fs.writeFileSync(INDEX_OUT_PATH, tpl, 'utf8');
  console.log(`Built ${INDEX_OUT_PATH} from ${layout.featured.length} featured, ${layout.latest.length} latest, ${layout.workshops.length} workshop entries.`);
}

// ---------- New article command ----------

function slugify(str) {
  return str
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)/g, '');
}

function scaffold(rawSlugOrTitle) {
  const articles = readJSON(ARTICLES_PATH);
  const slug = slugify(rawSlugOrTitle);

  if (articles[slug]) {
    console.error(`Slug "${slug}" already exists in articles.json — pick a different title/slug.`);
    process.exit(1);
  }

  const title = rawSlugOrTitle;
  const stub = {
    title,
    dek: '',
    category: 'Teaching Innovation',
    date: new Date().toISOString().slice(0, 10),
    readTime: '4 min read',
    image: '',
    thumbClass: '',
    byline: 'By the Learning & Teaching Office',
  };

  articles[slug] = stub;
  writeJSON(ARTICLES_PATH, articles);

  let articleTpl = fs.readFileSync(ARTICLE_TEMPLATE_PATH, 'utf8');
  articleTpl = articleTpl
    .replace(/{{TITLE}}/g, title)
    .replace(/{{DEK}}/g, stub.dek)
    .replace(/{{CATEGORY}}/g, stub.category)
    .replace(/{{DATE}}/g, stub.date)
    .replace(/{{BYLINE}}/g, stub.byline)
    .replace(/{{IMAGE}}/g, stub.image);

  const outPath = path.join(ROOT, `${slug}.html`);
  fs.writeFileSync(outPath, articleTpl, 'utf8');

  console.log(`Created ${outPath}`);
  console.log(`Added stub metadata for "${slug}" to data/articles.json — fill in the real dek/category/date/image there.`);
  console.log(`Then add "${slug}" to the section(s) you want in data/layout.json (featured / latest / heroSide / mostRead / workshops), and run: node scripts/build.js build`);
}

// ---------- CLI ----------

const [, , cmd, arg] = process.argv;

if (cmd === 'build') {
  build();
} else if (cmd === 'new') {
  if (!arg) {
    console.error('Usage: node scripts/build.js new "Article Title Or Slug"');
    process.exit(1);
  }
  scaffold(arg);
} else {
  console.log('Usage:');
  console.log('  node scripts/build.js build          Regenerate index.html from data/*.json');
  console.log('  node scripts/build.js new "<title>"  Scaffold a new article + stub metadata');
}

