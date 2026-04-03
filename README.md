# Komodo Hub — Digital Conservation Platform

**Student Name:** Arman Gandham  
**Student ID:** 15611886  
**Module:** 5005CMD Software Engineering

---

## 1. Project Overview

Komodo Hub is a digital platform designed for Yayasan Komodo to help communities and schools protect endangered species. It features a privacy-first architecture that protects student identities and uses AES-256 encryption to hide precise GPS sighting data from poachers.

---

## 2. Access Credentials (RBAC Testing)

| User Role | Username / Email | Password |
|---|---|---|
| System Admin | `admin@komodohub.org` | `AdminPass123!` |
| Teacher | `teacher@ujungraya.edu` | `TeacherPass123!` |
| Student | `UJNG-0001` (Access Code) | `StudentPass123!` |

---

## 3. How to Run Locally

**1. Prerequisites**

Ensure Node.js and PostgreSQL are installed.

**2. Clone the repository**
```bash
git clone https://github.com/gxndhm/Komodo.git
```

**3. Database setup**

- Open your PostgreSQL terminal or pgAdmin.
- Create a database named `komodo_hub`.
- Run the SQL script to create tables and constraints:
```bash
psql -d komodo_hub -f Database/schema.sql
```

**4. Install dependencies**
```bash
npm install
```

**5. Start the app**
```bash
npm start
```

**6. Access**

Open `http://localhost:3000` in your browser.
