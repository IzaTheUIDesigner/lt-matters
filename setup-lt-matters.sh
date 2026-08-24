#!/usr/bin/env bash
set -e

echo "Setting up LT Matters build system..."

mkdir -p data templates scripts

# ---------- data/articles.json ----------
cat > data/articles.json << 'EOF'
{
  "article": {
    "title": "Deputy Vice-Chancellors - Learning and Teaching from Across South Africa Gather to Chart the Future of Learning and Teaching in Higher Education",
    "dek": "A growing number of lecturers are redesigning contact time around active problem-solving, moving lecture content online and freeing up class time for discussion and application.",
    "category": "Learning and Teaching",
    "date": "22 Aug 2026",
    "readTime": "5 min read",
    "image": "images/dvc forum.jpg",
    "byline": "By the Learning & Teaching Office"
  },
  "new-micro-credential-track-launches-for-first-time-lecturers": {
    "title": "New Micro-Credential Track Launches for First-Time Lecturers",
    "dek": "",
    "category": "Staff Development",
    "date": "22 Aug 2026",
    "readTime": "3 min read",
    "image": "images/secondatcle.jpg",
    "byline": "By the Learning & Teaching Office"
  },
  "what-we-learned-from-a-semester-of-ai-assisted-feedback": {
    "title": "What We Learned From a Semester of AI-Assisted Feedback",
    "dek": "",
    "category": "Digital Learning",
    "date": "21 Aug 2026",
    "readTime": "4 min read",
    "image": "",
    "byline": "By the Learning & Teaching Office"
  },
  "early-alert-system-flags-at-risk-students-two-weeks-sooner": {
    "title": "Early Alert System Flags At-Risk Students Two Weeks Sooner",
    "dek": "",
    "category": "Student Success",
    "date": "20 Aug 2026",
    "readTime": "3 min read",
    "image": "",
    "byline": "By the Learning & Teaching Office"
  },
  "learning-and-teaching-symposium-draws-record-attendance": {
    "title": "Learning and Teaching Symposium Draws Record Attendance",
    "dek": "Over 300 academic staff gathered for the annual symposium, with sessions on assessment redesign, large-class facilitation and inclusive pedagogy.",
    "category": "Events",
    "date": "21 Aug 2026",
    "readTime": "4 min read",
    "image": "images/ltweek.JPG",
    "thumbClass": "navy",
    "byline": "By the Learning & Teaching Office"
  },
  "rethinking-assessment-a-guide-to-authentic-tasks": {
    "title": "Rethinking Assessment: A Guide to Authentic Tasks",
    "dek": "A practical framework for replacing high-stakes exams with assessments that mirror real professional practice, developed with input from five faculties.",
    "category": "Curriculum Design",
    "date": "19 Aug 2026",
    "readTime": "4 min read",
    "image": "images/ideas.jpg",
    "thumbClass": "",
    "byline": "By the Learning & Teaching Office"
  },
  "two-lecturers-recognised-for-excellence-in-teaching": {
    "title": "Two Lecturers Recognised for Excellence in Teaching",
    "dek": "This year's Teaching Excellence Awards celebrate innovative practice in first-year mathematics and clinical nursing education.",
    "category": "Awards & Recognition",
    "date": "17 Aug 2026",
    "readTime": "4 min read",
    "image": "images/teachers.jpeg",
    "thumbClass": "",
    "byline": "By the Learning & Teaching Office"
  },
  "a-beginners-guide-to-using-the-lms-analytics-dashboard": {
    "title": "A Beginner's Guide to Using the LMS Analytics Dashboard",
    "dek": "New reporting tools now let lecturers see engagement trends per module, week by week — here's how to read them and act on what you find.",
    "category": "Digital Learning",
    "date": "14 Aug 2026",
    "readTime": "3 min read",
    "image": "images/lms.jpg",
    "thumbClass": "navy",
    "byline": "By the Learning & Teaching Office"
  },
  "peer-observation-programme-opens-for-second-semester": {
    "title": "Peer Observation Programme Opens for Second Semester",
    "dek": "Colleagues can now sign up to observe and be observed in a confidential, developmental peer review process, with training provided beforehand.",
    "category": "Staff Development",
    "date": "12 Aug 2026",
    "readTime": "3 min read",
    "image": "images/story-5.jpg",
    "thumbClass": "gold-tint",
    "byline": "By the Learning & Teaching Office"
  },
  "supplemental-instruction-sessions-expand-to-first-year-chemistry": {
    "title": "Supplemental Instruction Sessions Expand to First-Year Chemistry",
    "dek": "Peer-led study sessions, shown to improve pass rates in first-year mathematics, are now being piloted in chemistry ahead of a full rollout in 2027.",
    "category": "Student Success",
    "date": "10 Aug 2026",
    "readTime": "3 min read",
    "image": "images/story-6.jpg",
    "thumbClass": "",
    "byline": "By the Learning & Teaching Office"
  },
  "case-based-learning-pilot-reports-strong-first-year-results": {
    "title": "Case-Based Learning Pilot Reports Strong First-Year Results",
    "dek": "",
    "category": "Teaching Innovation",
    "date": "21 Aug 2026",
    "readTime": "4 min read",
    "image": "images/latest-1.jpg",
    "thumbClass": "",
    "byline": "By the Learning & Teaching Office"
  },
  "save-the-date-assessment-design-workshop-series-september": {
    "title": "Save the Date: Assessment Design Workshop Series, September",
    "dek": "",
    "category": "Events",
    "date": "20 Aug 2026",
    "readTime": "2 min read",
    "image": "images/latest-2.jpg",
    "thumbClass": "gold-tint",
    "byline": "By the Learning & Teaching Office"
  },
  "three-ways-lecturers-are-using-discussion-boards-well": {
    "title": "Three Ways Lecturers Are Using Discussion Boards Well",
    "dek": "",
    "category": "Digital Learning",
    "date": "18 Aug 2026",
    "readTime": "3 min read",
    "image": "images/latest-3.jpg",
    "thumbClass": "",
    "byline": "By the Learning & Teaching Office"
  },
  "applications-open-for-the-new-academic-mentorship-programme": {
    "title": "Applications Open for the New Academic Mentorship Programme",
    "dek": "",
    "category": "Staff Development",
    "date": "15 Aug 2026",
    "readTime": "3 min read",
    "image": "images/latest-4.jpg",
    "thumbClass": "gold-tint",
    "byline": "By the Learning & Teaching Office"
  },
  "flipped-classrooms-take-root-across-three-faculties": {
    "title": "Flipped Classrooms Take Root Across Three Faculties",
    "dek": "Lecturers in Health Sciences, Engineering and Business are moving content delivery online and using contact time for problem-solving instead.",
    "category": "Teaching Innovation",
    "date": "22 Aug 2026",
    "readTime": "5 min read",
    "image": "",
    "byline": "By the Learning & Teaching Office"
  },
  "designing-rubrics-that-actually-save-you-time": {
    "title": "Designing Rubrics That Actually Save You Time",
    "dek": "",
    "category": "Staff Development",
    "date": "",
    "readTime": "",
    "image": "",
    "byline": "By the Learning & Teaching Office",
    "workshopDate": "3 Sept 2026"
  },
  "facilitating-large-classes-without-losing-the-room": {
    "title": "Facilitating Large Classes Without Losing the Room",
    "dek": "",
    "category": "Staff Development",
    "date": "",
    "readTime": "",
    "image": "",
    "byline": "By the Learning & Teaching Office",
    "workshopDate": "10 Sept 2026"
  },
  "getting-started-with-the-new-lms-gradebook": {
    "title": "Getting Started With the New LMS Gradebook",
    "dek": "",
    "category": "Digital Learning",
    "date": "",
    "readTime": "",
    "image": "",
    "byline": "By the Learning & Teaching Office",
    "workshopDate": "17 Sept 2026"
  },
  "inclusive-assessment-for-diverse-learners": {
    "title": "Inclusive Assessment for Diverse Learners",
    "dek": "",
    "category": "Curriculum Design",
    "date": "",
    "readTime": "",
    "image": "",
    "byline": "By the Learning & Teaching Office",
    "workshopDate": "24 Sept 2026"
  }
}

EOF

# ---------- data/layout.json ----------
cat > data/layout.json << 'EOF'
{
  "heroLead": "article",
  "heroSide": [
    "new-micro-credential-track-launches-for-first-time-lecturers",
    "what-we-learned-from-a-semester-of-ai-assisted-feedback",
    "early-alert-system-flags-at-risk-students-two-weeks-sooner"
  ],
  "featured": [
    "learning-and-teaching-symposium-draws-record-attendance",
    "rethinking-assessment-a-guide-to-authentic-tasks",
    "two-lecturers-recognised-for-excellence-in-teaching",
    "a-beginners-guide-to-using-the-lms-analytics-dashboard",
    "peer-observation-programme-opens-for-second-semester",
    "supplemental-instruction-sessions-expand-to-first-year-chemistry"
  ],
  "latest": [
    "case-based-learning-pilot-reports-strong-first-year-results",
    "save-the-date-assessment-design-workshop-series-september",
    "three-ways-lecturers-are-using-discussion-boards-well",
    "applications-open-for-the-new-academic-mentorship-programme"
  ],
  "mostRead": [
    "flipped-classrooms-take-root-across-three-faculties",
    "rethinking-assessment-a-guide-to-authentic-tasks",
    "a-beginners-guide-to-using-the-lms-analytics-dashboard",
    "new-micro-credential-track-launches-for-first-time-lecturers"
  ],
  "workshops": [
    "designing-rubrics-that-actually-save-you-time",
    "facilitating-large-classes-without-losing-the-room",
    "getting-started-with-the-new-lms-gradebook",
    "inclusive-assessment-for-diverse-learners"
  ]
}

EOF

# ---------- templates/index.template.html ----------
cat > templates/index.template.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>The Teaching Chronicle — Learning & Teaching Newsletter | Nelson Mandela University</title>
<meta name="description" content="The Teaching Chronicle — news, workshops and staff development from the Learning and Teaching Office at Nelson Mandela University.">
<link rel="stylesheet" href="style.css">
</head>
<body>

<a href="#main-content" class="skip-link">Skip to main content</a>

<!-- TODO: replace src below with your downloaded banner image (800 x 600) -->
<header class="site-header">
  <div class="header-banner">
    <img src="images/Learning and Teaching Matters.png" width="1200" height="800"
         alt="Learning and Teaching Matters — newsletter banner">
  </div>
</header>

<!-- Nav -->
<nav class="site-nav" aria-label="Newsletter sections">
  <div class="container">
    <ul>
      <li><a href="index.html">This Issue</a></li>
      <li><a href="#teaching-innovation">Teaching Innovation</a></li>
      <li><a href="#staff-development">Staff Development</a></li>
      <li><a href="#digital-learning">Digital Learning</a></li>
      <li><a href="#student-success">Student Success</a></li>
      <li><a href="#events">Events &amp; Workshops</a></li>
      <li><a href="#archive">Past Issues</a></li>
    </ul>
  </div>
</nav>

<main id="main-content">
<div class="container">

  <!-- Hero -->
  <section class="hero" aria-label="Lead stories">
    <div class="hero-grid">
<!-- BUILD:HERO -->
<!-- /BUILD:HERO -->
    </div>
  </section>

  <!-- Featured grid -->
  <section aria-labelledby="featured-heading">
    <div class="section-head">
      <h2 id="featured-heading">In This Issue</h2>
      <div class="rule"></div>
      <span class="tag">{{FEATURED_COUNT}} stories</span>
    </div>
    <div class="story-grid">
<!-- BUILD:FEATURED -->
<!-- /BUILD:FEATURED -->
    </div>
  </section>

  <!-- Latest + Sidebar -->
  <section class="split" aria-label="Latest stories and resources">
    <div>
      <div class="section-head">
        <h2>Latest Updates</h2>
        <div class="rule"></div>
      </div>

<!-- BUILD:LATEST -->
<!-- /BUILD:LATEST -->
    </div>

    <aside class="sidebar">
      <div class="block">
        <h3>Most Read This Issue</h3>
<!-- BUILD:MOSTREAD -->
<!-- /BUILD:MOSTREAD -->
      </div>

      <div class="cta-block">
        <h3>Have a Story to Share?</h3>
        <p>Tell us about a teaching innovation, workshop or student success story from your department.</p>
        <a href="mailto:learningandteaching@mandela.ac.za" class="btn">Submit a Story</a>
      </div>

      <div class="calendar-card">
        <div class="calendar-header">
          <button type="button" class="calendar-nav" id="calendar-prev" aria-label="Previous month">&lsaquo;</button>
          <div class="calendar-month" id="calendar-month"></div>
          <button type="button" class="calendar-nav" id="calendar-next" aria-label="Next month">&rsaquo;</button>
        </div>
        <div class="calendar-grid" id="calendar-grid"></div>
      </div>
      <script>
        (function () {
          var monthEl = document.getElementById('calendar-month');
          var gridEl = document.getElementById('calendar-grid');
          var prevBtn = document.getElementById('calendar-prev');
          var nextBtn = document.getElementById('calendar-next');

          var realToday = new Date();
          var viewYear = realToday.getFullYear();
          var viewMonth = realToday.getMonth();

          var monthNames = ["January","February","March","April","May","June",
                             "July","August","September","October","November","December"];
          var dow = ["S","M","T","W","T","F","S"];

          function render() {
            gridEl.innerHTML = '';
            monthEl.textContent = monthNames[viewMonth] + " " + viewYear;

            dow.forEach(function (d) {
              var span = document.createElement('span');
              span.className = 'calendar-dow';
              span.textContent = d;
              gridEl.appendChild(span);
            });

            var firstDay = new Date(viewYear, viewMonth, 1).getDay();
            var daysInMonth = new Date(viewYear, viewMonth + 1, 0).getDate();

            for (var i = 0; i < firstDay; i++) {
              gridEl.appendChild(document.createElement('span'));
            }

            var isCurrentMonth = (viewYear === realToday.getFullYear() && viewMonth === realToday.getMonth());

            for (var d = 1; d <= daysInMonth; d++) {
              var span = document.createElement('span');
              span.textContent = d;
              if (isCurrentMonth && d === realToday.getDate()) span.className = 'today';
              gridEl.appendChild(span);
            }
          }

          prevBtn.addEventListener('click', function () {
            viewMonth -= 1;
            if (viewMonth < 0) { viewMonth = 11; viewYear -= 1; }
            render();
          });

          nextBtn.addEventListener('click', function () {
            viewMonth += 1;
            if (viewMonth > 11) { viewMonth = 0; viewYear += 1; }
            render();
          });

          render();
        })();
      </script>
    </aside>
  </section>

  <!-- Category band -->
  <section id="events" aria-labelledby="upcoming-heading">
    <div class="section-head">
      <h2 id="upcoming-heading">Upcoming Workshops</h2>
      <div class="rule"></div>
    </div>
    <div class="category-band">
<!-- BUILD:WORKSHOPS -->
<!-- /BUILD:WORKSHOPS -->
    </div>
  </section>

</div>
</main>

<!-- Footer -->
<footer class="site-footer">
  <div class="container footer-top">
    <div>
      <h4>Learning and Teaching Matters</h4>
      <p>A quarterly newsletter from the Learning and Teaching Office, Nelson Mandela University, sharing teaching innovation, staff development opportunities and student success stories from across our campuses.</p>
    </div>
    <div>
      <h4>Sections</h4>
      <ul>
        <li><a href="index.html#teaching-innovation">Teaching Innovation</a></li>
        <li><a href="index.html#staff-development">Staff Development</a></li>
        <li><a href="index.html#digital-learning">Digital Learning</a></li>
        <li><a href="index.html#student-success">Student Success</a></li>
      </ul>
    </div>
    <div>
      <h4>Get in Touch</h4>
      <ul>
        <li><a href="mailto:learningandteaching@mandela.ac.za">learningandteaching@mandela.ac.za</a></li>
        <li><a href="https://www.ltmandela.ac.za">mandela.ac.za</a></li>
      </ul>
    </div>
  </div>
  <div class="container footer-bottom">
    <span>&copy; 2026 Nelson Mandela University — Learning &amp; Teaching Office</span>
  </div>
</footer>

</body>
</html>

EOF

# ---------- templates/article.template.html ----------
cat > templates/article.template.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{{TITLE}} | Learning and Teaching Matters</title>
<meta name="description" content="{{DEK}}">
<link rel="stylesheet" href="style.css">
</head>
<body>

<a href="#main-content" class="skip-link">Skip to main content</a>

<header class="site-header">
  <div class="header-banner">
    <img src="images/Learning and Teaching Matters.png" width="1200" height="800"
         alt="Learning and Teaching Matters — newsletter banner">
  </div>
</header>

<nav class="site-nav" aria-label="Newsletter sections">
  <div class="container">
    <ul>
      <li><a href="index.html">This Issue</a></li>
      <li><a href="index.html#teaching-innovation">Teaching Innovation</a></li>
      <li><a href="index.html#staff-development">Staff Development</a></li>
      <li><a href="index.html#digital-learning">Digital Learning</a></li>
      <li><a href="index.html#student-success">Student Success</a></li>
      <li><a href="index.html#events">Events &amp; Workshops</a></li>
      <li><a href="#archive">Past Issues</a></li>
    </ul>
  </div>
</nav>

<main id="main-content">

  <div class="article-header">
    <div class="breadcrumb"><a href="index.html">This Issue</a> &nbsp;/&nbsp; {{CATEGORY}}</div>
    <span class="category-pill">{{CATEGORY}}</span>
    <h1>{{TITLE}}</h1>
    <p class="dek">{{DEK}}</p>
    <div class="byline-row">
      <span>{{BYLINE}}</span>
      <span>{{DATE}}</span>
    </div>
  </div>

  <div class="article-hero-media">
    <img src="{{IMAGE}}" alt="{{TITLE}}">
  </div>

  <div class="article-body">
    <p>TODO: write the article body here. Replace this paragraph and the ones below with the real story.</p>

    <p>TODO: second paragraph.</p>

    <h2>TODO: subheading</h2>

    <p>TODO: paragraph under the subheading.</p>

    <blockquote>"TODO: pull quote." — TODO, attribution</blockquote>

    <div class="tag-row">
      <a href="index.html">{{CATEGORY}}</a>
    </div>
  </div>

</main>

<footer class="site-footer">
  <div class="container footer-top">
    <div>
      <h4>Learning and Teaching Matters</h4>
      <p>A quarterly newsletter from the Learning and Teaching Office, Nelson Mandela University, sharing teaching innovation, staff development opportunities and student success stories from across our campuses.</p>
    </div>
    <div>
      <h4>Sections</h4>
      <ul>
        <li><a href="index.html#teaching-innovation">Teaching Innovation</a></li>
        <li><a href="index.html#staff-development">Staff Development</a></li>
        <li><a href="index.html#digital-learning">Digital Learning</a></li>
        <li><a href="index.html#student-success">Student Success</a></li>
      </ul>
    </div>
    <div>
      <h4>Get in Touch</h4>
      <ul>
        <li><a href="mailto:learningandteaching@mandela.ac.za">learningandteaching@mandela.ac.za</a></li>
        <li><a href="https://www.mandela.ac.za">mandela.ac.za</a></li>
      </ul>
    </div>
  </div>
  <div class="container footer-bottom">
    <span>&copy; 2026 Nelson Mandela University — Learning &amp; Teaching Office</span>
  </div>
</footer>

</body>
</html>

EOF

# ---------- scripts/build.js ----------
cat > scripts/build.js << 'EOF'
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

EOF

# ---------- README.md ----------
cat > README.md << 'EOF'
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

EOF

echo "Files created. Running first build..."
node scripts/build.js build

echo ""
echo "Done. index.html regenerated from data/articles.json + data/layout.json."
echo "Next time you add a story: node scripts/build.js new \"Title\""
