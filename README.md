# OSV-Scripts — Operating Systems Lab Practicals (Viva Prep)

This repository contains my shell-script practicals for the Operating Systems lab. This README explains every script file clearly so you can use it to prepare for viva voce. For each script you will find:

- Purpose (what the script demonstrates)
- How to run (commands)
- Example input / expected output (short)
- Important concepts used
- Step-by-step explanation / key lines to remember for viva

General notes:
- All scripts use bash (`#!/bin/bash`).
- Make scripts executable before running:
  - chmod +x <script>.sh
  - ./<script>.sh
- Most scripts are interactive; some use built-in arrays for demonstration.

---

## hello.sh
Purpose: Minimal script to demonstrate shebang and printing to stdout.

How to run:
- chmod +x hello.sh
- ./hello.sh

Example output:
- Hello, Bash!

Important concepts:
- Shebang (`#!/bin/bash`)
- `echo` prints to standard output

Explanation:
- Line 1: `#!/bin/bash` — indicates the interpreter to run the script (bash).
- Line 2: `echo "Hello, Bash!"` — prints a greeting.

Viva tip: Explain why shebang is useful and how `./hello.sh` executes the file when executable permission is set.

---

## pra1a.sh
Purpose: Simple echo message — demonstrates printing text.

How to run:
- chmod +x pra1a.sh; ./pra1a.sh

Output:
- Welcome to  Marwadi University

Key concept:
- `echo` — output text

Explanation:
- Single `echo` prints a literal string. Use this to show plain output and newline behavior.

---

## pra1b.sh
Purpose: Collects and displays details for two students — demonstrates `read` and variable substitution.

How to run:
- chmod +x pra1b.sh; ./pra1b.sh

Input (interactive):
- Prompts for name, roll, class, branch, batch, city, CGPA for Student 1 and Student 2.

Output:
- Formatted student details printed with labels.

Key concepts:
- `read` reads input into shell variables.
- Variable substitution: `$name1`, `$roll1`, etc.
- No input validation — talk about missing validation in viva.

Step-by-step:
1. Several `echo` lines show prompts, each followed by `read var` to capture user input.
2. After both students are read, `echo` lines print the stored variables.

Viva tip: Explain how to validate (e.g., numeric checks) and how to loop to accept N students if needed.

---

## pra2a.sh — Arithmetic operations
Purpose: Demonstrates integer arithmetic using bash arithmetic expansion.

How to run:
- chmod +x pra2a.sh; ./pra2a.sh

Input:
- Two integers (a and b)

Output:
- Addition, Subtraction, Multiplication, Division (integer division)

Key concepts:
- Arithmetic expansion: `$(( expression ))`
- Integer division truncates (no decimal unless using `bc`)

Explanation:
1. Read `a` and `b`.
2. Compute `sum=$((a + b))`, `diff=$((a - b))`, `prod=$((a * b))`, `quot=$((a / b))`.
3. Print results.

Viva tip: Mention `expr`, `bc`, and differences for floating-point math.

---

## pra2b.sh — Compare two numbers
Purpose: Compare two numbers and print which is greater.

How to run:
- chmod +x pra2b.sh; ./pra2b.sh

Input:
- Two integers

Output:
- Greater number or equality message

Key concepts:
- `test`/`[ ]` operators `-ge`, `-gt`, `-lt`, etc.
- `if` / `elif` / `else` constructs

Explanation:
1. Read `a`, `b`.
2. Use `if [ $a -ge $b ]` to test numeric relation.
3. `elif` checks the opposite; `else` covers equality (logic note below).

Viva tip: Explain `-ge` is “greater or equal”. Note that equality cases need careful ordering — good practice is to check equality explicitly (`-eq`) if clarity is required.

---

## pra2c.sh — Largest & smallest of three numbers
Purpose: Find largest and smallest among three integers.

How to run:
- chmod +x pra2c.sh; ./pra2c.sh

Input:
- Three integers a, b, c

Output:
- Largest number and smallest number

Key concepts:
- Chained numeric comparisons with `&&`.
- Multiple `if` branches to determine extremes.

Explanation:
1. Compare `a` with `b` and `c` to pick `largest`.
2. Similar checks to pick `smallest`.
3. Print the results.

Viva tip: You can also solve this using arrays and loops, or sort the three numbers.

---

## pra3a.sh — Simple Interest
Purpose: Compute simple interest using formula SI = (P * R * T) / 100.

How to run:
- chmod +x pra3a.sh; ./pra3a.sh

Input:
- p (principal), r (rate), t (time)

Output:
- Simple Interest value

Key concepts:
- Arithmetic expression and integer division.

Explanation:
1. Read `p`, `r`, `t`.
2. `si=$((p * r * t / 100))` computes interest (integer result).
3. Print `si`.

Viva tip: Mention using parentheses for precedence and `bc` for fractional results.

---

## pra3b.sh — Check sign (positive/negative/zero)
Purpose: Determine if an integer is positive, negative, or zero.

How to run:
- chmod +x pra3b.sh; ./pra3b.sh

Input:
- One integer

Output:
- The sign description

Key concepts:
- Numeric comparison using `-gt`, `-lt`.
- Branching with `if/elif/else`.

Explanation:
1. `if [ $num -gt 0 ]` => Positive
2. `elif [ $num -lt 0 ]` => Negative
3. `else` => Zero

Viva tip: Cover edge cases and integer-only behavior.

---

## pra3c.sh — Marksheet and classification
Purpose: Compute total marks, percentage and determine class of result.

How to run:
- chmod +x pra3c.sh; ./pra3c.sh

Input:
- Marks for Mathematics, Physics, Chemistry

Output:
- Total, Percentage, Class (Distinction / First / Second / Pass / Fail)

Key concepts:
- Aggregate arithmetic and conditional thresholds.
- Integer division truncates percentage.

Explanation:
1. `total=$((m1 + m2 + m3))`
2. `percentage=$((total / 3))`
3. Threshold checks in descending order decide classification.

Viva tip: Explain why order of checks matters (highest threshold first).

---

## pra4a.sh — Menu-driven file operations (copy / remove)
Purpose: Demonstrate `cp`, `rm` and checking exit status.

How to run:
- chmod +x pra4a.sh; ./pra4a.sh

Input:
- Menu choices; filenames

Output:
- Success/error messages

Key concepts:
- `case` statement, `$?` (exit status), `cp`, `rm`

Explanation:
1. Menu loop (`while true`).
2. Option 1: Read `src` and `dest`, run `cp` and check `$?` to confirm success.
3. Option 2: `rm` usage and error handling.
4. Option 3: exit.

Viva tip: Discuss safe removal (`rm -i`) and permission errors.

---

## pra4b.sh — mv example
Purpose: Shows the syntax for `mv` command — moving/renaming files.

Notes:
- Not a full script — just usage examples.
- Explain `mv source dest` renames or moves and can overwrite unless `-i` used.

Viva tip: Distinguish moving vs renaming and discuss permission/overwrite behavior.

---

## pra4c.sh and pra4c2.sh — Calculator (menu-driven)
Purpose: Provide a basic arithmetic calculator using `case` inside a loop.

How to run:
- chmod +x pra4c.sh; ./pra4c.sh
- chmod +x pra4c2.sh; ./pra4c2.sh

Input:
- Menu choice and two numbers (order varies by script)

Output:
- Operation result or error message for division by zero

Key concepts:
- `case` control flow, arithmetic `$((...))`, divide-by-zero check

Explanation:
- `pra4c.sh`: requests choice, then on each operation asks for numbers and computes result.
- `pra4c2.sh`: asks choice, then asks numbers once and uses them for chosen operation.

Viva tip: Explain why division is guarded (b != 0) and integer truncation.

---

## pra4d.sh — Iterating arrays (days of week)
Purpose: Demonstrate array declaration and iteration.

How to run:
- chmod +x pra4d.sh; ./pra4d.sh

Output:
- Prints each day on its own line

Key concepts:
- Array declaration: days=( "Monday" ... )
- Loop: for day in "${days[@]}"

Viva tip: Explain difference between `${array[@]}` and `${array[*]}`.

---

## pra5a.sh — Factorial using for loop
Purpose: Compute factorial using C-style `for` loop.

How to run:
- chmod +x pra5a.sh; ./pra5a.sh

Input:
- n (positive integer)

Output:
- Factorial value

Key concepts:
- Loop accumulation (`fact=$((fact * i))`)

Viva tip: Discuss overflow for large n and iterative vs recursive implementations.

---

## pra5b.sh — Print numbers 1..n using for loop
Purpose: Simple loop demo.

How to run:
- chmod +x pra5b.sh; ./pra5b.sh

Input:
- n

Output:
- Numbers 1 through n, each on a new line

Key concepts:
- C-style `for ((i=1;i<=n;i++))`

---

## pra5c.sh — Even/Odd using while loop
Purpose: Label numbers from 1..n as Even or Odd.

How to run:
- chmod +x pra5c.sh; ./pra5c.sh

Input:
- n

Output:
- Lines like "Even: 2", "Odd: 3"

Key concepts:
- `while` loop, modulo operator `%`, `((i++))` increment

Viva tip: Note the duplicate `i=1` line in the script; harmless but you can point it out as a small cleanup.

---

## pra6a.sh — Reverse digits of a number
Purpose: Reverse integer digits using arithmetic operations.

How to run:
- chmod +x pra6a.sh; ./pra6a.sh

Input:
- n (non-negative integer)

Output:
- Reverse of the number printed

Key concepts:
- `%` to extract last digit, `/` to remove it, building reverse via `rev=$((rev*10 + rem))`

Viva tip: Handle negative numbers by taking absolute value first if asked.

---

## pra6b.sh — Prime number check
Purpose: Naive prime check by trial division up to n/2.

How to run:
- chmod +x pra6b.sh; ./pra6b.sh

Input:
- n

Output:
- Whether n is prime or not

Key concepts:
- Looping and modulo for divisibility, early break when a divisor found

Explanation:
1. Special-case `n <= 1` as not prime.
2. Check divisibility from 2..n/2 (can be optimized to sqrt(n)).

Viva tip: Discuss algorithm complexity O(n) and optimization to O(sqrt(n)).

---

## pra6c.sh — Palindrome number check
Purpose: Check if a number reads the same forwards and backwards.

How to run:
- chmod +x pra6c.sh; ./pra6c.sh

Input:
- n

Output:
- Palindrome or not

Key concepts:
- Reverse digits into `rev` and compare with original `temp`.

Viva tip: Leading zeros are lost in integer representation; mention how string-based approach would treat such cases.

---

## pra7a.sh — Fibonacci series (iterative)
Purpose: Print first n Fibonacci numbers iteratively.

How to run:
- chmod +x pra7a.sh; ./pra7a.sh

Input:
- n

Output:
- Fibonacci series printed on one line

Key concepts:
- Iterative sequence generation: keep last two values and update.

Viva tip: Compare iterative vs recursive and mention memoization for optimization.

---

## pra7b.sh — Toggle case of a string (using awk)
Purpose: Swap lowercase to uppercase and vice versa using `awk`.

How to run:
- chmod +x pra7b.sh; ./pra7b.sh

Input:
- A string line

Output:
- Same line with swapped letter cases

Key concepts:
- `awk` for per-character processing, `toupper()` and `tolower()`

Explanation:
1. `awk` loop checks each character's range and converts accordingly.
2. Non-letter characters are printed unchanged.

Viva tip: Show a short `tr` alternative: `echo "$str" | tr '[:upper:][:lower:]' '[:lower:][:upper:]'`.

---

## pra8.sh — CPU Scheduling: FCFS and SJF (non-preemptive)
Purpose: Demonstrates scheduling metrics: waiting time (WT) and turnaround time (TAT).

How to run:
- chmod +x pra8.sh; ./pra8.sh

Input:
- Uses built-in arrays `bt` (burst times) and `at` (arrival times)

Output:
- Printed WT and TAT for each process and average WT/TAT for FCFS and SJF

Key concepts:
- FCFS: processes executed in arrival order; compute WT cumulatively and subtract arrival time.
- SJF (non-preemptive): at each time choose shortest available job, update WT/TAT; if none available increment time.

Viva tip: Explain how time advancement works when no process has arrived and why arrival times change waiting times.

---

## pra9.sh — Producer-Consumer simulation
Purpose: Single-threaded simulation of producer-consumer problem using integer semaphores (`mutex`, `empty`, `full`).

How to run:
- chmod +x pra9.sh; ./pra9.sh

Input:
- Menu: 1 (Produce), 2 (Consume), 3 (Exit)

Output:
- "Item Produced"/"Item Consumed" messages or waiting status

Key concepts:
- Simulated semaphores with integers: `empty`, `full`, `mutex`.
- Buffer counter increments/decrements and checks.

Viva tip: Emphasize that this is NOT real concurrency — in real systems use kernel semaphores, pthreads, or IPC primitives. Discuss race conditions and how true mutexes protect critical sections.

---

## pra10.sh — Dining Philosophers (basic simulation)
Purpose: Simple interactive simulation of philosopher picking forks to eat.

How to run:
- chmod +x pra10.sh; ./pra10.sh

Input:
- Philosopher number 0–4; 5 to exit

Output:
- "Philosopher X is Eating" or "Philosopher X is Waiting for forks"

Key concepts:
- Resource allocation array `fork=(1 1 1 1 1)` where 1=available, 0=taken.
- Left fork index = p, right fork index = (p+1) % 5 (circular table).

Explanation:
1. `eat()` checks availability of both forks and sets them to 0 when taken; after `sleep 1` forks are released.
2. If forks not available, prints waiting message.

Viva tip: Discuss deadlock scenarios and solutions (e.g., resource hierarchy, odd philosopher picks right first, using semaphores).

---

## pra11.sh — Memory allocation strategies
Purpose: Demonstrate First Fit, Best Fit, and Worst Fit memory allocation algorithms.

How to run:
- chmod +x pra11.sh; ./pra11.sh

Input:
- Block sizes and process sizes are defined inside script

Output:
- Which block each process is allocated to under each strategy or "Not Allocated"

Key concepts:
- First Fit: first block that fits; update remaining space.
- Best Fit: block with smallest leftover after allocation.
- Worst Fit: block with largest leftover (largest block that fits).
- Copy blocks into local `b` per strategy so they don't interfere.

Viva tip: Discuss internal fragmentation and which strategy minimizes waste in which scenarios.

---

## pra12.sh — Page replacement: FIFO and LRU
Purpose: Simulate page replacement algorithms and count page faults.

How to run:
- chmod +x pra12.sh; ./pra12.sh

Input:
- `pages` reference string and `frames` set in script

Output:
- Per-step frames state and total page faults for FIFO and LRU

Key concepts:
- Page fault counting, frame list maintenance.
- FIFO uses a circular index to evict oldest page.
- LRU keeps `last_used` timestamps; evict least recently used frame.

Viva tip: Explain need for data structures to implement LRU efficiently and practical OS implementations (page tables, hardware support).

---

## pra13.sh — Directory organization simulation
Purpose: Simulate single-level and two-level directory schemes (file system structures).

How to run:
- chmod +x pra13.sh; ./pra13.sh

Input:
- Interactive menus for creating/deleting/listing/searching files

Output:
- Messages and file lists per user (two-level) or global (single-level)

Key concepts:
- Indexed arrays for single level: `single_dir`
- Associative array for two-level (user -> list of files): `declare -A user_dir`
- `unset` used to delete entries, manipulation of space-separated strings for per-user files

Viva tip: Explain advantages/disadvantages of directory schemes and how real file systems store metadata (inodes, directories).

---

## pra14.sh — Disk scheduling: FCFS and SCAN
Purpose: Simulate disk head movements and compute total seek time for FCFS and SCAN.

How to run:
- chmod +x pra14.sh; ./pra14.sh

Input:
- `requests` list and `head` position are in the script

Output:
- Step-by-step movements and final total seek time for each algorithm

Key concepts:
- Seek distance = absolute difference between head and request
- FCFS moves in request order
- SCAN moves in one direction, serves requests, goes to end then reverses

Viva tip: Compare SCAN vs C-SCAN and how scheduling affects average seek time.

---

If you want, I can now:
- Add short example input/output blocks for every script (I included the most important examples above),
- Format this README into smaller flashcards per script (one-line summary + 3 exam bullets),
- Or commit this README into the repository for you.

Tell me which of the three follow-ups you prefer and I will produce the updated README or commit it for you.
