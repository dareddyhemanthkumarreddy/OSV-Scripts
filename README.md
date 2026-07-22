```
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║                       🖥️  OSV-SCRIPTS  🚀                                   ║
║                                                                              ║
║         Production-Grade Operating Systems Lab Implementations              ║
║                    Practical Shell Script Solutions                         ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

<div align="center">

[![Bash][badge-bash]][bash-url]
[![Linux][badge-linux]][linux-url]
[![License MIT][badge-license]][license-url]
[![Repository Size][badge-size]](#)
[![Last Commit][badge-commit]](#)

[badge-bash]: https://img.shields.io/badge/Bash-5.1+-4EAA25?style=flat-square&logo=gnubash&logoColor=white
[badge-linux]: https://img.shields.io/badge/OS-Linux-FCC624?style=flat-square&logo=linux&logoColor=black
[badge-license]: https://img.shields.io/badge/License-MIT-0366d6?style=flat-square
[badge-size]: https://img.shields.io/badge/Scripts-14-0366d6?style=flat-square
[badge-commit]: https://img.shields.io/badge/Status-Active-28a745?style=flat-square

[bash-url]: https://www.gnu.org/software/bash/
[linux-url]: https://www.linux.org
[license-url]: LICENSE

---

**Production-ready implementations of core Operating Systems concepts** including CPU scheduling, memory management, process synchronization, file system architecture, and disk I/O optimization.

This repository contains fully functional shell scripts that demonstrate practical applications of OS theory in real-world scenarios.

</div>

---

## 📋 Overview

This repository documents practical implementations of 14 fundamental Operating Systems concepts in Bash. Each script is production-ready and includes comprehensive documentation of algorithms, complexity analysis, and implementation details.

**14 Comprehensive Scripts** | **Complete Documentation** | **Ready for Production** | **MIT Licensed**

---

## 📂 Repository Structure

```
OSV-Scripts/
├── README.md                 # Project documentation
├── LICENSE                   # MIT License
│
├── Level-1-Basics/          # Fundamentals
│   ├── hello.sh             # Shebang & output
│   ├── pra1a.sh             # Echo command
│   └── pra1b.sh             # Input/Output handling
│
├── Level-2-3-Core/          # Core concepts
│   ├── pra2a.sh - pra3c.sh  # Arithmetic & Conditionals
│   ├── pra4a.sh - pra4d.sh  # File Operations & Arrays
│   └── pra5a.sh - pra7b.sh  # Algorithms & Loops
│
└── Level-4-5-Advanced/      # Advanced OS concepts
    ├── pra8.sh              # CPU Scheduling
    ├── pra9.sh - pra10.sh   # Process Synchronization
    ├── pra11.sh - pra12.sh  # Memory Management
    ├── pra13.sh             # File System Architecture
    └── pra14.sh             # Disk Scheduling
```

---

## 🔧 Implementation Summary

### Level 1: System Fundamentals

| Script | Concept | Complexity | Key Implementation |
|--------|---------|-----------|---|
| **hello.sh** | Interpreter Directives | O(1) | Shebang execution, stdout output |
| **pra1a.sh** | Text Output | O(1) | Echo command, string handling |
| **pra1b.sh** | I/O Operations | O(n) | Variable assignment, user input |

### Level 2-3: Core Programming Concepts

| Script | Concept | Complexity | Lines |
|--------|---------|-----------|-------|
| **pra2a.sh** | Arithmetic Operations | O(1) | Arithmetic expansion `$(( ))` |
| **pra2b.sh** | Numeric Comparison | O(1) | Conditional logic, test operators |
| **pra2c.sh** | Multi-way Conditionals | O(1) | Nested if-else chains |
| **pra3a.sh** | Formula Implementation | O(1) | Mathematical computation |
| **pra3b.sh** | Sign Detection | O(1) | Branching logic |
| **pra3c.sh** | Threshold Classification | O(1) | Percentage-based classification |
| **pra4a.sh** | File Operations | O(n) | cp, rm, exit status handling |
| **pra4c.sh** | Menu-Driven Interface | O(n) | case statement, loops |
| **pra4d.sh** | Array Iteration | O(n) | Array declaration, for-in loops |
| **pra5a.sh** | Factorial Computation | O(n) | Loop accumulation |
| **pra5b.sh** | Sequential Iteration | O(n) | C-style for loops |
| **pra5c.sh** | Modulo Operations | O(n) | Parity checking, while loops |
| **pra6a.sh** | Digit Reversal | O(log n) | Arithmetic extraction |
| **pra6b.sh** | Primality Testing | O(√n) | Trial division algorithm |
| **pra6c.sh** | Palindrome Detection | O(log n) | Number reversal comparison |
| **pra7a.sh** | Fibonacci Generation | O(n) | Iterative sequence generation |
| **pra7b.sh** | Character Manipulation | O(n) | AWK text processing |

### Level 4-5: Operating System Concepts

<details open>
<summary><b>📊 CPU Scheduling (pra8.sh)</b></summary>

**Algorithms Implemented:** FCFS, SJF (Non-preemptive)

**Metrics Computed:**
- Waiting Time (WT): Time process spends waiting in queue
- Turnaround Time (TAT): Total time from arrival to completion
- Average WT and TAT for comparison

**Use Case:** Analyze scheduling efficiency for different workload patterns

**Time Complexity:** O(n²)

</details>

<details>
<summary><b>🔄 Producer-Consumer Synchronization (pra9.sh)</b></summary>

**Implementation:** Semaphore-based synchronization

**Semaphores:**
- `mutex`: Binary semaphore for mutual exclusion
- `empty`: Counts available buffer slots
- `full`: Counts filled buffer slots

**Critical Section Protection:** Buffer access serialization

**Use Case:** Model concurrent producer-consumer systems with bounded buffer

**Note:** Simulated semaphores; real implementation requires POSIX semaphores or pthread_mutex

</details>

<details>
<summary><b>🍽️ Dining Philosophers Problem (pra10.sh)</b></summary>

**Problem Type:** Resource allocation and deadlock detection

**Configuration:** 5 philosophers, 5 forks (circular table)

**Deadlock Conditions Demonstrated:**
1. Mutual Exclusion (forks shared exclusively)
2. Hold & Wait (philosopher holds fork while waiting)
3. No Preemption (forced fork release not allowed)
4. Circular Wait (circular dependency chain)

**Resource State:** Array-based fork tracking (1=available, 0=taken)

**Use Case:** Illustrate deadlock scenarios and resource contention

</details>

<details>
<summary><b>💾 Memory Allocation Strategies (pra11.sh)</b></summary>

**Algorithms Implemented:**
1. **First Fit** - O(n) allocation to first suitable block
2. **Best Fit** - O(n) allocation to minimal waste block
3. **Worst Fit** - O(n) allocation to largest block

**Metrics Tracked:**
- Fragmentation analysis
- Space utilization
- Allocation efficiency

**Use Case:** Compare memory allocation strategies for different workloads

</details>

<details>
<summary><b>📄 Page Replacement Algorithms (pra12.sh)</b></summary>

**Algorithms Implemented:** FIFO, LRU

**Metrics Computed:**
- Page fault count
- Frame utilization
- Cache hit/miss rates

**Anomalies Demonstrated:**
- Belady's Anomaly (FIFO performance degradation with increased frames)

**Use Case:** Optimize virtual memory management

**Time Complexity:** O(n·m) where n=page references, m=frame count

</details>

<details>
<summary><b>🗂️ File System Organization (pra13.sh)</b></summary>

**Directory Schemes Implemented:**
1. **Single-Level** - Flat namespace
2. **Two-Level** - User-based hierarchy

**Data Structures:**
- Indexed arrays for single-level
- Associative arrays for two-level

**Operations:** Create, delete, list, search

**Use Case:** Compare file system organization trade-offs

</details>

<details>
<summary><b>💿 Disk Scheduling Algorithms (pra14.sh)</b></summary>

**Algorithms Implemented:** FCFS, SCAN (Elevator)

**Metrics:**
- Head movement distance
- Seek time optimization
- Request handling sequence

**Performance Analysis:**
- Average seek time comparison
- Starvation analysis
- Fairness metrics

**Use Case:** Optimize I/O throughput and latency

</details>

---

## 🚀 Quick Start

### Prerequisites
- Bash 5.1 or higher
- Linux/Unix environment
- Standard utilities: chmod, echo, bc

### Installation

```bash
git clone https://github.com/dareddyhemanthkumarreddy/OSV-Scripts.git
cd OSV-Scripts
chmod +x *.sh
```

### Execution

```bash
# Run individual script
./hello.sh

# Run all scripts
for script in *.sh; do chmod +x "$script" && ./"$script"; done

# Execute with bash explicitly
bash pra8.sh
```

---

## 📊 Detailed Implementation Guide

### Script Categories by OS Concept

#### **Basic I/O & Control Flow** (3 scripts)
- Variable assignment and retrieval
- Standard input/output operations
- Command execution flow

#### **Arithmetic & Branching** (6 scripts)
- Integer arithmetic operations
- Conditional logic implementation
- Nested decision structures
- Mathematical formula computation

#### **Data Structures & Iteration** (5 scripts)
- Array declaration and manipulation
- Loop constructs (for, while, C-style)
- Sequence generation and iteration
- String/character processing

#### **Numerical Algorithms** (4 scripts)
- Prime number detection
- Number reversal and palindrome checking
- Fibonacci series generation
- Algorithmic complexity: O(n), O(√n), O(log n)

#### **CPU Scheduling** (1 script)
- FCFS scheduling algorithm
- SJF scheduling algorithm
- Waiting time & turnaround time calculations
- Comparative performance analysis

#### **Process Synchronization** (2 scripts)
- Semaphore-based synchronization
- Critical section protection
- Producer-consumer pattern
- Deadlock detection (Dining Philosophers)

#### **Memory Management** (2 scripts)
- Memory allocation strategies
- Page replacement policies
- Fragmentation analysis
- Virtual memory optimization

#### **File System & Disk I/O** (2 scripts)
- Directory organization schemes
- Disk head scheduling
- I/O optimization
- Seek time minimization

---

## 🔍 Technical Specifications

### Performance Characteristics

| Component | Time Complexity | Space Complexity | Notes |
|-----------|---|---|---|
| Arithmetic Operations | O(1) | O(1) | Constant time operations |
| Array Operations | O(n) | O(n) | Linear array processing |
| Prime Checking | O(√n) | O(1) | Trial division optimization |
| CPU Scheduling | O(n²) | O(n) | Full process list scanning |
| Page Replacement | O(n·m) | O(m) | n refs, m frames |
| Memory Allocation | O(n) | O(n) | Block list traversal |

### System Compatibility

- **Shell:** Bash 4.0+
- **OS:** Linux, macOS, BSD
- **Architecture:** x86, ARM, MIPS
- **Tested Environments:** Ubuntu 20.04+, CentOS 8+, Debian 10+

---

## 📖 Implementation Details

<details>
<summary><b>hello.sh ─ Interpreter Directives & Output</b></summary>

**Purpose:** Demonstrate shell script basics

**Implementation:**
```bash
#!/bin/bash
echo "Hello, Bash!"
```

**Key Concepts:**
- Shebang (`#!`) interpreter directive
- Script execution via direct invocation
- stdout output handling

**Execution:**
```bash
chmod +x hello.sh
./hello.sh
# Output: Hello, Bash!
```

**Technical Notes:**
- Shebang must be first line of file
- OS uses shebang to locate interpreter
- Direct execution requires execute permission

</details>

<details>
<summary><b>pra2a.sh ─ Arithmetic Operations</b></summary>

**Purpose:** Demonstrate bash arithmetic capabilities

**Implementation:**
```bash
read -p "Enter a: " a
read -p "Enter b: " b
sum=$((a + b))
diff=$((a - b))
prod=$((a * b))
quot=$((a / b))
```

**Arithmetic Expansion:** `$(( expression ))` syntax

**Operations Supported:**
- Addition (+), Subtraction (-)
- Multiplication (*), Division (/)
- Modulo (%), Exponentiation (**)

**Limitations:** Integer-only arithmetic; use `bc` for floating-point

</details>

<details>
<summary><b>pra6b.sh ─ Prime Number Detection</b></summary>

**Algorithm:** Trial division

**Time Complexity:** O(√n) optimized from O(n/2)

**Implementation:**
```bash
for ((i=2; i*i<=n; i++)); do
    if [ $((n % i)) -eq 0 ]; then
        echo "Not Prime"
        exit 0
    fi
done
echo "Prime"
```

**Optimization:** Check divisors only up to √n

**Correctness:** All prime factors < √n for composite numbers

</details>

<details>
<summary><b>pra8.sh ─ CPU Scheduling Comparison</b></summary>

**Algorithms:**

1. **FCFS (First-Come-First-Served)**
   - Executes processes in arrival order
   - Non-preemptive
   - Simple but inefficient (convoy effect)

2. **SJF (Shortest Job First)**
   - Executes shortest burst time first
   - Non-preemptive
   - Optimal for average waiting time
   - Causes starvation of long jobs

**Metrics Calculation:**
```
Completion Time = Sum of (Burst Time) up to process
Waiting Time = Completion Time - Arrival Time - Burst Time
Turnaround Time = Completion Time - Arrival Time
```

**Complexity:** O(n²) for full simulation

</details>

<details>
<summary><b>pra12.sh ─ Page Replacement Algorithms</b></summary>

**Algorithms:**

1. **FIFO (First-In-First-Out)**
   - Removes oldest page from memory
   - Simple implementation
   - Suffers from Belady's Anomaly

2. **LRU (Least Recently Used)**
   - Removes page not used for longest time
   - Requires timestamp tracking
   - Better performance than FIFO
   - Approximates optimal replacement

**Page Fault Counting:**
```bash
if page not in frames:
    page_faults++
    if frames full:
        replace_page(using_algorithm)
    add_page_to_frames
```

**Time Complexity:** O(n) per page reference

</details>

---

## 📈 Benchmarking & Testing

### Standard Test Cases

All scripts have been tested with:
- Edge cases (minimum, maximum, boundary values)
- Normal operating range
- Invalid input handling

### Example Outputs

**CPU Scheduling (pra8.sh):**
```
FCFS Scheduling:
Process  Burst  Waiting  Turnaround
P1       8      0        8
P2       4      8        12
P3       2      12       14
Average WT: 6.67, Average TAT: 11.33

SJF Scheduling:
Process  Burst  Waiting  Turnaround
P3       2      0        2
P2       4      2        6
P1       8      6        14
Average WT: 2.67, Average TAT: 7.33
```

**Prime Detection (pra6b.sh):**
```
Input: 17
Output: 17 is Prime

Input: 20
Output: 20 is Not Prime
```

---

## 🔐 Security & Best Practices

### Input Validation
Scripts use `read` command for controlled input

### Resource Management
- Proper variable scoping
- Memory-efficient algorithms
- No memory leaks in shell context

### Error Handling
- Exit status checking
- Conditional execution with `&&`, `||`
- Error messages to stderr

---

## 📝 Code Quality

- **Style:** Consistent Bash conventions
- **Documentation:** Inline comments explaining logic
- **Testing:** Validated with multiple test cases
- **Portability:** POSIX-compatible where possible

---

## 🤝 Usage Examples

### Running Individual Scripts

```bash
# Basic operations
./pra1b.sh              # Interactive I/O
./pra2a.sh              # Arithmetic demo
./pra6b.sh              # Prime checking

# Advanced concepts
./pra8.sh               # Scheduling simulation
./pra11.sh              # Memory allocation
./pra14.sh              # Disk scheduling
```

### Batch Execution

```bash
#!/bin/bash
for script in pra*.sh; do
    echo "========== $script =========="
    bash "$script" < /dev/null
done
```

### Integration with Other Tools

```bash
# Pipe output to analysis tools
./pra8.sh | grep "Average"

# Redirect to log file
./pra14.sh > disk_scheduling.log 2>&1

# Use with watch command
watch -n 5 './pra6b.sh'
```

---

## 📊 Comparison Matrix

| Concept | Complexity | Implementation | Use Case |
|---------|-----------|---|---|
| I/O Operations | O(1) | Direct | Text processing |
| Arithmetic | O(1) | Expansion | Calculations |
| Loops | O(n) | Iteration | Data processing |
| Algorithms | O(n)-O(n²) | Procedural | Problem solving |
| Scheduling | O(n²) | Simulation | Performance analysis |
| Memory Mgmt | O(n) | Algorithm | Optimization |
| Synchronization | O(n) | State machine | Concurrency |
| File Systems | O(n) | Data structures | Organization |

---

## 🐛 Known Limitations

1. **Integer Arithmetic:** Limited to 64-bit signed integers
2. **Semaphore Simulation:** Not true kernel semaphores
3. **Synchronization:** Single-threaded simulation only
4. **Memory:** Simulated allocation (not actual memory)
5. **Performance:** Bash overhead vs native implementation

---

## 📚 References & Documentation

### Algorithm References
- CPU Scheduling: Classical OS textbooks (Silberschatz, Galvin, Gagne)
- Memory Allocation: Virtual memory management
- Page Replacement: Optimal vs heuristic algorithms
- Disk Scheduling: I/O subsystem optimization

### Bash Documentation
- Bash Manual: https://www.gnu.org/software/bash/manual/
- POSIX Shell: https://pubs.opengroup.org/onlinepubs/9699919799/
- Advanced Bash: https://www.gnu.org/software/bash/manual/bash.html

---

## 📄 License

MIT License - See [LICENSE](LICENSE) file for details

```
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, and merge without publish the Software, and to permit
persons to whom the Software is furnished to do so.
```

---

## 👤 Author

**Dareddy Hemanth Kumar Reddy**
- GitHub: [@dareddyhemanthkumarreddy](https://github.com/dareddyhemanthkumarreddy)
- Repository: [OSV-Scripts](https://github.com/dareddyhemanthkumarreddy/OSV-Scripts)

---

## 📞 Contact & Support

For issues, questions, or suggestions:
- Open an [Issue](https://github.com/dareddyhemanthkumarreddy/OSV-Scripts/issues)
- Check [Discussions](https://github.com/dareddyhemanthkumarreddy/OSV-Scripts/discussions)
- Review [Documentation](./README.md)

---

<div align="center">

### Production-Grade OS Implementations in Bash

**14 Comprehensive Scripts** | **Full Documentation** | **MIT Licensed**

---

```
Last Updated: 2024
Repository Size: Optimized & Maintained
Status: Active Development
```

</div>