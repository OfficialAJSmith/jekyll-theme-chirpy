# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-chirpy"
  spec.version       = "7.4.1"
  spec.authors       = ["Cotes Chung"]
  spec.email         = ["cotes.chung@gmail.com"]

  spec.summary       = "A minimal, responsive, and feature-rich Jekyll theme for technical writing."
  spec.homepage      = "https://github.com/cotes2020/jekyll-theme-chirpy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r!^((_(includes|layouts|sass|(data\/(locales|origin)))|assets)\/|README|LICENSE)!i)
  }

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/cotes2020/jekyll-theme-chirpy/issues",
    "documentation_uri" => "https://github.com/cotes2020/jekyll-theme-chirpy/#readme",
    "homepage_uri"      => "https://cotes2020.github.io/chirpy-demo",
    "source_code_uri"   => "https://github.com/cotes2020/jekyll-theme-chirpy",
    "wiki_uri"          => "https://github.com/cotes2020/jekyll-theme-chirpy/wiki",
    "plugin_type"       => "theme"
  }

  spec.required_ruby_version = "~> 3.1"

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.2"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2"

end
---
# Only the main Sass file needs front matter
---

/*
 * Chirpy Techno Glow — DARK MODE ONLY override
 * Drop this file at: assets/css/jekyll-theme-chirpy.scss
 * This version removes light palettes and forces a consistent dark look.
 */

@import "jekyll-theme-chirpy";

/* ==========================
   DARK PALETTE (Techno Glow)
   ========================== */
:root {
  /* Brand */
  --tg-blue:   #4A90E2; /* primary */
  --tg-indigo: #3A0CA3; /* deep */
  --tg-purple: #9D4EDD; /* accent */
  --tg-aqua:   #4DD0E1; /* secondary accent */

  /* Surfaces & text (DARK ONLY) */
  --tg-bg:     #1B1D29; /* page background */
  --tg-card:   #232538; /* cards/panels */
  --tg-text:   #E8E9F3; /* main text */
  --tg-muted:  #B8BCD9; /* muted text */
  --tg-border: #313553; /* borders */
}

/* Force dark regardless of system or theme toggle */
html, :root, body {
  color-scheme: dark;
  background: var(--tg-bg) !important;
}

/* Hide/disable any theme switch UI if present in Chirpy */
.mode-toggle, .theme-toggle, [data-toggle="mode"] { display: none !important; }

/* ======================
   GLOBAL COLOR MAPPINGS
   ====================== */
body { color: var(--tg-text); }

/* Links */
a, .post-tag:hover { color: var(--tg-blue); }
a:hover { color: var(--tg-purple); }

/* Headings */
h1, h2, h3, h4, h5, h6 { color: var(--tg-text); }

/* Surfaces (cards, panels, toc, sidebar) */
.card, .post, .post-content, .panel, .toc, .sidebar, .pager {
  background: var(--tg-card);
  border: 1px solid var(--tg-border);
  box-shadow: 0 10px 25px rgba(0,0,0,0.35);
}

/* Muted text */
.toc .nav-link, .post-meta, .post-tail, .post-categories, .post-list .post-preview > .post-meta, .post-desc {
  color: var(--tg-muted);
}

/* Code blocks */
pre, code, .highlight {
  background: #171A2A;
  border: 1px solid var(--tg-border);
  color: var(--tg-text);
}
pre code { background: transparent; }

/* Buttons */
.btn, .page-item .page-link {
  color: var(--tg-text);
  border: 1px solid var(--tg-border);
  background: var(--tg-card);
}
.btn:hover, .page-item .page-link:hover {
  background: linear-gradient(90deg, rgba(74,144,226,0.12), rgba(157,78,221,0.10));
}

/* Primary CTA */
.btn-primary, .btn-primary:visited {
  background: linear-gradient(135deg, var(--tg-blue), var(--tg-purple));
  color: #fff;
  border: none;
  box-shadow: 0 8px 20px rgba(74,144,226,0.22);
}
.btn-primary:hover { box-shadow: 0 10px 28px rgba(157,78,221,0.26); }

/* Sidebar header (site title) */
.site-title, .site-title a { color: var(--tg-text); }
.site-subtitle { color: var(--tg-muted); }

/* Search input */
#search-input, .search-input, input[type="search"] {
  border: 1px solid var(--tg-border);
  background: transparent;
  color: var(--tg-text);
}

/* Tag pills (Docker/DevOps/Cloud style) */
.post-tag, .tag, .label {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 2px 10px;
  border-radius: 999px;
  font-size: 0.75rem;
  font-weight: 700;
  border: none;
}
.tag-blue   { background: rgba(74,144,226,0.22); color: #BBD6FB; }
.tag-purple { background: rgba(157,78,221,0.24); color: #D9B7FF; }
.tag-aqua   { background: rgba(77,208,225,0.26); color: #C2F3F7; }

/* TOC links */
#toc .nav-link, .toc .nav-link { color: var(--tg-text); }
#toc .nav-link:hover, .toc .nav-link:hover { color: var(--tg-blue); text-decoration: underline; text-underline-offset: 3px; }

/* Tables */
table { border-color: var(--tg-border); }
th, td { border-color: var(--tg-border); }

/* Soft focus glow on interactive elements */
a:focus, button:focus, .btn:focus, input:focus, textarea:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(77,208,225,0.18), 0 10px 30px rgba(74,144,226,0.16);
}

/* Optional: gradient header bar (dark) */
.header-wrapper, .site-header, .topbar {
  background-image: linear-gradient(90deg, color-mix(in srgb, var(--tg-blue) 85%, #000 15%), var(--tg-purple));
  color: #fff;
}
.header-wrapper a, .site-header a, .topbar a { color: #fff; }
