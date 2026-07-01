# 🎓 Student Management System
### Python Flask + MySQL

---

## ✅ Features
- Login / Logout system
- Add, Edit, Delete, Search Students
- Daily Attendance marking (Present/Absent)
- Attendance Report with percentage & progress bar
- Clean, responsive UI

---

## 🛠 Step-by-Step Setup

### Step 1: Install Python
Download from https://python.org (Python 3.8+)

### Step 2: Install Required Packages
Open terminal/cmd in project folder and run:
```
pip install -r requirements.txt
```

### Step 3: Setup MySQL Database
1. Open **MySQL Workbench** or **phpMyAdmin**
2. Open the file `database.sql`
3. Run/Execute the entire file
4. This creates the `student_db` database with sample data

### Step 4: Configure Database Password
Open `app.py` and find this section (around line 12):
```python
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '',   # <-- আপনার MySQL password এখানে দিন
    'database': 'student_db'
}
```

### Step 5: Run the Project
```
python app.py
```

### Step 6: Open in Browser
Go to: **http://127.0.0.1:5000**

---

## 🔑 Default Login
- **Username:** admin
- **Password:** admin123

---

## 📁 Project Structure
```
student_management/
├── app.py                  # Main Flask app
├── database.sql            # Database setup
├── requirements.txt        # Python packages
├── README.md               # This file
├── static/
│   └── style.css           # Stylesheet
└── templates/
    ├── login.html
    ├── dashboard.html
    ├── add_student.html
    ├── student_list.html
    ├── edit_student.html
    ├── attendance.html
    └── attendance_report.html
```

---

## 🗃 Database Tables
| Table | Columns |
|-------|---------|
| users | id, username, password |
| students | id, name, department, semester, email, phone |
| attendance | id, student_id, date, status |

---

## ⚠ Common Issues

**MySQL connection error?**
→ Make sure MySQL Server is running
→ Check password in `app.py` DB_CONFIG

**Module not found?**
→ Run: `pip install flask mysql-connector-python`

**Port already in use?**
→ Change port: `app.run(debug=True, port=5001)`
