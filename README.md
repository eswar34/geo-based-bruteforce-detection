# Geo-Based Brute-Force Detection (SOC | Bash)

## 📌 Overview
This project simulates a **Security Operations Center (SOC)** detection scenario
focused on identifying **repeated failed authentication attempts originating from
suspicious geographic locations**.

Attackers often perform brute-force attacks from high-risk or non-trusted countries.
This script correlates failed login attempts with country metadata to flag suspicious
source IP addresses.

---

## 🔍 Detection Use Case
- Detects repeated failed logins
- Enriches authentication events with country information
- Flags activity from non-trusted geographic regions
- Mimics real SOC enrichment-driven alerts

---

## 📂 Input File

### `auth.log`
Example format:
Failed password for root from 203.0.113.10 CN
Failed password for admin from 203.0.113.10 CN
Failed password for user from 203.0.113.10 CN
Failed password for root from 198.51.100.25 RU

yaml
Copy code

---

## ⚙️ Detection Logic
1. Extract source IP addresses and country codes from failed login events
2. For each unique IP:
   - Count the number of failed login attempts
   - Identify the associated country
3. Flag IPs that:
   - Originate from non-trusted countries
   - Exceed a defined failure threshold

---

## ▶️ Usage

Make the script executable:
```bash
chmod +x geo_failed_login_detection.sh
Run the script:

bash
Copy code
./geo_failed_login_detection.sh
🧰 Tools Used
bash

grep

awk

sort

uniq

wc

🛡️ SOC Relevance
This project demonstrates:

Geo-based threat detection

Authentication log analysis

Event enrichment concepts

Brute-force attack identification

SOC Tier-1 / Tier-2 analysis skills

🚨 Disclaimer
This project is for educational and defensive security purposes only.
All logs, IP addresses, and country codes are simulated.
# geo-based-bruteforce-detection
