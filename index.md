---
layout: default
title: Home
---

<div class="stars-container">
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
    <span class="star">✦</span>
</div>

<div class="profile-container">
    <div class="profile-card">
        <div class="profile-image">
            <img src="{{ '/assets/leopic-round.png' | relative_url }}" alt="Dr. Fu Li">
        </div>
        <div class="profile-content">
            <h1>Dr. Fu Li <span class="nickname">(Leo)</span></h1>
            <p class="bio-text">Expert in AI infrastructure networking, specializing in advanced protocols like PCIe Net, RDMA over PCIe/CXL, and scalable solutions for next-generation AI systems. Passionate about driving innovation at the intersection of hardware, networking, and cloud-native technologies.</p>
            <div class="social-links">
                <a href="https://github.com/leoustc" target="_blank" class="social-link">
                    <svg class="github-icon" viewBox="0 0 24 24"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/></svg>
                    GitHub
                </a>
            </div>
        </div>
    </div>
</div>

{% comment %}
{% if site.news.size > 0 %}
<div class="articles-section">
    <h2 class="section-title">News</h2>
    <div class="posts-list">
        {% for news in site.news %}
        <article class="post-item left-align">
            <h3 class="post-title">
                <span class="post-star">✦</span>
                <a href="{{ news.url | relative_url }}">{{ news.title }}</a>
            </h3>
            <div class="post-meta">{{ news.date | date: "%B %d, %Y" }}</div>
            <p class="post-excerpt">{{ news.excerpt | strip_html | truncatewords: 30 }}</p>
        </article>
        {% endfor %}
    </div>
</div>
{% endif %}
{% endcomment %}

<div class="articles-section">
    <h2 class="section-title">Articles</h2>
    <div class="posts-list">
        {% for post in site.posts %}
        <article class="post-item left-align">
            <h3 class="post-title">
                <span class="post-star">✦</span>
                <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
            </h3>
            <div class="post-meta">{{ post.date | date: "%B %d, %Y" }}</div>
            <p class="post-excerpt">{{ post.abstract | strip_html }}</p>
        </article>
        {% endfor %}
    </div>
</div>
