805x-sched
==========

This is a simple RTOS optimized for the 8051 processor. Currently it supports the
KeilC51 compiler. It has the following features:

  - Scheduler with priority levels, using round-robin for tasks of same-priority
  - Suspend/Resume tasks
  - Mutexes
  - Binary Semaphores
  - 2.5kbyte code footprint with keil level 7 optimizer
  - RAM footprint starting from 25 bytes iram + 80 bytes xram, xram grows
according to number of tasks and priorities
  - User deﬁned trap for erroneous behavior
  - Preeptive or cooperative
