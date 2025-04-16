<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AI Infrastructure Toolset</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background-color: #f6f8fa;
      color: #24292e;
    }
    header {
      background: #24292e;
      color: #fff;
      padding: 1rem 0;
      text-align: center;
    }
    .container {
      max-width: 900px;
      margin: 20px auto;
      padding: 20px;
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    h1, h2 {
      text-align: center;
    }
    .layer {
      margin-bottom: 20px;
    }
    .tools {
      margin-top: 30px;
    }
    .tools ul {
      list-style: none;
      padding: 0;
    }
    .tools ul li {
      margin: 10px 0;
    }
    .tools ul li a {
      color: #0366d6;
      text-decoration: none;
    }
    .tools ul li a:hover {
      text-decoration: underline;
    }
    .github-logo {
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }
    .github-logo img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      border: 2px solid #24292e;
    }
    .about-me {
      text-align: center;
      margin-bottom: 30px;
    }
    .about-me a {
      color: #0366d6;
      text-decoration: none;
    }
    .about-me a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <header>
    <h1>AI Infrastructure Toolset</h1>
  </header>
  <div class="container">
    <div class="about-me">
      <h2>About Me</h2>
      <p>
        <strong>Dr. Leo, AI Infra Architect</strong><br>
        I specialize in designing and optimizing AI infrastructure, focusing on advanced networking protocols like PCIe Net and RDMA over PCIe/CXL. My passion lies in creating scalable solutions for next-generation AI systems, combining cutting-edge hardware, networking, and cloud-native technologies. I aim to drive innovation and efficiency in AI infrastructure to support the most demanding workloads, including LLM training and deployment.<br>
        Visit my personal page: <a href="https://leoustc.com" target="_blank">https://leoustc.com</a>
      </p>
    </div>

    <h2>Four Layers of AI Infrastructure</h2>
    <div class="layer">
      <h3>1. GPU and NVLink</h3>
      <p>
        GPUs are the backbone of AI computation, offering unparalleled parallel processing capabilities. Modern GPUs, such as NVIDIA A100 or H100, provide up to 1.6 TB/s memory bandwidth and support NVLink with speeds of up to 600 GB/s for inter-GPU communication. These features are critical for training LLMs, which require massive data throughput and efficient tensor operations. GPUs accelerate both training and inferencing, reducing the time-to-solution for complex AI models.
      </p>
    </div>
    <div class="layer">
      <h3>2. RDMA Networking</h3>
      <p>
        RDMA (Remote Direct Memory Access) networking enables low-latency, high-bandwidth communication between nodes in distributed AI workloads. With latencies as low as 1 microsecond and bandwidths exceeding 200 Gbps (e.g., with InfiniBand or RoCE), RDMA ensures efficient data transfer for large-scale LLM training. This is essential for synchronizing gradients and parameters across GPUs in multi-node setups, minimizing bottlenecks in distributed training.
      </p>
    </div>
    <div class="layer">
      <h3>3. Kubernetes (K8s) Cluster Management</h3>
      <p>
        Kubernetes provides a robust platform for managing containerized AI workloads. It supports horizontal scaling, enabling the addition of more nodes to handle increased computational demands. Kubernetes ensures stability and fault tolerance, automatically rescheduling failed pods and maintaining service availability. For LLM training and inferencing, Kubernetes simplifies the deployment of distributed systems, such as model training pipelines and inference services, across clusters.
      </p>
    </div>
    <div class="layer">
      <h3>4. AI-Native Applications</h3>
      <p>
        AI-native applications are designed to leverage the unique requirements of AI workloads. These include model training pipelines, inference services, and data preprocessing tools. For LLMs, such applications streamline the deployment of models, optimize inferencing latency, and enable real-time applications like chatbots and recommendation systems. Efficient AI-native applications are critical for scaling LLMs to production environments and ensuring seamless user experiences.
      </p>
    </div>

    <div class="tools">
      <h2>Tools Download</h2>
      <p>Below are some useful scripts for AI infrastructure management. Click to download or use the provided <code>curl</code> command to install:</p>
      <ul id="tools-list">
        <!-- This list will be dynamically populated by JavaScript -->
      </ul>
    </div>
  </div>

  <div class="github-logo">
    <a href="https://github.com/leoustc" target="_blank">
      <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" alt="GitHub Logo">
    </a>
  </div>

  <script>
    // Dynamically list files in the "tools" folder
    const toolsFolder = "https://leoustc.github.io/tools/";
    const scripts = [
      "setup-gpu.sh",
      "configure-rdma.sh",
      "deploy-k8s.sh",
      "ai-app-deploy.sh",
      "setup_remote_jupyterserver.sh"
    ];

    const toolsList = document.getElementById("tools-list");
    scripts.forEach(script => {
      const listItem = document.createElement("li");
      const link = document.createElement("a");
      link.href = toolsFolder + script;
      link.textContent = script;
      const curlCommand = document.createElement("code");
      curlCommand.textContent = ` curl ${toolsFolder}${script} | bash`;
      listItem.appendChild(link);
      listItem.appendChild(curlCommand);
      toolsList.appendChild(listItem);
    });
  </script>
</body>
</html>