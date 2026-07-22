```
╔═════���════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║                    🖥️  OSV-SCRIPTS: OPERATING SYSTEMS LAB  🚀               ║
║                                                                              ║
║                  Master OS Concepts Through Shell Scripting                  ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

<div align="center">

[![Bash][badge-bash]][bash-url]
[![Shell Script][badge-shell]][shell-url]
[![Scripts Count][badge-count]](#-script-categories)
[![License MIT][badge-license]][license-url]
[![Last Updated][badge-date]](#)
[![Stars][badge-stars]][stars-url]

[badge-bash]: https://img.shields.io/badge/Bash-5.1+-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white
[badge-shell]: https://img.shields.io/badge/Shell%20Script-14%20Scripts-4EAA25?style=for-the-badge&logo=linux&logoColor=white
[badge-count]: https://img.shields.io/badge/Coverage-14%20Scripts-FF6B6B?style=for-the-badge
[badge-license]: https://img.shields.io/badge/License-MIT-FFD700?style=for-the-badge
[badge-date]: https://img.shields.io/badge/Updated-2024-61AFFE?style=for-the-badge
[badge-stars]: https://img.shields.io/badge/Star-If%20Helpful-FFD700?style=for-the-badge

[bash-url]: https://www.gnu.org/software/bash/
[shell-url]: https://en.wikipedia.org/wiki/Shell_script
[license-url]: LICENSE
[stars-url]: https://github.com/dareddyhemanthkumarreddy/OSV-Scripts

---

### 🎯 **Comprehensive Shell Script Practicals for Operating Systems**

> A hands-on collection of 14 bash scripts covering **CPU Scheduling**, **Memory Management**, **Process Synchronization**, **File Systems**, and more.
>
> Perfect for **OS lab practicals**, **exam preparation**, and **viva voce** practice! 📚

---

</div>

<br>

## 📑 Quick Navigation

```
┌─ 🟢 BASICS (Level 1)
│  ├─ hello.sh
│  ├─ pra1a.sh  
│  └─ pra1b.sh
│
├─ 🟡 INTERMEDIATE (Level 2-3)
│  ├─ Arithmetic & Conditionals (pra2a-3c)
│  ├─ Loops & Arrays (pra4a-5c)
│  └─ Algorithms (pra6a-7b)
│
└─ 🔴 ADVANCED (Level 4-5)
   ├─ CPU Scheduling (pra8.sh)
   ├─ Synchronization (pra9-10.sh)
   ├─ Memory (pra11-12.sh)
   ├─ File Systems (pra13.sh)
   └─ Disk Scheduling (pra14.sh)
```

---

## ⚡ Quick Start

### 1️⃣ Clone Repository
```bash
git clone https://github.com/dareddyhemanthkumarreddy/OSV-Scripts.git
cd OSV-Scripts
```

### 2️⃣ Make Scripts Executable
```bash
chmod +x *.sh
```

### 3️⃣ Run Your First Script
```bash
./hello.sh
# Output: Hello, Bash!
```

---

## 📊 Curriculum Overview

| Level | Topics | Scripts | Difficulty | Prerequisites |
|-------|--------|---------|-----------|---|
| 🟢 **1** | I/O, Variables | hello, pra1a, pra1b | Easy | None |
| 🟡 **2** | Arithmetic, Conditionals | pra2a-pra3c | Medium | Level 1 |
| 🟡 **3** | Loops, Arrays, File Ops | pra4a-pra7b | Medium | Level 2 |
| 🔴 **4** | CPU Scheduling, Sync | pra8-pra10 | Advanced | Level 3 |
| 🔴 **5** | Memory, FS, Disk | pra11-pra14 | Advanced | Level 4 |

---

## 🔧 Script Categories & Details

### 🟢 **LEVEL 1: Foundations**

---

<details open>
<summary><b>📄 hello.sh ─ Your First Bash Script</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Learn shebang and basic output to the screen |
| **📥 How to Run** | `./hello.sh` |
| **📤 Expected Output** | `Hello, Bash!` |
| **🔑 Key Concept** | The shebang (`#!/bin/bash`) tells OS which interpreter to use |

**📝 Code:**
```bash
#!/bin/bash
echo "Hello, Bash!"
```

**💡 Viva Tip:** Explain why shebang is essential and how `chmod +x` makes scripts executable.

</div>

</details>

---

<details>
<summary><b>📄 pra1a.sh ─ Simple Echo</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Practice basic text output to console |
| **📥 How to Run** | `./pra1a.sh` |
| **📤 Expected Output** | `Welcome to Marwadi University` |
| **🔑 Key Concept** | The `echo` command prints text to stdout |

**💡 Viva Tip:** Discuss newline behavior and how to suppress it with `-n` flag.

</div>

</details>

---

<details>
<summary><b>📄 pra1b.sh ─ Interactive Student Details</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Capture user input and display formatted information |
| **📥 How to Run** | `./pra1b.sh` |
| **📤 Input Required** | Name, Roll, Class, Branch, Batch, City, CGPA (for 2 students) |
| **📤 Expected Output** | Formatted details for both students |
| **🔑 Key Concepts** | `read` command, variable substitution, string formatting |

**📝 What You'll Learn:**
- 📝 Capture user input with `read varname`
- 🔄 Store data in variables with `$varname`
- 📋 Format and display stored information

**💡 Viva Tip:** Discuss input validation and how to handle invalid entries gracefully.

</div>

</details>

---

### 🟡 **LEVEL 2: Arithmetic & Conditionals**

---

<details>
<summary><b>📄 pra2a.sh ─ Arithmetic Operations</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Perform basic math operations on two numbers |
| **📥 How to Run** | `./pra2a.sh` |
| **📥 Input Required** | Two integers (a and b) |
| **📤 Expected Output** | Sum, Difference, Product, Quotient |
| **🔑 Key Concept** | Arithmetic expansion using `$(( expression ))` |

**📝 Math Formulas Used:**
```
sum     = a + b
diff    = a - b
product = a * b
quotient = a / b   (integer division)
```

**💡 Viva Tip:** Explain that integer division truncates. For decimals, use `bc` command.

</div>

</details>

---

<details>
<summary><b>📄 pra2b.sh ─ Compare Two Numbers</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Compare two numbers and determine which is larger |
| **📥 How to Run** | `./pra2b.sh` |
| **📥 Input Required** | Two integers (a and b) |
| **📤 Expected Output** | Which number is greater or if they're equal |
| **🔑 Key Concept** | Numeric comparison operators: `-ge`, `-gt`, `-lt`, `-le`, `-eq` |

**📝 Comparison Operators:**
| Operator | Meaning | Example |
|----------|---------|---------|
| `-ge` | Greater or Equal (≥) | `[ $x -ge 5 ]` |
| `-gt` | Greater Than (>) | `[ $x -gt 5 ]` |
| `-lt` | Less Than (<) | `[ $x -lt 5 ]` |
| `-le` | Less or Equal (≤) | `[ $x -le 5 ]` |
| `-eq` | Equal (==) | `[ $x -eq 5 ]` |
| `-ne` | Not Equal (!=) | `[ $x -ne 5 ]` |

**💡 Viva Tip:** Explain the difference between `-ge` (>=) and `-gt` (>).

</div>

</details>

---

<details>
<summary><b>📄 pra2c.sh ─ Max & Min of Three Numbers</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Find the largest and smallest among three integers |
| **📥 How to Run** | `./pra2c.sh` |
| **📥 Input Required** | Three integers (a, b, c) |
| **📤 Expected Output** | Largest number and Smallest number |
| **🔑 Key Concept** | Chained conditional comparisons using `&&` operator |

**💡 Viva Tip:** You can also solve this using arrays and sorting functions!

</div>

</details>

---

<details>
<summary><b>📄 pra3a.sh ─ Simple Interest Calculator</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Calculate simple interest using the standard formula |
| **📥 How to Run** | `./pra3a.sh` |
| **📥 Input Required** | Principal (P), Rate (R), Time (T) |
| **📤 Expected Output** | Simple Interest value |
| **🔑 Key Concept** | Applying real-world mathematical formulas in scripts |

**📝 Formula Used:**
```
SI = (P × R × T) / 100

Example:
P = 1000, R = 5%, T = 2 years
SI = (1000 × 5 × 2) / 100 = 100
```

**💡 Viva Tip:** Mention precision loss with integer division.

</div>

</details>

---

<details>
<summary><b>📄 pra3b.sh ─ Check Sign (Positive/Negative/Zero)</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Determine if a number is positive, negative, or zero |
| **📥 How to Run** | `./pra3b.sh` |
| **📥 Input Required** | One integer |
| **📤 Expected Output** | "Positive", "Negative", or "Zero" |
| **🔑 Key Concept** | Conditional branching with `if-elif-else` |

**📝 Logic Flow:**
```
Input → Is it > 0? → Yes → Print "Positive"
        ↓
        Is it < 0? → Yes → Print "Negative"
        ↓
        Otherwise → Print "Zero"
```

**💡 Viva Tip:** Handle edge cases like negative zero.

</div>

</details>

---

<details>
<summary><b>📄 pra3c.sh ─ Marksheet & Grade Classification</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Calculate total/percentage and assign student grade |
| **📥 How to Run** | `./pra3c.sh` |
| **📥 Input Required** | Marks in Mathematics, Physics, Chemistry |
| **📤 Expected Output** | Total, Percentage, Class (Grade) |
| **🔑 Key Concept** | Threshold-based classification logic |

**📝 Grading System:**
```
Percentage Range    →    Grade
≥ 75%              →    Distinction ⭐⭐⭐
60% - 74%          →    First        ⭐⭐
50% - 59%          →    Second       ⭐
40% - 49%          →    Pass         ✓
< 40%              →    Fail         ✗
```

**💡 Viva Tip:** Explain why checking highest threshold first matters!

</div>

</details>

---

### 🟡 **LEVEL 3: Loops, Arrays & Algorithms**

---

<details>
<summary><b>📄 pra4a.sh ─ Menu-Driven File Operations</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Perform file operations through interactive menu |
| **📥 How to Run** | `./pra4a.sh` |
| **📋 Menu Options** | 1. Copy File  2. Remove File  3. Exit |
| **🔑 Key Concepts** | `case` statement, exit status checking, `cp`, `rm` commands |

**📝 What You'll Learn:**
- 📋 Using `case` for menu selection
- ✅ Checking exit status with `$?`
- 📁 File operations (`cp`, `rm`)

**💡 Viva Tip:** Discuss safe removal with `rm -i` (interactive mode).

</div>

</details>

---

<details>
<summary><b>📄 pra4c.sh & pra4c2.sh ─ Calculator (Menu-Driven)</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Build a simple arithmetic calculator with menu |
| **📥 How to Run** | `./pra4c.sh` or `./pra4c2.sh` |
| **📋 Operations** | Addition (+), Subtraction (-), Multiplication (×), Division (÷) |
| **🔑 Key Concepts** | `case` statement, error handling, division by zero check |

**📝 Key Learning Points:**
- 🔢 Perform arithmetic operations
- ⚠️ Validate division (prevent crash by zero)
- 🔄 Loop for multiple calculations

**💡 Viva Tip:** Why guard division operations? (To avoid runtime errors and crashes!)

</div>

</details>

---

<details>
<summary><b>📄 pra4d.sh ─ Array Iteration</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Declare an array and iterate through all elements |
| **📥 How to Run** | `./pra4d.sh` |
| **📤 Expected Output** | Days of the week, each on a new line |
| **🔑 Key Concepts** | Array declaration, `for` loop iteration |

**📝 Array Syntax Cheat Sheet:**
```bash
# Declare array
days=("Monday" "Tuesday" "Wednesday" ... "Sunday")

# Loop through array
for day in "${days[@]}"; do
    echo "$day"
done

# Access individual elements
${days[0]}          # First element (Monday)
${days[@]}          # All elements
${#days[@]}         # Array length
```

**💡 Viva Tip:** Difference between `${array[@]}` and `${array[*]}`.

</div>

</details>

---

<details>
<summary><b>📄 pra5a.sh ─ Factorial (For Loop)</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Calculate factorial using iterative approach |
| **📥 How to Run** | `./pra5a.sh` |
| **📥 Input Required** | Positive integer n |
| **📤 Expected Output** | n! (factorial value) |
| **🔑 Key Concept** | Loop accumulation pattern |

**📝 Factorial Formula:**
```
n! = n × (n-1) × (n-2) × ... × 2 × 1

Examples:
5! = 5 × 4 × 3 × 2 × 1 = 120
4! = 4 × 3 × 2 × 1 = 24
3! = 3 × 2 × 1 = 6
```

**💡 Viva Tip:** Discuss factorial overflow for large n and recursive alternatives.

</div>

</details>

---

<details>
<summary><b>📄 pra5b.sh ─ Print Numbers 1 to N</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Print all numbers from 1 to N sequentially |
| **📥 How to Run** | `./pra5b.sh` |
| **📥 Input Required** | Integer N |
| **📤 Expected Output** | Numbers 1, 2, 3, ..., N (each on new line) |
| **🔑 Key Concept** | C-style `for` loop: `for ((i=1; i<=n; i++))` |

**💡 Viva Tip:** Compare different loop approaches: `for`, `while`, `seq` command.

</div>

</details>

---

<details>
<summary><b>📄 pra5c.sh ─ Even/Odd Detection</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Label numbers 1 to N as Even or Odd |
| **📥 How to Run** | `./pra5c.sh` |
| **📥 Input Required** | Integer N |
| **📤 Expected Output** | "Even: 2", "Odd: 3", "Even: 4", etc. |
| **🔑 Key Concepts** | Modulo operator (`%`), `while` loop |

**📝 Logic:**
```bash
# Check if even or odd
if [ $((number % 2)) -eq 0 ]; then
    echo "Even: $number"
else
    echo "Odd: $number"
fi
```

**💡 Viva Tip:** Explain modulo operator and increment operators `((i++))`.

</div>

</details>

---

<details>
<summary><b>📄 pra6a.sh ─ Reverse a Number</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Reverse the digits of an integer |
| **📥 How to Run** | `./pra6a.sh` |
| **📥 Input Required** | Non-negative integer |
| **📤 Expected Output** | Number with digits reversed |
| **🔑 Key Concepts** | Modulo (`%`) and division (`/`) operators |

**📝 Algorithm Step-by-Step:**
```
Original Number: 12345

Extract digits from right:
12345 % 10 = 5  (last digit)  →  rev = 5
1234 % 10 = 4   (next digit)  →  rev = 54
123 % 10 = 3    (next digit)  →  rev = 543
12 % 10 = 2     (next digit)  →  rev = 5432
1 % 10 = 1      (first digit) →  rev = 54321

Result: 54321 ✓
```

**💡 Viva Tip:** How would you handle negative numbers?

</div>

</details>

---

<details>
<summary><b>📄 pra6b.sh ─ Prime Number Check</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Determine if a number is prime or not |
| **📥 How to Run** | `./pra6b.sh` |
| **📥 Input Required** | Integer N |
| **📤 Expected Output** | "Prime" or "Not Prime" |
| **🔑 Key Concept** | Trial division algorithm |

**📝 Prime Check Logic:**
```
Prime numbers are only divisible by 1 and themselves

Algorithm:
1. If N ≤ 1 → Not Prime
2. Check divisibility from 2 to N/2
3. If any divisor found → Not Prime
4. If no divisor found → Prime

Examples:
Prime:     2, 3, 5, 7, 11, 13, 17, 19, 23, 29...
Not Prime: 4, 6, 8, 9, 10, 12, 14, 15, 16, 18...
```

**💡 Viva Tip:** Discuss optimization: Can reduce check to √N instead of N/2.

</div>

</details>

---

<details>
<summary><b>📄 pra6c.sh ─ Palindrome Check</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Check if a number reads same forwards and backwards |
| **📥 How to Run** | `./pra6c.sh` |
| **📥 Input Required** | Integer N |
| **📤 Expected Output** | "Palindrome" or "Not Palindrome" |
| **🔑 Key Concept** | Compare reversed number with original |

**📝 Palindrome Examples:**
```
Palindrome Numbers:
121         (reads same: 1-2-1)
1331        (reads same: 1-3-3-1)
12321       (reads same: 1-2-3-2-1)
9009        (reads same: 9-0-0-9)

Not Palindrome:
123         (reversed: 321)
1234        (reversed: 4321)
54321       (reversed: 12345)
```

**💡 Viva Tip:** Leading zeros are lost in integer representation.

</div>

</details>

---

<details>
<summary><b>📄 pra7a.sh ─ Fibonacci Series</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Generate and print first N Fibonacci numbers |
| **📥 How to Run** | `./pra7a.sh` |
| **📥 Input Required** | Integer N |
| **📤 Expected Output** | First N Fibonacci numbers on one line |
| **🔑 Key Concept** | Iterative sequence generation |

**📝 Fibonacci Sequence:**
```
Pattern: Each number = sum of previous two

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89...
    │
    ├─ 0 + 1 = 1
    ├─ 1 + 1 = 2
    ├─ 1 + 2 = 3
    ├─ 2 + 3 = 5
    └─ 3 + 5 = 8
```

**💡 Viva Tip:** Compare iterative vs recursive vs memoized approaches.

</div>

</details>

---

<details>
<summary><b>📄 pra7b.sh ─ Toggle Case (Using AWK)</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Swap uppercase to lowercase and vice versa |
| **📥 How to Run** | `./pra7b.sh` |
| **📥 Input Required** | Any string (e.g., "Hello World") |
| **📤 Expected Output** | String with swapped cases (e.g., "hELLO wORLD") |
| **🔑 Key Concept** | Character-by-character processing using AWK |

**📝 Alternative One-Liner:**
```bash
echo "Hello World" | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
```

**💡 Viva Tip:** Compare different tools: `tr`, `sed`, `awk` for string manipulation.

</div>

</details>

---

### 🔴 **LEVEL 4: CPU Scheduling & Synchronization**

---

<details>
<summary><b>📄 pra8.sh ─ CPU Scheduling: FCFS vs SJF</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Compare two CPU scheduling algorithms |
| **📥 Algorithms** | FCFS (First-Come-First-Served), SJF (Shortest Job First) |
| **📊 Metrics** | Waiting Time (WT), Turnaround Time (TAT) |
| **🔑 Key Concepts** | Process scheduling, time calculations |

**📝 Key Definitions:**
- **Burst Time (BT):** How long a process takes to execute
- **Arrival Time (AT):** When a process arrives
- **Completion Time (CT):** When a process finishes
- **Waiting Time (WT):** CT − AT − BT
- **Turnaround Time (TAT):** CT − AT

**📊 Algorithm Comparison:**
| Feature | FCFS | SJF |
|---------|------|-----|
| **Order** | Arrival sequence | Shortest burst first |
| **Avg Wait Time** | Higher ⚠️ | Lower ✓ |
| **Fairness** | Fair | Unfair (long jobs starve) |

**💡 Viva Tips:**
- FCFS suffers from **convoy effect**
- SJF gives optimal average wait time
- Real systems use preemptive variants

</div>

</details>

---

<details>
<summary><b>📄 pra9.sh ─ Producer-Consumer Problem</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Simulate producer-consumer synchronization |
| **🔑 Problem** | Shared buffer between producer and consumer |
| **💡 Solution** | Semaphores (mutex, empty, full) |
| **🔑 Key Concept** | Synchronization & mutual exclusion |

**📝 Semaphore States:**
- **mutex = 1:** Binary semaphore (only 1 process in critical section)
- **empty = n:** Counts available empty slots in buffer
- **full = 0:** Counts filled slots (starts empty)

**📝 Logic Flow:**
```
Producer:                Consumer:
Wait(empty)      ←→     Wait(full)
Wait(mutex)      ←→     Wait(mutex)
Produce item     ←→     Consume item
Signal(mutex)    ←→     Signal(mutex)
Signal(full)     ←→     Signal(empty)
```

⚠️ **Important:** This script simulates only; real systems use kernel semaphores.

**💡 Viva Tips:**
- Explain race conditions and critical sections
- Mention solutions: locks, semaphores, monitors
- Compare busy-waiting vs proper synchronization

</div>

</details>

---

<details>
<summary><b>📄 pra10.sh ─ Dining Philosophers Problem</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Simulate the classic deadlock scenario |
| **🔑 Problem** | 5 philosophers, 5 forks (deadlock potential) |
| **💡 Concepts** | Resource allocation, deadlock detection |

**📝 The Problem:**
```
5 philosophers sitting at a circular table
Each needs 2 forks to eat
5 forks available (one between each pair)

If all pick left fork simultaneously:
Everyone waits for right fork → DEADLOCK 💥
```

**📝 Deadlock Conditions (all 4 required):**
1. **Mutual Exclusion:** Only one can use a fork
2. **Hold & Wait:** Holding fork while waiting for another
3. **No Preemption:** Can't forcibly take a fork
4. **Circular Wait:** Circular chain of processes waiting

**📝 Prevention Solutions:**
| Solution | Method | Trade-off |
|----------|--------|-----------|
| **Hierarchy** | Always pick lower fork first | Order dependency |
| **Asymmetry** | One philosopher picks right first | Asymmetric |
| **Waiter** | Central controller limits access | Central point of failure |
| **Semaphores** | Protect fork state | Complexity |

**💡 Viva Tips:**
- Discuss all 4 deadlock conditions
- Explain starvation vs deadlock
- Compare prevention vs avoidance vs detection

</div>

</details>

---

### 🔴 **LEVEL 5: Memory, File Systems & Disk**

---

<details>
<summary><b>📄 pra11.sh ─ Memory Allocation Algorithms</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Compare memory allocation strategies |
| **📋 Algorithms** | First Fit, Best Fit, Worst Fit |
| **🎯 Goal** | Minimize fragmentation and wasted space |
| **🔑 Key Concept** | Memory management optimization |

**📝 Allocation Strategies:**
| Strategy | Logic | Speed | Fragmentation |
|----------|-------|-------|---|
| **First Fit** | 1st block large enough | Fast ✓ | Moderate |
| **Best Fit** | Smallest block that fits | Slow | Minimal ✓ |
| **Worst Fit** | Largest available block | Medium | Spread waste |

**📝 Fragmentation Types:**
- **Internal:** Wasted space inside allocated block
- **External:** Wasted space between allocated blocks

**💡 Viva Tips:**
- First Fit: Best balance of speed & efficiency
- Best Fit: Minimal waste but slower
- Worst Fit: Doesn't perform better in practice

</div>

</details>

---

<details>
<summary><b>📄 pra12.sh ─ Page Replacement Algorithms</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Minimize page faults in virtual memory |
| **📋 Algorithms** | FIFO, LRU |
| **📊 Metric** | Page Fault Count |
| **🔑 Key Concept** | Virtual memory optimization |

**📝 Key Terms:**
- **Page:** Fixed-size memory unit (usually 4KB)
- **Frame:** Physical memory slot
- **Page Fault:** Reference to page not in memory (slow!)
- **Replacement:** Which page to evict when memory full?

**📝 Algorithm Comparison:**
| Feature | FIFO | LRU |
|---------|------|-----|
| **Strategy** | Remove oldest page | Remove least recently used |
| **Avg Faults** | Higher ⚠️ | Lower ✓ |
| **Belady's Anomaly** | Yes ⚠️ | No ✓ |
| **Real Systems** | No | Common ✓ |

⚠️ **Belady's Anomaly:** FIFO can fault MORE with more frames!

**💡 Viva Tips:**
- LRU is better approximation of optimal
- Real systems use approximate LRU
- Discuss working-set model

</div>

</details>

---

<details>
<summary><b>📄 pra13.sh ─ Directory Organization</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Compare file system directory structures |
| **📋 Schemes** | Single-Level, Two-Level |
| **🎯 Goal** | Organize files efficiently |
| **🔑 Key Concept** | File system design trade-offs |

**📝 Single-Level Directory:**
```
All files in one global directory
Pros:   Simple, fast lookup
Cons:   No organization, name conflicts!
```

**📝 Two-Level Directory:**
```
Separate directory per user
user1/ ├─ file1, file2, file3
user2/ ├─ fileA, fileB, fileC

Pros:   Organization, user isolation ✓
Cons:   Slightly slower search
```

**📝 Real-World Hierarchical:**
```
/ (root)
├─ home/
│  ├─ user1/ ├─ documents/, downloads/
│  └─ user2/
├─ etc/
├─ var/
└─ usr/
```

**💡 Viva Tips:**
- Single-level: Name conflicts inevitable
- Two-level: Better isolation
- Hierarchical: Flexible (real systems use this)

</div>

</details>

---

<details>
<summary><b>📄 pra14.sh ─ Disk Scheduling</b></summary>

<div style="background: #f6f8fa; padding: 20px; border-radius: 10px;">

| | |
|---|---|
| **🎯 What It Does** | Minimize disk head movement time |
| **📋 Algorithms** | FCFS, SCAN (Elevator) |
| **📊 Metric** | Total Seek Time |
| **🔑 Key Concept** | Disk I/O optimization |

**📝 Seek Time Formula:**
```
seek_time = |current_head − request_cylinder|
```

**📝 Algorithm Comparison:**
| Feature | FCFS | SCAN |
|---------|------|------|
| **Strategy** | Service in order | Sweep like elevator |
| **Avg Seek** | Higher ⚠️ | Lower ✓ |
| **Fairness** | Fair | Some starvation at edges |
| **Real Systems** | Limited | Common ✓ |

**📝 SCAN Variants:**
- **C-SCAN:** Circular (only sweep one direction)
- **LOOK:** Don't go all the way (only to last request)
- **C-LOOK:** Circular + LOOK (best in practice)

**💡 Viva Tips:**
- FCFS treats disk like a queue (unfair!)
- SCAN mimics **elevator** behavior
- C-SCAN prevents starvation at disk edges
- Modern drives use read-ahead caching

</div>

</details>

---

## 🎓 Common Viva Questions & Quick Answers

<details open>
<summary><b>Q1: What is a shebang? Why is it important?</b></summary>

**Answer:** `#!/bin/bash` tells the OS which interpreter to use.
- Without it: OS might use wrong interpreter or fail
- `chmod +x` makes script executable
- Different shebangs for different interpreters

</details>

<details>
<summary><b>Q2: What's the difference between $(( )) and $( )?</b></summary>

**Answer:**
- `$(( ))` → Arithmetic expansion (math)
- `$( )` → Command substitution (run commands)

</details>

<details>
<summary><b>Q3: Explain numeric comparison operators</b></summary>

**Answer:**
- `-ge` = >= (greater or equal)
- `-gt` = > (greater than)
- `-lt` = < (less than)
- `-le` = <= (less or equal)
- `-eq` = == (equal)
- `-ne` = != (not equal)

</details>

<details>
<summary><b>Q4: How do bash arrays work?</b></summary>

**Answer:**
```bash
arr=(elem0 elem1 elem2)
${arr[0]}          # First element
${arr[@]}          # All elements
${#arr[@]}         # Array length
```

</details>

<details>
<summary><b>Q5: FCFS vs SJF - Which is better?</b></summary>

**Answer:** SJF gives lower average wait time, but FCFS is fairer. SJF causes starvation of long jobs.

</details>

<details>
<summary><b>Q6: What causes deadlock in Dining Philosophers?</b></summary>

**Answer:** If all philosophers pick left fork simultaneously, nobody can pick right fork → deadlock!

</details>

<details>
<summary><b>Q7: First Fit vs Best Fit allocation?</b></summary>

**Answer:** First Fit is faster. Best Fit minimizes waste. First Fit is better for practical use.

</details>

<details>
<summary><b>Q8: What is Belady's Anomaly?</b></summary>

**Answer:** FIFO page replacement can cause MORE faults with MORE frames! Counterintuitive and problematic.

</details>

<details>
<summary><b>Q9: Why SCAN better than FCFS for disk?</b></summary>

**Answer:** SCAN mimics elevator (sweeps in one direction). Reduces average seek time vs FCFS.

</details>

<details>
<summary><b>Q10: Explain semaphores in Producer-Consumer</b></summary>

**Answer:** 
- `mutex` = ensures critical section access
- `empty` = counts empty slots
- `full` = counts filled slots
Producer waits if full, Consumer waits if empty.

</details>

---

## 📚 Study Guide

### 🎯 **How to Prepare for Viva**

**Phase 1: Learn (30 min per script)**
- Read script explanation
- Understand logic flow
- Trace example execution

**Phase 2: Practice (20 min per script)**
- Run with different inputs
- Modify code slightly
- Predict output before running

**Phase 3: Explain (15 min per script)**
- Describe to yourself
- Record your explanation
- Practice clear communication

**Phase 4: Mock Viva (30 min)**
- Answer viva questions
- Explain code logic
- Handle modifications

---

## ✅ Pre-Exam Checklist

- [ ] All scripts are executable (`chmod +x`)
- [ ] Can explain each script in 2 minutes
- [ ] Know key viva questions for each topic
- [ ] Understand all algorithms and complexity
- [ ] Can draw diagrams (scheduling, page tables, etc.)
- [ ] Comfortable with bash syntax
- [ ] Ready to modify scripts on the spot

---

<div align="center">

### ⭐ **If This Helped You, Please Star the Repository! ⭐**

**Made with ❤️ for OS Students**

---

```
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║                    Good Luck with Your OS Lab & Exams! 🎓                   ║
║                                                                              ║
║                 May Your Scripts Run and Your Code Be Bug-Free! 🚀           ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

</div>