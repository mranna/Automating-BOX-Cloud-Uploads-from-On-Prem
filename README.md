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
- ✅ Uploaded CSV files programmatically from a SQL server
- ✅ Replaced files with new versions
- ✅ Generated Shareable links
- ✅ Schedule uploads via macOS (InProgress)
- ✅ Apply metadata to classify documents (InProgress)

## Architecture Overview

## Success metric**
-   95%+ upload success rate
-   0 manual intervention
-   5+ hrs/week Stakeholder Time saved

## How I did it
https://github.com/mranna/Automating-BOX-Cloud-Uploads-from-On-Prem/blob/main/HOW_IT_WORKS.md

## Security Considerations
- Used service account with scoped JWT permissions
- No sensitive data stored in scripts or committed repo
