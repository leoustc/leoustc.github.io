---
layout: post
title: "Deep Dive into AI infrastructure: NVIDIA's DPUs and NVLink and beyond"
abstract: "Nvidia's DPU and NVLink are two powerful technologies that enhance the scalability of AI infrastructure. In this article, we will explore how these technologies function and their impact on modern computing. Additionally, we will discuss efforts by other companies to catch up with Nvidia."
---

## Introduction  

As artificial intelligence (AI) systems grow in complexity and demand, efficient data movement becomes a critical challenge. NVIDIA has emerged as a leader in addressing this challenge with two groundbreaking technologies: **Data Processing Units (DPUs)** and **NVLink**. These innovations redefine how data is processed and shared across AI infrastructure, enabling unparalleled scalability and performance.

In this article, we explore how DPUs and NVLink function, their impact on AI and high-performance computing (HPC), and how other companies are striving to close the gap with NVIDIA.

---

## 1. Scaling AI infrastructure

When it comes to the design a scalable AI infrastructure, there are two major concerns: 
1) how many GPUs can we connect to a single system, 
2) how fast can we exchange data across all GPUs in the system. 

The first one is about the total amount of computing power we can have, of course, intrinsically, the more GPUs we have, the more computing power we can offer. In principle, with the scalability of TCP/IP protocol, we can connect as many GPUs as we want to a single system. 这就是有些公司继续使用TCP/IP或者改进TCP/IP来解决这个问题的出发点。后面我们会继续讨论这个话题。

However, the problem is that the communication bandwidth is limited by the network speed, and the communication latency is limited by the network distance， 更加重要的是网络流量控制对网络架构非常敏感. 同时考虑到AI计算流量和传统的网络流量模式非常不同。导致我们第一个问题其实主要是取决于第二个问题，即我们如何加速GPU之间的数据传输。


To address the second question, 同时考虑到由于AI计算对可靠性要求非常高，网络丢包率将极大的影响AI计算效率，today's AI infrastructure build a CLOS network. CLOS network is a kind of network topology that is very scalable and can support a large number of nodes, 但是非常昂贵。With the multiple layer CLOS architecure and fine-tuned packet buffer, we can theoretically form a large lossless and high-speed network. 所以大部分基于CLOS架构的AI infrascture公司的解决方案基本上都在在努力的根据运行的情况来调整网络buffer的大小来达到lossless的网络。

However, 随着clos网络层次的和速率的增加，新的问题出现了，1）点对点通信的延迟，2）网络拥塞算法，3）网络buffer的大小。虽然可以通过grouping的方式解决网络拥塞的问题，但是点对点通信的延迟，和网络buffer大小的问题无法完美解决。因为为了确保网络的lossless，网络buffer的大小需要保留最大容量用以应对最坏情况。而网络buffer的大小和网络交换机的成本和设计相关无法无限增加。

## 2. AI infrastructure的计算模型

在探讨nvdia的解决方案之前，我们先简单介绍一下AI infrastructure的计算模型，即我们需要如何将AI计算任务分配到不同的GPU上。

In this article we dont want to dive deep into the details of CLOS network, we focus on how Nvidia use DPU and NVLink to address the question.

## 2. DPUs + RDMA: 网络scale-out问题的应对方案

虽然tcp/ip协议可以解决网络scale-out的“数量”问题，但是其性能和延迟问题无法满足AI计算的需求。所以大部分AI infrastructure公司都采用了CLOS+RDMA协议来解决这个问题。RDMA协议是一种基于硬件的协议，可以提供非常高的性能和非常低的延迟。但是RDMA协议的实现非常复杂，需要非常高的硬件支持。而DPUs就是专门为RDMA协议设计的硬件。

**Key Features of DPUs:**  
- **Accelerated Networking:** DPUs manage data transfer at high speeds using RDMA (Remote Direct Memory Access), bypassing CPUs to minimize latency.  
- **Infrastructure Management:** With integrated programmable cores, DPUs streamline tasks like virtualization and storage orchestration.  
- **Energy Efficiency:** By offloading tasks from CPUs, DPUs reduce power consumption while maintaining high throughput.




In order to solve the latency problem, Nvidia use a backdoor connection between GPUs, namely NVLink. which NVlink, GPU to GPU communication no longer go through the host CPU and host memory, instead, it goes through the GPU itself. this save significant amount of time for data transfer, due to the short data path and simple task scheduling. contrastly, CPU with NIC and meomory will increase about 1us latency in one side in data movement. So from this perspective, NVLink in theory has a 2us latency advantage, which resulting in more layers of CLOS network can be used. So you can see, the NVLink and NVSwitch architecture is very similar to the CLOS network as well. Of course due to the nature of NVLink, the port density and switching capacity of NVSwitch is not as good as the ethernet switch.

Howe to solve this problem?

<div style="text-align: center;">
<img src="https://developer-blogs.nvidia.com/wp-content/uploads/2022/11/grace-hopper-nvlink-switch-system.png" 
alt="NVLink" style="width: 70%; height: auto;">
<p>Scaling with DPUs and NVLink</p>
</div>

## 1. DPUs: Optimizing Data-Centric Workloads  
DPUs are specialized processors designed to offload data-centric tasks, reducing the burden on traditional CPUs. NVIDIA’s BlueField DPU series exemplifies this innovation by handling networking, storage, and security workloads independently.

**Key Features of DPUs:**  
- **Accelerated Networking:** DPUs manage data transfer at high speeds using RDMA (Remote Direct Memory Access), bypassing CPUs to minimize latency.  
- **Infrastructure Management:** With integrated programmable cores, DPUs streamline tasks like virtualization and storage orchestration.  
- **Energy Efficiency:** By offloading tasks from CPUs, DPUs reduce power consumption while maintaining high throughput.

DPUs are particularly valuable in multi-tenant environments, where they ensure resource isolation and efficient data processing, making them a cornerstone of modern data center design.

---

## 2. NVLink: High-Speed GPU Communication  
NVLink is NVIDIA’s proprietary interconnect technology that facilitates rapid data transfer between GPUs and CPUs. This high-bandwidth communication link significantly outperforms traditional PCIe connections, making it a critical component of NVIDIA’s AI ecosystem.

**How NVLink Works:**  
- NVLink connects GPUs directly, enabling shared memory across devices.  
- It provides up to 900 GB/s of bandwidth in its latest iteration, allowing AI models to process massive datasets efficiently.  
- By integrating with NVSwitch, NVIDIA extends NVLink’s capabilities to connect multiple GPUs seamlessly in large-scale systems.

Together, NVLink and NVSwitch transform GPU clusters into unified systems, accelerating workloads like AI training, large-scale simulations, and scientific research.

---

## 3. NVIDIA’s Competitive Edge  
The combination of DPUs and NVLink creates a robust ecosystem that addresses the critical challenges of AI infrastructure: scalability, efficiency, and cost. By integrating these technologies with their GPUs, NVIDIA has established itself as the leader in AI computing.

However, competitors are making strides to catch up:  
- **Intel’s IPUs (Infrastructure Processing Units):** Intel is leveraging its expertise in CPUs and networking to develop IPUs that compete with NVIDIA’s DPUs.  
- **Broadcom and Marvell:** These companies are focusing on AI-optimized network switches, aiming to challenge NVIDIA’s dominance in data-centric networking.  
- **AMD’s Infinity Fabric:** AMD offers an alternative interconnect for GPUs and CPUs, designed to compete with NVLink in AI workloads.

---

## Conclusion  
NVIDIA’s DPUs and NVLink represent a significant leap forward in AI and HPC infrastructure. By addressing key bottlenecks in data movement and scalability, these technologies enable breakthroughs in AI applications across industries. While competitors are working hard to close the gap, NVIDIA’s integrated ecosystem continues to set the standard for modern AI infrastructure.

As the demand for more scalable and efficient systems grows, the race to innovate in AI networking will shape the future of computing. NVIDIA’s efforts with DPUs and NVLink have set a high bar, pushing the boundaries of what’s possible in AI-driven technologies.
