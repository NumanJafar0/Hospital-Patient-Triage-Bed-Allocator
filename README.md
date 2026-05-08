# Hospital Patient Triage & Bed Allocator

Operating Systems Semester Project — CL2006 Operating Systems Lab  
Spring 2026 — FAST-NUCES CFD Campus

---

## Project Description

The Hospital Patient Triage & Bed Allocator is a system-level Operating Systems project developed in C on Linux. The project simulates a real-world hospital emergency room where patients arrive, receive a triage priority, and are assigned hospital beds based on severity and available resources.

The system demonstrates core Operating System concepts including:

- Process Management
- Inter-Process Communication (IPC)
- CPU Scheduling
- POSIX Threads
- Synchronization
- Semaphores
- Shared Memory
- Memory Allocation Strategies
- Fragmentation Handling

Patients are admitted concurrently while the system safely manages limited ICU, Isolation, and General Ward resources.

---

# Features

- Patient triage with priority assignment
- Multi-process patient simulation using `fork()` and `exec()`
- IPC using:
  - Anonymous Pipes
  - Named FIFO
  - Shared Memory
- Priority-based patient scheduling
- Multi-threaded admissions management
- ICU and Isolation capacity control using semaphores
- Best-Fit, First-Fit, and Worst-Fit allocation strategies
- Memory coalescing and fragmentation reporting
- Paging simulation for internal fragmentation analysis

---

# Technologies Used

- Language: C
- Platform: Linux
- POSIX Threads (`pthread`)
- POSIX Semaphores
- Shared Memory APIs
- GCC Compiler
- Shell Scripting (Bash)

---

# Project Structure

```text
├── src/
│   ├── admissions.c
│   ├── patient_simulator.c
│   ├── scheduler.c
│   ├── memory_allocator.c
│   ├── synchronization.c
│   ├── shared.h
│
├── scripts/
│   ├── triage.sh
│   ├── start_hospital.sh
│   ├── stop_hospital.sh
│   ├── stress_test.sh
│
├── logs/
│   ├── schedule_log.txt
│   ├── memory_log.txt
│
├── Makefile
├── README.md
└── report.pdf
