---
title: "ACME Simulators Database System"
linkTitle: "ACME Database"
slug: "acme-project"
date: 2025-10-21
weight: 2
description: >
  Designed and implemented a fully normalized database system for ACME Simulators to manage the creation, versioning, and approval of training manuals across multiple vehicle and simulator platforms.  
  Enabled project-specific handbooks to be dynamically assembled based on approved document releases, ensuring accurate, configuration-specific content delivery.
categories: [Projects, Data Management, SQL]
tags: [database design, ERD, SQL, normalization, relational schema, version control]
---

{{% pageinfo %}}
This project was completed for **INSY 661 – Database Systems and Applications (Fall 2025)** at McGill University.  
Our team designed, built, and tested a relational database for **ACME Simulators**, focusing on version tracking, approval workflows, and dynamic document assembly.
{{% /pageinfo %}}

<div class="text-center mb-4">
  <a class="btn btn-lg btn-success me-3 mb-3" href="https://www.db-fiddle.com/f/nY5eLPKw584dk3P6hpQt13/26" target="_blank">
    <i class="fas fa-database me-2"></i> View Live SQL Schema & Queries
  </a>
</div>

## Project Overview

**ACME Simulators** develops interactive training systems for automotive and defense clients.  
Each simulator project requires a custom-built **handbook**, assembled from many modular documents such as *Engine Diagnostics* or *Climate Control*.  
The system we built automates the management of these documents — tracking **versions, approvals, change logs, and configuration rules** — while ensuring that every released handbook reflects the correct product and platform specifications.

The database supports:
- Full version control and document lineage  
- Reviewer approvals and rejection tracking  
- Alerts for locked or pending documents  
- Project-specific assembly of approved content  
- Traceability from edit history to client delivery  

## Entity Relationship Diagram

The database schema was designed using a comprehensive ERD that defines the core entities and their relationships within the ACME Simulators system.

<div class="text-center my-4">
  <img src="/database.png" alt="ACME ERD Diagram" class="img-fluid rounded shadow-lg" style="max-width: 100%; height: auto;">
  <p class="text-muted mt-2"><small><strong>Figure 1:</strong> Entity-Relationship Diagram showing the complete database schema for ACME Simulators</small></p>
</div>

### Key Entities & Relationships:

- **Product & Platform:** Many-to-many relationship supporting multi-platform simulators
- **Document & Version:** One-to-many with full version control and approval tracking  
- **Project & Document:** Many-to-many assembly allowing flexible handbook creation
- **User & Approval:** Tracks reviewer assignments and approval workflows
- **Alert System:** Monitors pending approvals and document status changes

The ERD ensures **3NF normalization** while maintaining efficient query performance for complex document assembly operations.

## Methodology

- **Data Modeling:**  
  Created an **Entity-Relationship Diagram (ERD)** defining key entities (Product, Platform, Document, Version, Approval, Project) and associative relationships for many-to-many linkages (e.g., Project_Document, User_Version).  

- **Schema Design:**  
  Implemented a **3NF relational schema** with referential integrity constraints to prevent version conflicts and ensure data consistency across tables.  

- **Queries & Testing:**  
  Wrote over **20 SQL queries** to support business logic, including:
  - Retrieving the latest approved document version per product  
  - Displaying all rows used in the latest document versions per project  
  - Tracking pending approvals and document alerts  
  - Reporting active projects and their associated configurations  

- **Implementation Environment:**  
  Developed and tested using **MySQL** on [db-fiddle.com](https://www.db-fiddle.com), with sample datasets for 25+ products, platforms, and 500+ records across linked tables.

## Example Queries

| # | Query | Description |
|---|--------|-------------|
| 1 | Latest Approved Documents | Identifies the most recent document version marked as "Approved." |
| 2 | Documents Requiring Edits | Lists documents whose latest versions are pending or rejected. |
| 3 | Rows by Latest Version | Displays all rows included in each document's newest version. |
| 4 | Alerts by User | Shows all document/project alerts assigned to users. |

## Results

Our database solution achieved the following outcomes:

- **End-to-end traceability** between document edits, approvals, and project releases  
- **Efficient assembly** of project-specific handbooks without redundant manual compilation  
- **Improved accuracy** by enforcing version control and approval dependencies  
- **Comprehensive auditability**, ensuring every client release can be traced back to approved versions  

---

> “One source of truth for every simulator project.”  
> The ACME database system streamlines how technical content is versioned, approved, and deployed — turning a complex document process into a reliable, automated pipeline.
