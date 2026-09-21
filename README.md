@'
# 🛡️ Production-Ready DevSecOps Container Pipeline

![DevSecOps CI Pipeline](https://github.com/sankalpa-devsec/devsecops-pipeline-lab/actions/workflows/security-pipeline.yml/badge.svg)

An automated DevSecOps CI/CD pipeline demonstrating container hardening, vulnerability management, and automated security gates using **GitHub Actions** and **Aqua Security Trivy**.

---

## 🎯 Architecture & Security Flow

```text
[Developer Push]
       │
       ▼
[GitHub Actions CI] ───► [Docker Build] ───► [Trivy Vulnerability Scan]
                                                        │
                                    ┌───────────────────┴───────────────────┐
                                    ▼                                       ▼
                            [CRITICAL/HIGH Found]                  [Zero Vulnerabilities]
                                    │                                       │
                                    ▼                                       ▼
                            ❌ Build Fails (Gate)                  ✅ Build Passes
````
---

## 🔒 Security Implementations

* **Attack Surface Reduction:** Stripped out vulnerable default package managers (`npm` modules) from the production image.
* **Minimal Base Image:** Shifted to Alpine Linux (`node:22-alpine`) to minimize footprint and baseline vulnerabilities.
* **Least Privilege Principle:** Executed application processes strictly under a non-root user (`USER node`).
* **Automated Security Gate:** Enforced an automated Trivy scan on every pull request and push to the `main` branch with `exit-code: 1` on `CRITICAL` or `HIGH` findings.

---

## 🛠️ Tech Stack

* **Runtime:** Node.js
* **Containerization:** Docker
* **CI/CD Automation:** GitHub Actions
* **Security & Vulnerability Scanner:** Aqua Trivy
