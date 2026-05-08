CC = gcc
CFLAGS = -Wall -Wextra -pthread
SRC_DIR = src
BIN_DIR = .

all: admissions patient_simulator

admissions: $(SRC_DIR)/admissions.c $(SRC_DIR)/hospital_types.h
	$(CC) $(CFLAGS) -o $(BIN_DIR)/admissions $(SRC_DIR)/admissions.c

patient_simulator: $(SRC_DIR)/patient_simulator.c $(SRC_DIR)/hospital_types.h
	$(CC) $(CFLAGS) -o $(BIN_DIR)/patient_simulator $(SRC_DIR)/patient_simulator.c

clean:
	rm -f $(BIN_DIR)/admissions $(BIN_DIR)/patient_simulator
	rm -f memory_log.txt patient_records.dat
	rm -f /tmp/triage_pipe /tmp/discharge_fifo_*

run: all
	bash ./scripts/start_hospital.sh --strategy best
