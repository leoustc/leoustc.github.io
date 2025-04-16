<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AI Infrastructure Architecture</title>
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
    <h1>AI Infrastructure Architecture</h1>
  </header>
  <div class="container">
    <h2>Four Layers of AI Infrastructure</h2>
    <div class="layer">
      <h3>1. GPU</h3>
      <p>High-performance GPUs are the foundation of AI computation, enabling efficient training and inference for deep learning models.</p>
    </div>
    <div class="layer">
      <h3>2. RDMA Networking</h3>
      <p>Remote Direct Memory Access (RDMA) networking ensures low-latency, high-throughput communication between nodes in distributed AI workloads.</p>
    </div>
    <div class="layer">
      <h3>3. Kubernetes (K8s) Cluster Management</h3>
      <p>Kubernetes provides a scalable and flexible platform for managing containerized AI workloads across clusters.</p>
    </div>
    <div class="layer">
      <h3>4. AI-Native Applications</h3>
      <p>Applications designed specifically for AI, such as model training pipelines, inference services, and data preprocessing tools.</p>
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
      "setup_remote_jupyterserver.sh" // Added the new script
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