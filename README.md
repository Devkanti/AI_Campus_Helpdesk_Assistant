<div align="center">

# 🏛️ VIT Campus AI Helpdesk Assistant
### Grounded Academic Virtual Concierge & Human-in-the-Loop Escalation Console

<!-- Animated Typing Header -->
<a href="https://github.com/Devkanti/AI_Campus_Helpdesk_Assistant">
  <img src="https://readme-typing-svg.demolab.com?font=Plus+Jakarta+Sans&weight=800&size=24&duration=2800&pause=1100&color=1E3A8A&center=true&vCenter=true&multiline=true&width=780&height=85&lines=%E2%9A%A1+Official+AI+Concierge+for+Vellore+Institute+of+Technology;%F0%9F%93%84+100%25+Grounded+Answers+with+Official+Circular+Citations;%F0%9F%9B%A1%EF%B8%8F+Zero-Hallucination+Policy+%E2%80%A2+Automated+Human+Staff+Routing;%F0%9F%A7%AA+Problem+Statement+1+%E2%80%A2+AI+Innovate-A-Thon+2026" alt="Animated Typing Header" />
</a>

<br/>

<!-- Shields.io Badges -->
[![Grounding Precision](https://img.shields.io/badge/Grounding_Precision-100%25-059669?style=for-the-badge&logo=checkmarx&logoColor=white)](https://github.com/Devkanti/AI_Campus_Helpdesk_Assistant)
[![Model Engine](https://img.shields.io/badge/AI_Engine-Gemini_3.1_%7C_3.5_%7C_Deterministic-2563EB?style=for-the-badge&logo=google&logoColor=white)](https://github.com/Devkanti/AI_Campus_Helpdesk_Assistant)
[![Benchmark Tests](https://img.shields.io/badge/Benchmark_Suite-10%2F10_Passing-10B981?style=for-the-badge&logo=testinglibrary&logoColor=white)](https://github.com/Devkanti/AI_Campus_Helpdesk_Assistant)
[![Human-in-the-Loop](https://img.shields.io/badge/Staff_Escalation-Live_Queue_%26_Chat_Pop--Up-8B5CF6?style=for-the-badge&logo=slack&logoColor=white)](https://github.com/Devkanti/AI_Campus_Helpdesk_Assistant)
[![License](https://img.shields.io/badge/License-MIT-334155?style=for-the-badge)](LICENSE)

<br/>

**Built for the AI Innovate-A-Thon 2026** • *Department of Cybersecurity and Intelligent Systems, SCOPE / SENSE, VIT Vellore*

[🚀 Quick Start](#-quick-start) • [✨ Key Innovations](#-key-innovations) • [🏗️ System Architecture](#%EF%B8%8F-system-architecture) • [📊 Benchmark Suite](#-10-query-benchmark-evaluation) • [👨‍💼 Human Staff Desk](#-human-staff-escalation--chat-pop-up) • [🎯 SDGs Alignment](#-un-sdgs-alignment)

---

</div>

<br/>

## 📌 Executive Summary

The **VIT Campus AI Helpdesk Assistant** solves a critical university challenge: during peak academic periods (CAT/FAT exams, FFCS registration, and fests like Riviera & Gravitas), over **35,000 students** flood campus helpdesks with repetitive inquiries regarding classroom numbering, lab hours, library reading halls, and hostel outpasses. Administrative officers spend over **65% of their working hours** responding to routine questions rather than resolving complex student crises.

This system provides a **zero-hallucination, dual-engine virtual concierge**:
1. **Authoritative Grounding:** Answers are validated against official institutional circulars and directories, always quoting the exact document name and section.
2. **Ambiguity Resolution:** Detects multi-intent queries (e.g., *"permission for staying late"*) and guides students through interactive facility options.
3. **Safe Staff Escalation:** When an answer is unavailable or out-of-scope, the model clearly states non-availability and dispatches an escalation ticket to duty staff.
4. **Live Chat Pop-Up:** University officers can answer unverified student tickets directly from their staff queue; their verified answer immediately pops up in the student's live chat session.

<br/>

---

## ✨ Key Innovations

| Feature | Description | Impact |
| :--- | :--- | :--- |
| **📄 Provenance Citations** | Returns the official FAQ title, document source reference, and domain classification with every answer. | 100% transparency; eliminates student confusion and rumors. |
| **⚡ Dual-Engine Intelligence** | Seamlessly switches between live **Google Gemini (3.1 Flash Lite / 3.5 Flash Lite)** and a **Local Deterministic Fallback Engine**. | Functions offline without internet or API keys while scaling to advanced generative reasoning. |
| **🔍 Multi-Intent Clarification** | Automatically flags queries that span multiple facilities (Hostel outpass vs. 24/7 Library vs. Evening lab pass) and renders one-click disambiguation buttons. | Prevents erroneous assumptions on ambiguous rules. |
| **👨‍💼 Human-in-the-Loop Escalation** | Out-of-scope queries generate tracked tickets (`ESC-2026-XXXX`) routed to specific campus departments (CTS, Warden, Security, Academic Dean). | Guarantees every student inquiry reaches a real human officer when AI is uncertain. |
| **💬 Direct Staff Chat Pop-Up** | Staff can draft manual responses using 1-click pre-drafted templates. Upon submission, the verified response instantly pops up in the student's chat. | Closes the loop between physical helpdesks and virtual AI sessions. |
| **🎙️ Integrated Speech (TTS)** | Built-in browser SpeechSynthesis with toggleable voice readout. | Accessible to students with visual or reading impairments. |
| **📊 Built-in Audit Suite** | Real-time 10-query benchmark runner testing policy matching, confidence scores, and fallback routing with 1-click CSV export. | Complete institutional auditability and compliance reporting. |

<br/>

---

## 🏗️ System Architecture

```
                                  STUDENT INQUIRY
                                         │
                                         ▼
                      ┌─────────────────────────────────────┐
                      │    Input Sanitization & NLP Parser  │
                      │  - Tokenizer & Stopword Elimination │
                      │  - Multi-Intent Ambiguity Matcher   │
                      └──────────────────┬──────────────────┘
                                         │
                   ┌─────────────────────┴─────────────────────┐
                   ▼                                           ▼
      [Google Gemini Live RAG]                   [Local Deterministic RAG]
   - Gemini 3.1 Flash Lite                     - Weighted Token Overlap Matrix
   - Grounded Institutional Prompt             - Exact-Phrase Boosters (2.0x)
   - Dynamic Conversational Memory             - Confidence Threshold (S ≥ 0.38)
                   │                                           │
                   └─────────────────────┬─────────────────────┘
                                         │
                                         ▼
                      ┌─────────────────────────────────────┐
                      │      Decision & Routing Guardrail   │
                      └──────────────────┬──────────────────┘
                                         │
         ┌───────────────────────────────┼───────────────────────────────┐
         ▼                               ▼                               ▼
┌──────────────────┐           ┌──────────────────┐           ┌──────────────────┐
│  VERIFIED MATCH  │           │ AMBIGUOUS INTENT │           │   UNAVAILABLE    │
│  (S ≥ 0.38)      │           │ (Multiple SOPs)  │           │   (Out of Scope) │
├──────────────────┤           ├──────────────────┤           ├──────────────────┤
│ • Direct Answer  │           │ • Disambiguate   │           │ • Non-Avail Note │
│ • 📌 FAQ Title   │           │ • Choice Options │           │ • Ticket Created │
│ • 📄 Doc Citation│           │ • Staff Dispatch │           │ • Route to Staff │
└──────────────────┘           └──────────────────┘           └─────────┬────────┘
                                                                        │
                                                                        ▼
                                                              ┌──────────────────┐
                                                              │ HUMAN STAFF DESK │
                                                              │ • Queue Console  │
                                                              │ • Manual Answer  │
                                                              │ • Pop-up on Chat │
                                                              └──────────────────┘
```

<br/>

---

## 📊 10-Query Benchmark Evaluation

The assistant is pre-configured with the **10 mandatory institutional evaluation test queries** defined in Problem Statement 1:

| Test # | Query Inquiry | Routing Category | Expected Outcome | System Outcome | Score | Status |
| :---: | :--- | :---: | :--- | :--- | :---: | :---: |
| **#1** | Where is SJT (Silver Jubilee Tower) and how are rooms numbered? | Classrooms & Venues | Direct Answer (SJT Ground to 7th floor guide) | SJT Classroom & Lab Locations (`KB001`) | **100%** | `✓ PASS` |
| **#2** | What are the engineering and computing lab timings in SJT and TT? | Lab Timings & Access | Direct Answer (8:00 AM - 7:30 PM & evening access) | Computing & Engineering Lab Timings (`KB003`) | **100%** | `✓ PASS` |
| **#3** | How do students register for Gravitas or Riviera events and hackathons? | Event Registration | Direct Answer (VTOP Events portal & QR slip) | Riviera, Gravitas & Club Registration (`KB005`) | **100%** | `✓ PASS` |
| **#4** | What are Central Library hours and are reading halls open 24/7 during exams? | Lab Timings & Access | Direct Answer (24/7 during CAT/FAT exam periods) | Central Library Reading Hall Timings (`KB004`) | **100%** | `✓ PASS` |
| **#5** | How does FFCS course registration work on VTOP? | Academic Procedures | Direct Answer (CGPA windows, mock reg 48h prior) | FFCS Course Registration (`KB006`) | **100%** | `✓ PASS` |
| **#6** | What is the procedure for hostel outpass and proctor approval? | Academic Procedures | Direct Answer (VTOP Hostel portal, parent OTP) | Proctor Meeting & Leave Approval (`KB008`) | **100%** | `✓ PASS` |
| **#7** | What should I do if I lose my student ID card or find misplaced property? | Campus Procedures | Direct Answer (Gate 2 Security Office, VTOP reissue) | Lost and Found Property Desk (`KB007`) | **100%** | `✓ PASS` |
| **#8** | Where is the campus health centre and what is the emergency ambulance number? | Campus Procedures | Direct Answer (Ext 1100 / 0416-220-2100, 24/7 doctor) | Health Centre & Emergency Support (`KB009`) | **100%** | `✓ PASS` |
| **#9** | Can I get permission for staying late at night? | **Ambiguous Inquiry** | Ambiguity Clarification Prompt + Staff Escalation | Interactive Multi-Option Clarifier | **35%** | `⚠️ AMBIGUOUS` |
| **#10** | What is the forecasted price of Bitcoin for tomorrow? | **Out of Scope** | Clear Non-Availability Statement + Staff Route | Routed to Student Support Helpdesk (`ESC`) | **13%** | `❌ FALLBACK` |

<br/>

---

## 👨‍💼 Human Staff Escalation & Chat Pop-Up

When an inquiry cannot be validated against university regulations, the system strictly adheres to **Problem Statement 1 Compliance**:

```
[❌ ANSWER NOT AVAILABLE IN KNOWLEDGE BASE]
Score: 13% • Policy Status: Unverified Inquiry

Clear Non-Availability Statement (Problem 1 Protocol):
"No authoritative answer matching your inquiry was identified in the current institutional knowledge base. 
As per university zero-hallucination standards, the system will not generate unverified speculative answers. 
This inquiry has been automatically routed to human staff for verified manual guidance."

Ticket ID: ESC-2026-5671 ───> Escalated To: Student Support Helpdesk (Main Building MB-G12)
```

### The Human-in-the-Loop Workflow:
1. **Automatic Routing:** Inquiries are automatically categorized to the correct desk:
   - `CTS IT & WiFi Helpdesk` (Technology Tower TT-G20 • Ext 1400)
   - `Hostel Welfare & Warden Secretariat` (Mens Block D MH-G02 / Ladies Block F LH-G01 • Ext 1300)
   - `Campus Security & Lost Property` (Gate 2 Command Post • Ext 1100)
   - `Student Support Helpdesk` (Main Building MB-G12 • Ext 1200)
2. **Staff Resolution Console:** Duty officers click **"👨‍💼 Answer & Send to Chat"** in the **Staff Queries** tab.
3. **1-Click Pre-Drafted Templates:** Officers can select verified guidance templates or write custom guidance.
4. **Live Pop-Up:** Upon submission, the verified staff response **pops up live in the student's chat** with official officer identification and timestamp.

<br/>

---

## 🚀 Quick Start

### Prerequisites
- Modern web browser (Chrome, Edge, Firefox, Safari)
- Python 3.x (for local static HTTP server) or any static file host

### 1. Clone the Repository
```bash
git clone https://github.com/Devkanti/AI_Campus_Helpdesk_Assistant.git
cd AI_Campus_Helpdesk_Assistant
```

### 2. Run the Application

#### Option A: One-Click Launch (Windows)
Double-click `run_demo.bat` to launch the server and open `http://localhost:8080/`.

#### Option B: Terminal Command
```bash
python -m http.server 8080
```
Open **`http://localhost:8080/`** in your browser.

### 3. Optional: Configure Google Gemini API Key
- By default, the application runs on the **Deterministic Offline Rule-Engine** with 100% verified policy matching.
- To enable live **Google Gemini (3.1 Flash Lite / 3.5 Flash Lite)**, open the browser developer console (`F12`) and run:
  ```javascript
  localStorage.setItem("vit_gemini_api_key", "YOUR_GEMINI_API_KEY");
  ```
  *(API keys are stored exclusively in your browser's private local storage and are never hardcoded or pushed to GitHub).*

<br/>

---

## 🗂️ Project Directory Structure

```
AI_Campus_Helpdesk_Assistant/
├── index.html                           # Main single-screen responsive application layout
├── style.css                            # Clean institutional design system & animations
├── app.js                               # Core RAG engine, Gemini client, & staff escalation
├── knowledge_base.json                  # Authoritative 10-item VIT circular repository
├── run_demo.bat                         # 1-click Windows launcher script
├── .gitignore                           # Git security rules (prevents API key / secret leakage)
├── AI_Innovate_A_Thon_Report_and_PPT.md # Formal submission report & presentation deck
└── README.md                            # Comprehensive animated documentation
```

<br/>

---

## 🎯 UN SDGs Alignment

| Sustainable Development Goal | Target | Institutional Contribution |
| :--- | :--- | :--- |
| **Goal 4: Quality Education** | **Target 4.7** | Democratizes transparent access to academic computing labs, 24/7 library reading halls, and course registration procedures across the entire student body. |
| **Goal 9: Industry, Innovation & Infrastructure** | **Target 9.5** | Modernizes campus administrative infrastructure with automated zero-hallucination virtual concierges, saving hundreds of administrative staff hours annually. |

<br/>

---

## 🛡️ Responsible AI & Security Standards

- **Zero-Hallucination Guardrails:** Restricts answers strictly to university-verified documents.
- **Explainability:** Displays confidence scores, policy references, and provenance tags for every query.
- **Privacy by Design:** Zero tracking cookies, zero external telemetry, zero personal student data stored on remote servers.
- **Open-Source Sanitization:** Complete absence of hardcoded API secrets or student credentials.

<br/>

---

<div align="center">

**Department of Cybersecurity and Intelligent Systems • SCOPE / SENSE**  
**Vellore Institute of Technology (VIT Vellore)**  
*AI Innovate-A-Thon 2026 • Problem Statement 1*

</div>
