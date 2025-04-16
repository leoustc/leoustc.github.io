<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AI Infrastructure Toolset</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
      color: #333;
    }
    header {
      background: #333;
      color: #fff;
      padding: 1rem 0;
      text-align: center;
    }
    .container {
      max-width: 800px;
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
      color: #007BFF;
      text-decoration: none;
    }
    .tools ul li a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <header>
    <h1>AI Infrastructure Toolset</h1>
  </header>
  <div class="container">
    <h2>Welcome to the AI Infrastructure Toolset</h2>
    <p>
      This website is dedicated to providing tools and resources to make AI infrastructure more efficient and scalable. Whether you're building large-scale AI systems, training LLMs (Large Language Models), or deploying AI-native applications, our toolset is designed to optimize your workflows and enhance performance. Explore our solutions for GPUs, RDMA networking, Kubernetes cluster management, and AI-native applications, and download scripts to streamline your AI infrastructure setup.
    </p>

    <h2>Four Layers of AI Infrastructure</h2>
    <div class="layer">
      <h3>1. GPU</h3>
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
      <p>Below are some useful scripts for AI infrastructure management. Click to download:</p>
      <ul id="tools-list">
        <!-- This list will be dynamically populated by JavaScript -->
      </ul>
    </div>
  </div>

  <script>
    // Dynamically list files in the "tools" folder
    const toolsFolder = "/tools/";
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
      listItem.appendChild(link);
      toolsList.appendChild(listItem);
    });
  </script>
</body>
</html>