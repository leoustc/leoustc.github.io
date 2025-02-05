---
layout: post
title: "DeepSeek Phenomenon: Where is the Future of Large Models Headed?"
abstract: "DeepSeek has sent shockwaves through the AI industry by challenging long-held assumptions about large model training and infrastructure efficiency. This article explores how DeepSeek optimized CUDA at the low level, restructured model workflows, and leveraged knowledge distillation to achieve unprecedented performance gains. Beyond the technical breakthroughs, DeepSeek’s impact has exposed critical weaknesses in Silicon Valley’s approach to AI engineering, questioned the necessity of massive AI infrastructure investments, and disrupted the long-standing belief in high entry barriers for large models. As AI becomes more accessible, the race is no longer about who owns the most GPUs but who can extract the most value from them."
---

# DeepSeek Phenomenon: Where is the Future of Large Models Headed?

## Introduction  

In our previous discussion, we analyzed the relationship between DeepSeek and NVIDIA. Our prediction was simple: unless DeepSeek could fully transition its models to run on CPUs, its impact on NVIDIA would be limited—especially considering that NVIDIA itself also produces CPUs.

Today, let’s take a deeper dive into what DeepSeek has actually done and why it has sparked such a buzz across Silicon Valley, Wall Street, and China.

In short, DeepSeek has made three major advancements, each targeting a different level of large-model optimization. We will explore why these three breakthroughs have had such a significant impact and what challenges lie ahead.

---

## 1. Engineering Optimization: Low-Level Control for High Efficiency  

The first area of improvement is **low-level engineering optimization**. DeepSeek transformed CUDA code into **PTX (Parallel Thread Execution)** form, allowing for **finer control over hardware** and enabling more precise scheduling. This approach maximized efficiency and significantly reduced costs.

### Why does this method improve efficiency so drastically?  
The fundamental issue lies in the vast number of CUDA cores and the extreme speed of data transmission. Providing a perfect scheduler between two ultra-fast processing units is practically impossible. This is evident in NVIDIA’s own shifts between hardware-based scheduling (**Fermi architecture**) and software-based scheduling. Ultimately, **software scheduling won out**.

DeepSeek optimized CUDA core scheduling by **decoupling computation from data transfer**, aligning it with large-model workflows. This **asynchronous optimization**, often referred to as **CUDA DMA (Direct Memory Access)**, dramatically improved **resource utilization**.

Since this optimization heavily relies on software workflow adjustments, it requires **deep system-level expertise**, making it inaccessible to most engineers. NVIDIA attempted to mitigate this problem with **NVLink**, a high-bandwidth, low-latency interconnect. However, in ultra-dense, multi-core systems, there are **no perfect solutions—only trade-offs**. NVLink helps, but **it cannot fully resolve the asynchronous nature of computation and data transfer**. The only way to **fully maximize hardware performance is through asynchronous scheduling**.

### How effective is this optimization?  
Engineering optimizations typically yield a **2–5x performance improvement**, and DeepSeek’s implementation likely falls in the **2–4x range**. Given their use of **PTX for low-level programming**, the overall gains might reach **4–10x**. While this isn’t groundbreaking innovation, it is **excellent engineering practice**. However, maintaining such low-level optimizations **comes at a high cost**, and under heavy workloads, **stability issues** may arise. It remains to be seen if DeepSeek is already encountering these challenges.

---

## 2. Pipeline Optimization: Rethinking Large-Model Workflows  

The second major advancement lies in **optimizing large-model workflows**. DeepSeek introduced the **cold-hot expert model** concept to **enhance GPU memory utilization** and incorporated **adversarial learning** to **refine data processing**. The cold-hot expert model is essentially a **pipeline optimization strategy**, demonstrating that DeepSeek’s engineers are highly focused on **system-level efficiency**.

### Why did such an optimization emerge from DeepSeek, a Chinese company, rather than a Silicon Valley tech giant?  
The reason is simple. Over the past decade, **the U.S. has prioritized high-level programming languages** such as **Java, Python, and Swift**, designed by top architects to provide **fast, user-friendly development environments**. These languages embed **pipeline optimization principles** within their design philosophy.

In contrast, **engineers in China, particularly from the 80s generation, grew up coding in C**. Writing in **C requires an inherent understanding of pipeline structures and asynchronous execution**. This technical background shaped DeepSeek’s core engineering team. If I had to guess, **this pipeline optimization approach likely originated from Liang himself**.

### How effective is pipeline optimization?  
Pipeline optimization typically results in a **2–4x performance improvement**, similar to other software-level optimizations.

---

## 3. Knowledge Distillation: The Secret Weapon  

The third advancement—**knowledge distillation**—is still under debate, so we won’t delve too deeply into it. However, from a **model training perspective**, leveraging a **pre-trained model** (not necessarily an advanced one) for **distillation significantly improves new model efficiency**.

A simple analogy:  
> A modern university student learns in four years what past scholars took centuries to accumulate. While students inherit more knowledge, they don’t necessarily surpass their teachers.  

To **overcome this limitation**, DeepSeek **introduced adversarial learning**, refining model performance beyond conventional approaches.

Initially, adversarial learning was just **an experimental technique**, but **it unexpectedly led to major performance improvements**. This **revealed part of the secret sauce behind OpenAI and other major AI labs**.

---

# Why is DeepSeek Shocking Silicon Valley?  

DeepSeek’s impact extends beyond technical advancements. The shockwave it sent through the U.S. AI sector stems from **three fundamental concerns**.

## 1. The Decline of Low-Level Engineering in the U.S.  

Silicon Valley has traditionally been **a leader in high-precision engineering**, with **unparalleled resources and talent**. However, DeepSeek’s breakthrough came from **outside Silicon Valley**, **exposing a major weakness: a lack of investment in low-level engineering**.

Microsoft’s **immediate response—rushing to integrate DeepSeek’s methods**—demonstrates that talent still exists in the U.S., but **focus and investment have been lacking**. Now that the gap has been exposed, **expect a surge of funding into GPU computing and foundational AI model research**. Once Silicon Valley re-engages, **DeepSeek’s current advantages may not last long**.

---

## 2. The Illusion of High Entry Barriers in AI  

Before DeepSeek, **an unspoken rule** in the industry dictated that:  
> Without at least **10,000 H100 GPUs**, you weren’t even a contender in large-model AI.  

DeepSeek **shattered this illusion**. Large models and deep learning are fundamentally **overfitting problems**—they lack the **rigorous physical theories of traditional sciences**. In other words, modern AI is more akin to **19th-century alchemy** or **early 2000s nanotechnology** than a well-defined scientific discipline.

The realization that **“secret AI recipes” can be independently replicated outside Silicon Valley** is **a major threat** to companies like **OpenAI**. As **hardware costs decrease, AI model development will become democratized**, forcing top AI labs to shift their focus **from hidden optimizations to fundamental scientific breakthroughs**.

---

## 3. Re-Evaluating AI Infrastructure Investment  

Do we really need **this much AI infrastructure**?  

For years, **NVIDIA has heavily invested in NVLink** to optimize AI data transmission. But if DeepSeek’s software optimizations continue proving effective, it raises **a crucial question**—  
> **Does NVIDIA need to rethink its hardware roadmap?**  
> **Should it shift back to giving developers control over scheduling rather than relying on hardware-based solutions?**  
> **From thousands of mega AI datacenters to millions of Edge AI datacenters?**  

If **AI hardware demand shifts toward mid-range GPUs**, what will that mean for **NVIDIA’s revenue model**? And if AI development becomes more accessible, **how should regulations evolve?**  

---

# Conclusion: AI’s Open Future  

DeepSeek’s breakthroughs have **lowered AI’s barriers to entry**, marking a **pivotal shift in the field**. As large models become more accessible, AI research will accelerate, much like how **scientific breakthroughs surged after the standardization of the periodic table**.

The coming years will define AI’s **foundational principles and long-term trajectory**. DeepSeek has proven that **AI is no longer an exclusive club**. The next great AI leap won’t be about **who owns the most GPUs**—  
> **It will be about who extracts the most performance from the hardware they have.**