```
╔══════════════════════════════════════════════════════════════════════════════╗
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

<div align="center">

#### **hello.sh** ─ Your First Bash Script
```
PURPOSE     │  Learn shebang and basic output
RUN         │  ./hello.sh
OUTPUT      │  Hello, Bash!
KEY CONCEPT │  #!/bin/bash interpreter directive
```

**Code Preview:**
```bash
#!/bin/bash
echo "Hello, Bash!"
```

💡 **Viva Tip:** Explain why shebang is essential and how `chmod +x` makes scripts executable.

---

#### **pra1a.sh** ─ Simple Echo
```
PURPOSE     │  Practice basic output
RUN         │  ./pra1a.sh
OUTPUT      │  Welcome to Marwadi University
KEY CONCEPT │  echo command & stdout
```

💡 **Viva Tip:** Discuss newline behavior and `-n` flag.

---

#### **pra1b.sh** ─ Interactive Student Details
```
PURPOSE     │  Learn variables & user input
INPUT       │  Student info for 2 students
OUTPUT      │  Formatted student details
KEY CONCEPTS│  read, variable substitution, formatting
```

**What You'll Learn:**
- 📝 Capture user input with `read`
- 🔄 Store data in variables
- 📋 Format and display information

💡 **Viva Tip:** Discuss input validation and error handling.

</div>

---

### 🟡 **LEVEL 2: Arithmetic & Conditionals**

<div align="center">

#### **pra2a.sh** ─ Arithmetic Operations
```
INPUT       │  Two integers (a, b)
OUTPUT      │  Sum, Difference, Product, Quotient
OPERATIONS  │  +, -, *, /
KEY CONCEPT │  $(( expression )) arithmetic expansion
```

**Formula Reference:**
```
sum = a + b
diff = a - b
prod = a * b
quot = a / b (integer division)
```

💡 **Viva Tip:** Integer division truncates; use `bc` for floating-point.

---

#### **pra2b.sh** ─ Compare Two Numbers
```
OPERATORS   │  -ge, -gt, -lt, -le, -eq, -ne
LOGIC       │  if [ condition ]; then ... fi
PURPOSE     │  Learn conditional branching
```

**Truth Table:**
| `-ge` | >= | Greater or Equal |
| `-gt` | > | Greater Than |
| `-lt` | < | Less Than |
| `-le` | <= | Less or Equal |
| `-eq` | == | Equal |
| `-ne` | != | Not Equal |

💡 **Viva Tip:** Explain the order of condition checking.

---

#### **pra2c.sh** ─ Max & Min of Three Numbers
```
INPUT       │  Three integers (a, b, c)
OUTPUT      │  Largest and Smallest values
LOGIC       │  Nested conditionals with && operator
```

**Algorithm Idea:**
```
largest = (a > b && a > c) ? a : (b > c) ? b : c
smallest = (a < b && a < c) ? a : (b < c) ? b : c
```

💡 **Viva Tip:** Can also be solved using arrays and sorting!

---

#### **pra3a.sh** ─ Simple Interest Calculator
```
FORMULA     │  SI = (P × R × T) / 100
INPUT       │  Principal (P), Rate (R), Time (T)
OUTPUT      │  Simple Interest value
CONCEPT     │  Applying mathematical formulas
```

**Example Calculation:**
```
P = 1000, R = 5, T = 2
SI = (1000 × 5 × 2) / 100 = 100
```

💡 **Viva Tip:** Mention precision loss with integer division.

---

#### **pra3b.sh** ─ Check Sign
```
INPUT       │  One integer
OUTPUT      │  "Positive", "Negative", or "Zero"
CONDITIONS  │  if-elif-else logic
```

**Decision Tree:**
```
    INPUT
     │
  ├─ > 0? → Positive
  ├─ < 0? → Negative
  └─ = 0? → Zero
```

💡 **Viva Tip:** Handle edge cases and negative zero.

---

#### **pra3c.sh** ─ Marksheet & Grade Classification
```
INPUT       │  Marks in 3 subjects
OUTPUT      │  Total, Percentage, Class
CLASSES     │  Distinction, First, Second, Pass, Fail
```

**Grading Scale:**
```
┌──────────────────────────┐
│ 75+ ────────► Distinction│
│ 60-74 ──────► First      │
│ 50-59 ──────► Second     │
│ 40-49 ──────► Pass       │
│ <40 ───────► Fail        │
└──────────────────────────┘
```

**Formula:**
```bash
total = mark1 + mark2 + mark3
percentage = total / 3
```

💡 **Viva Tip:** Explain why checking highest threshold first matters!

</div>

---

### 🟡 **LEVEL 3: Loops, Arrays & Algorithms**

<div align="center">

#### **pra4a.sh** ─ Menu-Driven File Operations
```
MENU        │  1. Copy  2. Remove  3. Exit
TOOLS USED  │  cp, rm, case statement, $?
KEY CONCEPT │  Exit status checking & error handling
```

**Menu Flow:**
```
MAIN LOOP
  ├─ Option 1: cp (Copy file)
  ├─ Option 2: rm (Remove file)
  ├─ Option 3: exit
  └─ Check $? (exit status)
```

💡 **Viva Tip:** Discuss safe removal with `rm -i` (interactive).

---

#### **pra4c.sh & pra4c2.sh** ─ Calculator
```
OPERATIONS  │  +, -, ×, ÷
CONTROL     │  case statement, while loop
VALIDATION  │  Division by zero checking
```

**Division Protection:**
```bash
if [ $b -eq 0 ]; then
    echo "Error: Cannot divide by zero!"
else
    result=$((a / b))
fi
```

💡 **Viva Tip:** Why guard division operations? (Avoid crashes!)

---

#### **pra4d.sh** ─ Array Iteration
```
DECLARES    │  days=("Monday" ... "Sunday")
ITERATES    │  for day in "${days[@]}"
OUTPUTS     │  Each day on new line
CONCEPT     │  Indexed arrays
```

**Array Syntax:**
```bash
# Declaration
arr=(elem1 elem2 elem3)

# Access
${arr[0]}           # First element
${arr[@]}           # All elements
${#arr[@]}          # Array length
```

💡 **Viva Tip:** Difference between `${array[@]}` and `${array[*]}`.

---

#### **pra5a.sh** ─ Factorial (For Loop)
```
INPUT       │  n (positive integer)
OUTPUT      │  n! (factorial)
FORMULA     │  n! = n × (n-1) × (n-2) × ... × 1
ALGORITHM   │  Iterative multiplication
```

**Code Pattern:**
```bash
fact=1
for ((i=2; i<=n; i++)); do
    fact=$((fact * i))
done
```

**Examples:**
```
5! = 5 × 4 × 3 × 2 × 1 = 120
4! = 4 × 3 × 2 × 1 = 24
```

💡 **Viva Tip:** Discuss factorial overflow and recursive implementation.

---

#### **pra5b.sh** ─ Print 1 to N
```
LOOP TYPE   │  C-style for loop
FORMAT      │  for ((i=1; i<=n; i++))
OUTPUT      │  Numbers 1 through n
```

💡 **Viva Tip:** Compare `for` vs `while` vs `seq` approaches.

---

#### **pra5c.sh** ─ Even/Odd Detection
```
INPUT       │  n (positive integer)
OUTPUT      │  "Even: X" / "Odd: Y" for 1..n
KEY CONCEPT │  Modulo operator (%)
```

**Logic:**
```bash
if [ $((i % 2)) -eq 0 ]; then
    echo "Even: $i"
else
    echo "Odd: $i"
fi
```

💡 **Viva Tip:** Explain modulo operator and increment operators `((i++))`.

---

#### **pra6a.sh** ─ Reverse a Number
```
ALGORITHM   │  Extract last digit, rebuild reversed
OPERATIONS  │  Modulo (%), division (/), multiplication
INPUT       │  Non-negative integer
OUTPUT      │  Reversed number
```

**Step-by-Step:**
```
Original: 12345
Step 1: rem = 12345 % 10 = 5,  rev = 5
Step 2: rem = 1234 % 10 = 4,   rev = 54
Step 3: rem = 123 % 10 = 3,    rev = 543
Step 4: rem = 12 % 10 = 2,     rev = 5432
Step 5: rem = 1 % 10 = 1,      rev = 54321
Result: 54321 ✓
```

💡 **Viva Tip:** How to handle negative numbers?

---

#### **pra6b.sh** ─ Prime Number Check
```
ALGORITHM   │  Trial division from 2 to n/2
INPUT       │  Integer n
OUTPUT      │  "Prime" or "Not Prime"
COMPLEXITY  │  O(n) → Can optimize to O(√n)
```

**Logic:**
```bash
# Check if any number from 2 to n/2 divides n
for ((i=2; i<=n/2; i++)); do
    if [ $((n % i)) -eq 0 ]; then
        echo "Not Prime"
        exit
    fi
done
echo "Prime"
```

**Examples:**
```
Prime:     2, 3, 5, 7, 11, 13, 17, 19, 23, 29...
Not Prime: 4, 6, 8, 9, 10, 12, 14, 15, 16, 18...
```

💡 **Viva Tip:** Discuss optimization to O(√n) instead of O(n).

---

#### **pra6c.sh** ─ Palindrome Check
```
ALGORITHM   │  Compare reversed number with original
INPUT       │  Integer n
OUTPUT      │  "Palindrome" or "Not Palindrome"
CONCEPT     │  Numbers that read same forwards/backwards
```

**Examples:**
```
Palindrome:     121, 1331, 12321, 9009
Not Palindrome: 123, 1234, 54321
```

💡 **Viva Tip:** Leading zeros issue in integer representation.

---

#### **pra7a.sh** ─ Fibonacci Series
```
OUTPUT      │  First n Fibonacci numbers
ALGORITHM   │  Iterative sequence generation
PATTERN     │  Each number = sum of previous two
```

**Sequence:**
```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...
    └─ 0+1=1
        └─ 1+1=2
             └─ 1+2=3
                  └─ 2+3=5
```

**Code:**
```bash
a=0; b=1
for ((i=1; i<=n; i++)); do
    echo -n "$a "
    temp=$((a + b))
    a=$b
    b=$temp
done
```

💡 **Viva Tip:** Compare iterative vs recursive vs memoized approaches.

---

#### **pra7b.sh** ─ Toggle Case (Using AWK)
```
INPUT       │  Any string
OUTPUT      │  Same string with cases swapped
TOOL        │  awk for character processing
```

**One-Liner Alternative:**
```bash
echo "$str" | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
```

💡 **Viva Tip:** Compare `tr`, `sed`, `awk` for string manipulation.

</div>

---

### 🔴 **LEVEL 4: CPU Scheduling & Synchronization**

<div align="center">

#### **pra8.sh** ─ CPU Scheduling: FCFS vs SJF

```
ALGORITHMS  │  FCFS (First-Come-First-Served)
            │  SJF (Shortest Job First)
METRICS     │  Waiting Time (WT), Turnaround Time (TAT)
PURPOSE     │  Compare scheduling effectiveness
```

**Key Definitions:**
```
┌─────────────────────────────────────────────────┐
│ Burst Time (BT)     │ Time to execute process   │
│ Arrival Time (AT)   │ When process arrives      │
│ Completion (CT)     │ When process finishes     │
│ Waiting Time (WT)   │ CT - AT - BT              │
│ Turnaround (TAT)    │ CT - AT                   │
└─────────────────────────────────────────────────┘
```

**FCFS Algorithm:**
```
Processes executed in arrival order
No preemption, simple, but unfair

Example: BT = [8, 4, 2]
Process  BT  AT  CT  WT   TAT
P1       8   0   8   0    8
P2       4   0   12  8    12
P3       2   0   14  12   14
────────────────────────────
Avg WT = 6.67, Avg TAT = 11.33
```

**SJF Algorithm:**
```
Shortest burst time executes first
Minimizes average waiting time

Example: BT = [8, 4, 2]
Process  BT  AT  CT  WT   TAT
P3       2   0   2   0    2
P2       4   0   6   2    6
P1       8   0   14  6    14
────────────────────────────
Avg WT = 2.67, Avg TAT = 7.33 ✓ BETTER!
```

**Comparison Table:**
| Feature | FCFS | SJF |
|---------|------|-----|
| **Avg Wait Time** | Higher ⚠️ | Lower ✓ |
| **Fairness** | Fair | Unfair (long jobs starve) |
| **Implementation** | Simple ✓ | Requires BT knowledge |
| **Real-World** | No | Theoretical ideal |

💡 **Viva Tips:**
- FCFS suffers from **convoy effect**
- SJF gives optimal average wait time
- Real systems use preemptive variants (Round Robin)

---

#### **pra9.sh** ─ Producer-Consumer Problem

```
PROBLEM     │  Shared buffer between producer & consumer
SOLUTION    │  Semaphores (mutex, empty, full)
CONCEPT     │  Synchronization & mutual exclusion
```

**Semaphore States:**
```
┌──────────────────────────────────────────┐
│ mutex = 1  │ Only 1 process in critical  │
│ empty = n  │ n empty slots in buffer     │
│ full = 0   │ 0 filled slots initially    │
└──────────────────────────────────────────┘
```

**Producer Process:**
```bash
Wait(empty)     # Check if space available
Wait(mutex)     # Enter critical section
produce_item()  # Add item
Signal(mutex)   # Exit critical section
Signal(full)    # Increment filled count
```

**Consumer Process:**
```bash
Wait(full)      # Check if items available
Wait(mutex)     # Enter critical section
consume_item()  # Remove item
Signal(mutex)   # Exit critical section
Signal(empty)   # Increment empty count
```

**Visual Buffer State:**
```
Initial:  [empty] [empty] [empty]  empty=3, full=0, mutex=1

After Produce:
          [item1] [empty] [empty]  empty=2, full=1, mutex=1

After Consume:
          [empty] [empty] [empty]  empty=3, full=0, mutex=1
```

⚠️ **Important:** This script simulates only; real systems need kernel semaphores or pthread_mutex.

💡 **Viva Tips:**
- Explain race conditions and critical sections
- Mention solutions: locks, semaphores, monitors
- Compare busy-waiting vs proper synchronization

---

#### **pra10.sh** ─ Dining Philosophers Problem

```
PROBLEM     │  5 philosophers, 5 forks (deadlock potential)
CONCEPT     │  Resource allocation & deadlock detection
PURPOSE     │  Understand synchronization challenges
```

**Setup:**
```
        Philosopher 0
              │
         Fork 0   Fork 1
        /            \
   Phi 4            Phi 1
    │                 │
 Fork 4          Fork 2-Fork 3
    \               /
   Philosopher 3-2

Each philosopher needs 2 forks to eat
Left fork = p, Right fork = (p+1) % 5
```

**The Deadlock Scenario:**
```
Time 0:
  Philosopher 0 picks fork 0
  Philosopher 1 picks fork 1
  Philosopher 2 picks fork 2
  Philosopher 3 picks fork 3
  Philosopher 4 picks fork 4
  
Result: Everyone holds 1 fork, needs the other
       → DEADLOCK! Nobody can eat! 💥
```

**Solutions:**

| Solution | Mechanism | Trade-off |
|----------|-----------|-----------|
| **Resource Hierarchy** | Always pick lower fork first | Order dependency |
| **Odd Philosopher** | One picks right fork first | Asymmetry |
| **Waiter** | Central controller (Dijkstra) | Central point of failure |
| **Semaphores** | Protect fork state | Complexity |

**Resource Hierarchy (Recommended):**
```bash
if [ $left_fork -lt $right_fork ]; then
    pick $left_fork
    pick $right_fork
else
    pick $right_fork
    pick $left_fork
fi
```

💡 **Viva Tips:**
- Deadlock requires: Mutual Exclusion, Hold & Wait, No Preemption, Circular Wait
- Discuss starvation vs deadlock
- Compare prevention vs avoidance vs detection

</div>

---

### 🔴 **LEVEL 5: Memory, File Systems & Disk**

<div align="center">

#### **pra11.sh** ─ Memory Allocation Algorithms

```
ALGORITHMS  │  First Fit, Best Fit, Worst Fit
PURPOSE     │  Allocate processes to memory blocks
ISSUE       │  Minimize fragmentation
```

**Allocation Strategies:**

| Strategy | Logic | Speed | Fragmentation |
|----------|-------|-------|---|
| **First Fit** | 1st block ≥ size | Fast O(n) | Moderate |
| **Best Fit** | Smallest block ≥ size | Slow O(n) | Minimal ✓ |
| **Worst Fit** | Largest block that fits | Medium O(n) | Spread waste |

**Example:**
```
Available Blocks: [100] [500] [200] [600]
Request: 300

┌──────────────────────────────────────┐
│ First Fit:                           │
│ First block ≥ 300? Yes → Block 2     │
│ Allocate: [100] [200*] [200] [600]   │
│ Wasted: 200                          │
└──────────────────────────────────────┘

┌──────────────────────────────────────┐
│ Best Fit:                            │
│ Smallest block ≥ 300? Block 4 (600)  │
│ Allocate: [100] [500] [200] [300*]   │
│ Wasted: 300                          │
└──────────────────────────────────────┘

┌──────────────────────────────────────┐
│ Worst Fit:                           │
│ Largest block? Block 4 (600)         │
│ Allocate: [100] [500] [200] [300*]   │
│ Wasted: 300                          │
└──────────────────────────────────────┘
```

**Fragmentation Types:**
```
Internal:   Wasted space INSIDE allocated block
External:   Wasted space BETWEEN allocated blocks
```

💡 **Viva Tips:**
- First Fit: Fastest, good enough for practice
- Best Fit: Minimal waste, but slower
- Worst Fit: Counterintuitive; doesn't perform better

---

#### **pra12.sh** ─ Page Replacement Algorithms

```
ALGORITHMS  │  FIFO, LRU
PURPOSE     │  Minimize page faults in virtual memory
KEY METRIC  │  Page Fault Count
```

**Key Concepts:**
```
┌─────────────────────────────────────┐
│ Page        │ Fixed-size memory unit│
│ Frame       │ Physical memory slot  │
│ Page Fault  │ Reference to missing  │
│             │ page (disk I/O needed)│
│ Replacement │ Which page to evict?  │
└─────────────────────────────────────┘
```

**FIFO Algorithm:**
```
Strategy: Remove oldest page (first in)
Issue:    Belady's Anomaly (more frames ≠ fewer faults!)

Example: Reference = [1 2 3 4 1 2 5 1 2 3 4 5]
Frames: 3

Time │ Ref │ Frame State      │ Fault? │ Action
─────┼─────┼──────────────────┼────────┼──────────
0    │ 1   │ [1 _ _]          │ YES    │ Load 1
1    │ 2   │ [1 2 _]          │ YES    │ Load 2
2    │ 3   │ [1 2 3]          │ YES    │ Load 3
3    │ 4   │ [4 2 3]          │ YES    │ Remove 1 (oldest)
4    │ 1   │ [4 1 3]          │ YES    │ Remove 2
5    │ 2   │ [4 1 2]          │ YES    │ Remove 3
6    │ 5   │ [5 1 2]          │ YES    │ Remove 4
─────────────────────────────────────────
Total Faults: 7
```

**LRU Algorithm:**
```
Strategy: Remove least recently used page
Advantage: Better than FIFO (no Belady's anomaly)

Example: Same reference string
Time │ Ref │ Frame State      │ Fault? │ Last Used Order
─────┼─────┼──────────────────┼────────┼─────────────────
0    │ 1   │ [1 _ _]          │ YES    │ 1
1    │ 2   │ [1 2 _]          │ YES    │ 1,2
2    │ 3   │ [1 2 3]          │ YES    │ 1,2,3
3    │ 4   │ [4 2 3]          │ YES    │ Remove 1 (least recent)
4    │ 1   │ [4 2 1]          │ YES    │ Remove 3
5    │ 2   │ [4 2 1]          │ NO     │ 2 already loaded
6    │ 5   │ [5 2 1]          │ YES    │ Remove 4 (least recent)
─────────────────────────────────────────
Total Faults: 6 ✓ BETTER!
```

**Comparison:**
| Feature | FIFO | LRU |
|---------|------|-----|
| **Average Faults** | Higher | Lower ✓ |
| **Belady's Anomaly** | Yes ⚠️ | No ✓ |
| **Implementation** | Simple | Complex (needs timestamp) |
| **Real Systems** | No | Common ✓ |

💡 **Viva Tips:**
- Belady's Anomaly: FIFO can fault MORE with more frames!
- LRU is optimal for working-set model
- Real systems use approximate LRU (reference bits)

---

#### **pra13.sh** ─ Directory Organization

```
STRUCTURES  │  Single-Level, Two-Level
PURPOSE     │  Organize files in file system
TRADE-OFF   │  Simplicity vs. Organization
```

**Single-Level Directory:**
```
┌─────────────────────────────────┐
│ Global File System              │
├─────────────────────────────────┤
│ ├─ file1.txt                    │
│ ├─ file2.txt                    │
│ ├─ report.pdf                   │
│ ├─ program.sh                   │
│ └─ data.csv                     │
└─────────────────────────────────┘

Pros:  Simple, fast lookup
Cons:  No organization, name conflicts
```

**Two-Level Directory:**
```
┌─────────────────────────────────┐
│ Root Directory                  │
├──────────────────┬──────────────┤
│ user1/           │ user2/       │
├──────────────────┼──────────────┤
│ ├─ file1.txt     │ ├─ file1.txt │
│ ├─ project.sh    │ ├─ data.csv  │
│ └─ notes.pdf     │ └─ report.md │
└──────────────────┴──────────────┘

Pros:  Organization, isolates users
Cons:  Slightly slower (one level search)
```

**Implementation:**
```bash
# Single-Level: Array
files=(file1 file2 file3)

# Two-Level: Associative Array
declare -A user_dir
user_dir[user1]="file1 file2 file3"
user_dir[user2]="fileA fileB fileC"
```

**Real-World Hierarchical:**
```
/
├─ home/
│  ├─ user1/
│  │  ├─ documents/
│  │  ├─ downloads/
│  │  └─ projects/
│  └─ user2/
├─ etc/
├─ var/
└─ usr/
```

💡 **Viva Tips:**
- Single-level: Name conflicts inevitable
- Two-level: User isolation but limited
- Hierarchical: Flexible, real systems use it

---

#### **pra14.sh** ─ Disk Scheduling

```
ALGORITHMS  │  FCFS, SCAN
PURPOSE     │  Minimize disk head movement
METRIC      │  Total Seek Time
```

**Disk Head Seek Time Calculation:**
```
seek_time = |current_head - request_cylinder|
```

**FCFS Algorithm:**
```
Strategy: Service requests in arrival order
Issue:    High average seek time

Example:
Cylinders: 0-199
Head: 100
Requests: 50, 150, 80, 120, 190

Path: 100→50→150→80→120→190
       50  100  70  40  70
────────────────────────────
Total Seek: 330 units ⚠️ HIGH!

Visualization:
0 ──50──80──100─120─150──────190─199
   ──────▲─►────◄───────────────▼
```

**SCAN Algorithm (Elevator):**
```
Strategy: Move in one direction, serve all requests
          then return and sweep other direction

Path: 100→50→0→80→120→150→190→199
       50  50  80  40  30  40  9
─────────────────────────────────────
Total Seek: 299 units ✓ BETTER!

Visualization:
       ◄─────────►
0 ──50──80──100─120─150──────190─199
   ▲                          ▼
   └─── Return here ──────────┘
```

**Comparison:**
| Feature | FCFS | SCAN |
|---------|------|------|
| **Avg Seek Time** | Higher ⚠️ | Lower ✓ |
| **Fairness** | Fair | Some starvation at edges |
| **Complexity** | Simple | Medium |
| **Real Systems** | Limited | Common ✓ |

**Variants:**
```
┌─────────────────────────────┐
│ C-SCAN (Circular Scan)      │
│ Only sweep in one direction │
│ Better than SCAN in practice│
└─────────────────────────────┘

┌─────────────────────────────┐
│ LOOK / C-LOOK               │
│ Don't go to end unnecessarily
│ More efficient than SCAN    │
└─────────────────────────────┘
```

💡 **Viva Tips:**
- FCFS treats disk like queue (unfair)
- SCAN mimics **elevator** behavior
- C-SCAN prevents starvation at disk edges
- Modern drives use read-ahead caching

</div>

---

## 🎓 Common Viva Questions & Answers

<details open>
<summary><b>Q1: What is a shebang? Why is it important?</b></summary>

**Answer:** Shebang (`#!/bin/bash`) is the first line that tells the OS which interpreter to use.

**Examples:**
- `#!/bin/bash` → Use bash shell
- `#!/usr/bin/python3` → Use Python 3
- `#!/bin/sh` → Use sh (more portable)

**Why important?** Without shebang, OS might try wrong interpreter or fail to execute.

**Usage:**
```bash
chmod +x script.sh
./script.sh          # Uses shebang to find interpreter
```

</details>

<details>
<summary><b>Q2: Difference between $(( )) and $( )?</b></summary>

**Answer:**
- `$(( ))` → **Arithmetic expansion** (math operations)
- `$( )` → **Command substitution** (execute commands)

**Examples:**
```bash
x=$((2 + 3))              # x = 5
x=$(echo "hello")         # x = hello
y=$((10 / 3))             # y = 3 (integer division)
files=$(ls)               # files = output of ls
```

</details>

<details>
<summary><b>Q3: Explain numeric comparison operators</b></summary>

**Answer:**
```bash
[ $x -ge 5 ]   # Greater or Equal (≥)
[ $x -gt 5 ]   # Greater Than (>)
[ $x -lt 5 ]   # Less Than (<)
[ $x -le 5 ]   # Less or Equal (≤)
[ $x -eq 5 ]   # Equal (==)
[ $x -ne 5 ]   # Not Equal (!=)
```

**Examples:**
```bash
if [ $age -ge 18 ]; then
    echo "Adult"
fi
```

</details>

<details>
<summary><b>Q4: How do bash arrays work?</b></summary>

**Answer:**
```bash
# Indexed Array (0-based)
arr=(elem0 elem1 elem2)
echo ${arr[0]}              # elem0
echo ${arr[@]}              # all elements
echo ${#arr[@]}             # length = 3

# Loop through array
for item in "${arr[@]}"; do
    echo "$item"
done

# Associative Array (like dictionary)
declare -A dict
dict[name]="John"
dict[age]="25"
echo ${dict[name]}          # John
```

</details>

<details>
<summary><b>Q5: FCFS vs SJF Scheduling - Which is better?</b></summary>

**Answer:**

| Metric | FCFS | SJF |
|--------|------|-----|
| **Avg Wait Time** | Higher ⚠️ | Lower ✓ |
| **Fairness** | Fair | Unfair (starvation) |
| **Preemption** | No | No |
| **Info Needed** | None | Burst time |

**Example:**
```
Jobs: [BT=8, BT=4, BT=2]

FCFS:
P1(8) → P2(4) → P3(2)
WT: [0, 8, 12]  Avg WT = 6.67

SJF:
P3(2) → P2(4) → P1(8)
WT: [0, 2, 6]   Avg WT = 2.67 ✓ BETTER!
```

**Verdict:** SJF better for avg wait, but FCFS more fair.

</details>

<details>
<summary><b>Q6: What causes deadlock in Dining Philosophers?</b></summary>

**Answer:** If all 5 philosophers pick their **left fork** simultaneously:
```
Philosopher 0 picks fork 0
Philosopher 1 picks fork 1
Philosopher 2 picks fork 2
Philosopher 3 picks fork 3
Philosopher 4 picks fork 4

Now all right forks are taken!
Everyone waits for a fork they can't get → DEADLOCK
```

**Prevention Methods:**
1. **Hierarchy:** Always pick lower-numbered fork first
2. **Odd Rule:** Philosopher 4 picks right fork first
3. **Waiter:** Central controller allows only 4 to sit
4. **Semaphores:** Protect fork state

</details>

<details>
<summary><b>Q7: First Fit vs Best Fit - Which allocates better?</b></summary>

**Answer:**

| Feature | First Fit | Best Fit |
|---------|-----------|----------|
| **Logic** | 1st block ≥ size | Smallest block ≥ size |
| **Speed** | O(n) Fast ✓ | O(n) Slow |
| **Waste** | Moderate | Minimal ✓ |

**Example:**
```
Blocks:    [100] [500] [200] [600]
Request: 300

First Fit: [100] [200*] [200] [600]   waste=200
Best Fit:  [100] [500] [200] [300*]   waste=300
```

**Verdict:** First Fit best for practice (balance of speed & efficiency).

</details>

<details>
<summary><b>Q8: What is Belady's Anomaly in page replacement?</b></summary>

**Answer:** FIFO page replacement can cause **MORE faults with MORE frames**!

**Example:**
```
Reference: 1 2 3 4 1 2 5 1 2 3 4 5

With 3 frames: 7 page faults
With 4 frames: 8 page faults (!!)

Counterintuitive! More memory, more faults!
```

**Why?** FIFO evicts oldest page (not necessarily least needed).

**Solution:** Use **LRU** (doesn't have anomaly).

</details>

<details>
<summary><b>Q9: Why is SCAN better than FCFS for disk scheduling?</b></summary>

**Answer:**

**FCFS:** Serves requests in order received
```
Head at 100, Requests: 50, 150, 80, 120, 190
100→50→150→80→120→190 = 330 seek time
```

**SCAN:** Moves in one direction, serves all requests
```
Head at 100, sweep left to 0, then right
100→50→0→80→120→150→190 = 299 seek time ✓
Mimics elevator behavior!
```

**Benefits:**
- ✓ Reduces average seek time
- ✓ More uniform response time
- ✓ Prevents starvation better

</details>

<details>
<summary><b>Q10: Explain semaphores in Producer-Consumer</b></summary>

**Answer:** Semaphores are counters protecting shared resources:

```
mutex = 1    (binary semaphore, ensures mutual exclusion)
empty = n    (counts empty buffer slots)
full = 0     (counts filled buffer slots)
```

**Producer:**
```
wait(empty)      // Block if buffer full
wait(mutex)      // Enter critical section
produce()
signal(mutex)    // Exit critical section
signal(full)     // Signal consumer
```

**Consumer:**
```
wait(full)       // Block if buffer empty
wait(mutex)      // Enter critical section
consume()
signal(mutex)    // Exit critical section
signal(empty)    // Signal producer
```

**Result:** Producer waits if full, Consumer waits if empty!

</details>

---

## 📚 Study Guide & Tips

### 🎯 **How to Study for Viva**

1. **Phase 1: Understand (30 min per script)**
   - Read comments
   - Understand logic flow
   - Trace example execution

2. **Phase 2: Practice (20 min per script)**
   - Run with different inputs
   - Modify code
   - Predict output

3. **Phase 3: Explain (15 min per script)**
   - Describe to yourself
   - Record explanation
   - Practice clear communication

4. **Phase 4: Mock Viva (30 min)**
   - Answer viva questions
   - Explain code logic
   - Handle edge cases

### ✅ **Checklist Before Exam**

- [ ] All scripts executable (`chmod +x`)
- [ ] Can explain each script in 2 minutes
- [ ] Know key viva questions for each topic
- [ ] Understand algorithms and complexity
- [ ] Can draw diagrams (scheduling, page tables, etc.)
- [ ] Ready to modify scripts on spot
- [ ] Comfortable with bash syntax

---

## 🚀 Quick Reference

### Bash Syntax Cheat Sheet

| Syntax | Purpose |
|--------|---------|
| `$(( a + b ))` | Arithmetic |
| `$? ` | Exit status |
| `[ $x -gt 5 ]` | Comparison |
| `if [ ]; then else fi` | Conditional |
| `for ((i=0; i<n; i++))` | Loop |
| `case $x in 1)...;; esac` | Switch |
| `${arr[@]}` | Array access |
| `declare -A arr` | Associative array |

### Key Commands

| Command | Purpose |
|---------|---------|
| `read var` | Read input |
| `echo` | Print output |
| `cp src dest` | Copy file |
| `rm file` | Remove file |
| `chmod +x file` | Make executable |
| `bc` | Calculator |
| `tr` | Character translation |
| `awk` | Text processing |

---

## 📞 Getting Help

**Have Questions?**
- 🔍 Check the viva questions section
- 💡 Review script comments
- 📖 Read full documentation above
- 🐛 Open an issue on GitHub

---

<div align="center">

## ⭐ Support This Project

If this repository helped you prepare for your exam, please **⭐ star** it!

**Your star motivates continued improvements! 🚀**

---

### 📞 Connect

[Issues](../../issues) · [Discussions](../../discussions) · [Email](mailto:your-email@example.com)

---

**Made with ❤️ for OS Students Everywhere**

```
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║                    Good Luck with Your OS Lab & Exams! 🎓                   ║
║                                                                              ║
║                 May Your Scripts Run and Your Semaphores Deadlock-Free! 🚀   ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

</div>