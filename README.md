# Project Mantle - Strategic Infrastructure & Financial Engine

Welcome to the foundational system architecture repository for the **Icobo Group** conglomerate. This repository hosts the Project Report, system design schemas, and an interactive local viewer for **Mantle** (internally designated as the **"Origin Sector"**).

---

## 📁 Repository Structure

```
├── assets/
│   ├── mantle_dashboard.png     # Visualizing the central trading & control UI
│   ├── smartcycle_facility.png  # Visualizing the automated recycling loop
│   └── global_capital_flow.png   # Visualizing transfer pricing routing
├── index.html                   # Interactive Single Page Web Viewer
├── Mantle_Project_Report.md     # Comprehensive project report (Markdown source)
├── README.md                    # Repository documentation (this file)
└── run.bat                      # Double-clickable launch script for Windows
```

---

## 🚀 How to Run the Interactive Report

This repository includes a web-based client that dynamically renders the Markdown report with full support for:
1. **Interactive Investor Slideshows** (using dynamic carousel decks).
2. **Real-time Flowcharts & Sequences** (using Mermaid.js).
3. **Formatted Mathematical Calculations** (using KaTeX).
4. **Custom Styled Callout Alerts** (e.g., Note, Important, Warning).

### Option A: Windows (Double-Click Launch)
If you are on Windows, simply double-click the **`run.bat`** file in the root folder. It will:
* Spin up a lightweight local web server.
* Automatically open your default web browser to [http://localhost:3000](http://localhost:3000).

### Option B: Command Line (Cross-Platform)
Open your terminal in this repository folder and execute:
```bash
node -e "const http = require('http'), fs = require('fs'), path = require('path'); http.createServer((req, res) => { let filePath = '.' + (req.url === '/' ? '/index.html' : req.url); filePath = decodeURIComponent(filePath); const ext = path.extname(filePath); const contentType = { '.html': 'text/html', '.css': 'text/css', '.js': 'text/javascript', '.png': 'image/png' }[ext] || 'text/plain'; fs.readFile(filePath, (err, content) => { if (err) { res.writeHead(404); res.end('Not Found'); } else { res.writeHead(200, { 'Content-Type': contentType }); res.end(content, 'utf-8'); } }); }).listen(3000, () => console.log('Server running at http://localhost:3000'));"
```
Then, open your browser and navigate to [http://localhost:3000](http://localhost:3000).

---

## 🏛️ Project Mantle Overview
Mantle is the centralized digital foundation that powers the global operations of the Icobo Group:
* **Digital-Physical Bridge:** Connects our customer interaction platform (**Omniworks**) with our manufacturing plants (**Icobo Heavy Industries**).
* **Circular Supply Chain:** Operates the **SmartCycle** recycling loop for metals and polymers.
* **AI & Automation Stack:** Executes n8n workflows and Google AI Studio cognitive integrations to orchestrate real-time commodity arbitrage and cross-border logistics.
* **Strategic Financial Asset:** Establishes a software licensing and **Data Transfer Pricing** mechanism to legally optimize global corporate tax liability via JAFZA.

---
*Confidentiality Notice: The documents in this repository contain proprietary trade secrets of the Icobo Group.*
