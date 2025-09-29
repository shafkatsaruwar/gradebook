# Gradebook Bash Script

## 📌 Overview

This is a command-line gradebook application written in Bash.
It allows you to:

* Add student names and grades
* Automatically assign letter grades (A–F) with feedback
* Save records dynamically to a text file (`dynamicgrades.txt`)
* Search for students by name

The script is designed as a lightweight tool for practice with Bash scripting, file I/O, and interactive menus.

---

## ⚙️ Features

* **Interactive menu system**

  * Add new students with grades
  * Exit gracefully
* **Automatic grade evaluation**

  * Converts numeric grades (0–100) into letter grades (A–F)
  * Displays student-friendly feedback comments
* **Persistent storage**

  * Saves student name and grade in `dynamicgrades.txt`
  * Displays formatted output in table view using `column`
* **Search functionality**

  * Lookup students by name
  * Case-insensitive search for flexibility

---

## 🗂️ Project Structure

```
gradebook.sh          # Main script
dynamicgrades.txt     # Output file storing grades (generated at runtime)
README.md             # Project overview and usage guide
```

---

## 🚀 Getting Started

### Prerequisites

* Bash shell (Linux, macOS, or Git Bash/WSL on Windows)

### Installation

1. Clone or download this repository
2. Make the script executable:

   ```bash
   chmod +x gradebook.sh
   ```

### Usage

Run the script:

```bash
./gradebook.sh
```

You will be prompted to:

* Add a student and grade
* View their calculated letter grade and feedback
* Save results to the gradebook file
* Perform searches on previously entered records

---

## 🧪 Example Workflow

1. Run the script:

   ```bash
   ./gradebook.sh
   ```

2. Add a student:

   ```
   Please enter the name of a student: John Travolta
   Please enter the appropriate grade (0 - 100) for John: 95
   ```

3. Output:

   ```
   Grade for John Travolta: 95
   Letter Grade: A
   * I understand.
   * I can move on.
   * My work is neat and complete.
   * Excellent work!
   ```

4. Search for students(first 3 letters):

   ```
   Enter the name to search --> Joh 
   Search Results:
   Name    Grade
   John Travolta    95
   ```

---

## 🔮 Future Improvements

* Add option to update or delete student records
* Support exporting to CSV/JSON for easier data analysis
* Add GPA/average grade calculation
* Improve error handling for invalid inputs

