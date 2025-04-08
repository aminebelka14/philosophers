# philosophers

**philosophers** is a concurrency simulation in **C** based on the classic Dining Philosophers problem. It’s designed to explore multithreading, synchronization, and deadlock avoidance using low-level system primitives like `pthread` and `mutex`.

## 💡 Overview

- 🧵 Each philosopher is a **thread**
- 🔐 Forks are protected by **mutexes**
- 🕰️ Logs state changes with **precise timestamps**
- 🛑 Simulation ends if a philosopher dies or when all have eaten enough
- ❌ No use of global variables or busy waiting

## 🧰 Features

- Accurate state logging:
  - `has taken a fork`
  - `is eating`
  - `is sleeping`
  - `is thinking`
  - `died`
- Deadlock avoidance and race condition prevention
- Optional eating limit to gracefully end the simulation
- Clean error handling and resource management

### Build
```bash
make
```
### Run
```
./philo <number_of_philosophers> <time_to_die> <time_to_eat> <time_to_sleep> [number_of_times_each_philosopher_must_eat]
```
### Exemple
```
./philo 5 800 200 200
```

