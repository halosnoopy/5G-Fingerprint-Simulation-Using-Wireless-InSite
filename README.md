# 5G-Indoor-Fingerprint-Simulation-Using-Wireless-InSite

## Overview
This project presents a simulation-based framework for generating **5G fingerprint datasets** using **Wireless InSite**, a high-fidelity ray-tracing simulator.  
The goal is to build realistic datasets for indoor positioning and localization research by modeling multipath propagation, antenna patterns, and 3D indoor structures under realistic 5G scenarios.

The repository includes:
- **Wireless InSite simulation setups** for dataset generation,  
- **Processed fingerprint data** (RSRP, RSSI, AoD, etc.),  
- **MATLAB scripts** for extracting, loading, and transforming data for machine learning algorithms.

---

## Motivation
Accurate indoor positioning is essential for emerging **5G-enabled IoT and smart-building systems**.  
Real-world fingerprint collection is expensive and inconsistent due to environmental changes and multipath fading.  
This work proposes a **simulation-driven method** to overcome these challenges by using **Wireless InSite** to generate realistic radio fingerprints under controlled parameters, ensuring reproducibility and scalability.

---

## Simulation Framework (Wireless InSite)
The dataset was generated using **Wireless InSite 3D ray-tracing** with the following configuration:

| Parameter | Description |
|------------|-------------|
| **Scenario** | Multi-floor indoor office environment |
| **Carrier frequency** | 3.5 GHz |
| **Transmitter (TX)** | 8×8 MIMO array, directional beamforming |
| **Receiver (RX)** | Half-wave dipole antenna |
| **Reflections / Transmissions / Diffractions** | 6 / 4 / 1 |
| **Diffuse Scattering** | Enabled |
| **Receiver grid spacing** | ≈ 3 m |
| **Simulation output** | RSRP, RSSI, AoD, CIR, delay spread |

Each simulation exports **Receiver Summary Statistics** and **MIMO Channel Data** as CSV/TSV files, forming the raw dataset for further processing.

---

## Dataset Description
Two primary datasets are provided:

1. **Single-Slot Fingerprint Dataset**  
   Each record represents one receiver location’s fingerprint at a single time slot.

2. **Time-Series Fingerprint Dataset**  
   Contains sequences of fingerprints for each receiver location across multiple time steps, capturing signal fluctuations and temporal dynamics.

### Key Features
| Feature | Description |
|----------|-------------|
| `x, y, z` | Receiver coordinates (m) |
| `RSRP_i` | Reference signal received power from TX_i |
| `RSSI_i` | Received signal strength indicator |
| `AoD_i` | Angle of departure |
| `DelaySpread` | Channel delay spread |
| `PowerDelayProfile` | Aggregated power-delay features |

---
