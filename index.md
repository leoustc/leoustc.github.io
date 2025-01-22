---
layout: default
title: Home
---
<header class="profile-section">
    <div class="profile-image">
        <img src="{{ '/assets/images/profile-image.jpg' | relative_url }}" alt="Dr. Fu Li">
    </div>
    <div class="bio">
        <h1>Dr. Fu Li (Leo)</h1>
        <p>Expert in AI infrastructure networking, specializing in advanced protocols like PCIe Net, RDMA over PCIe/CXL, and scalable solutions for next-generation AI systems. Passionate about driving innovation at the intersection of hardware, networking, and cloud-native technologies.</p>
        <div class="social-links">
            <a href="https://github.com/leoustc" target="_blank">GitHub</a>
            <!-- Add more social links as needed -->
        </div>
    </div>
</header>

<main class="posts-section">
    <h2>Latest Posts</h2>
    <div class="posts-grid">
        {% for post in site.posts limit:6 %}
        <article class="post-card">
            <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
            <div class="post-meta">{{ post.date | date: "%B %d, %Y" }}</div>
            <p>{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
        </article>
        {% endfor %}
    </div>
</main>