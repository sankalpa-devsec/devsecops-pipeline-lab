# ðŸ›¡ï¸ Production-Ready DevSecOps Container Pipeline

![DevSecOps CI Pipeline](https://github.com/sankalpa-devsec/devsecops-pipeline-lab/actions/workflows/security-pipeline.yml/badge.svg)

An automated DevSecOps CI/CD pipeline demonstrating container hardening, vulnerability management, and automated security gates using **GitHub Actions** and **Aqua Security Trivy**.

---

## ðŸŽ¯ Architecture & Security Flow

```text
[Developer Push]
       â”‚
       â–¼
[GitHub Actions CI] â”€â”€â”€â–º [Docker Build] â”€â”€â”€â–º [Trivy Vulnerability Scan]
                                                        â”‚
                                    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”´â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
                                    â–¼                                       â–¼
                            [CRITICAL/HIGH Found]                  [Zero Vulnerabilities]
                                    â”‚                                       â”‚
                                    â–¼                                       â–¼
                            âŒ Build Fails (Gate)                  âœ… Build Passes

ðŸ”’ Security Implementations
Attack Surface Reduction: Stripped out vulnerable default package managers (npm modules) from the production image.

Minimal Base Image: Shifted to Alpine Linux (node:22-alpine) to minimize footprint and baseline vulnerabilities.

Least Privilege Principle: Executed application processes strictly under a non-root user (USER node).

Automated Security Gate: Enforced an automated Trivy scan on every pull request and push to the main branch with exit-code: 1 on CRITICAL or HIGH findings.

ðŸ› ï¸ Tech Stack
Runtime: Node.js

Containerization: Docker

CI/CD Automation: GitHub Actions

Security & Vulnerability Scanner: Aqua Trivy
