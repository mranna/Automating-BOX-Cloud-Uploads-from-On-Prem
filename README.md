# Automating-BOX-Cloud-Uploads-from-On-Prem

# Case Study: Automating On-Prem → Box Uploads

## Problem Statement

Our organization uses Box as the system of record for document storage, but core systems are hosted on **air-gapped on-prem servers**. This required **manual document uploads** from internal users — a time-consuming and error-prone process.

- 🔴 No automated connection from on-prem to Box
- 🔴 Risk of delayed or missing uploads
- 🔴 High effort cost across teams

## Discovery & Research

Through investigation and testing, I explored available Box integration tools:
- Evaluated **Box CLI**, **Box SDKs (Python, Node.js)**, and **Custom API calls**
- Confirmed service account OAuth flow and scopes required
- Validated Box folder creation, file upload, and metadata tagging

## Proof of Concept

I built a prototype using the **Box CLI**:

- ✅ Created root folder and nested structure by convention.
- ✅ Uploaded PDF files programmatically from a mapped folder
- ✅ Applied metadata to classify documents

## Architecture Overview

## Results
- Success metric** | 95%+ upload success rate, 0 manual intervention
- 
