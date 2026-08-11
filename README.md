# ANALOG_DESIGNS

Analog IC circuit simulation and schematic design using open-source EDA tools — built and simulated entirely on a free, open-source toolchain (Xschem + Ngspice + SkyWater Sky130 PDK).

## 📁 Repository Structure

```
ANALOG_DESIGNS/
├── XSCHEM_DESIGNS/        # Schematic capture files (.sch) built in Xschem
└── NGSPICE_SIMULATIONS/   # SPICE netlists, testbenches, and simulation outputs
```

- **XSCHEM_DESIGNS/** — Circuit schematics drawn in [Xschem](https://xschem.sourceforge.io/stefan/index.html), a hierarchical schematic capture and netlisting tool for VLSI/analog design.
- **NGSPICE_SIMULATIONS/** — Netlists and simulation results generated and run using [Ngspice](https://ngspice.sourceforge.io/), an open-source mixed-level/mixed-signal circuit simulator.

## 🛠️ Tools & Technology

| Tool | Purpose |
|---|---|
| **Xschem** | Schematic capture and hierarchical netlist generation |
| **Ngspice** | SPICE-level circuit simulation (DC, AC, transient analysis) |
| **Sky130 PDK** | SkyWater open-source 130nm process design kit for device models |

## 🎯 About This Repository

This repository documents my hands-on exploration of analog IC design using a fully open-source flow — an alternative to proprietary tools like Cadence Virtuoso or Synopsys HSPICE for learning and prototyping analog circuits. Each design typically includes:

- A schematic built in Xschem
- A corresponding SPICE netlist/testbench
- Simulation results (DC operating point, AC/Bode response, transient waveforms) via Ngspice

## 🚀 Getting Started

### Prerequisites
- Linux (native or WSL)
- [Xschem](https://github.com/StefanSchippers/xschem)
- [Ngspice](https://ngspice.sourceforge.io/)
- [Sky130 PDK](https://github.com/google/skywater-pdk) (via [volare](https://github.com/efabless/volare) recommended)

### Running a Simulation
```bash
# Clone the repository
git clone https://github.com/soumya-dev-nayak/ANALOG_DESIGNS.git
cd ANALOG_DESIGNS

# Open a schematic in Xschem
xschem XSCHEM_DESIGNS/<design_name>.sch

# From within Xschem: generate netlist (Netlist button) → Simulate (Simulate button)
# Or run a netlist directly with ngspice
ngspice NGSPICE_SIMULATIONS/<netlist_name>.spice
```

## 📌 Roadmap

- [ ] Add circuit-specific README/documentation per design
- [ ] Include simulation waveform screenshots (DC/AC/transient plots)
- [ ] Add layout (Magic VLSI) and post-layout verification (Netgen LVS/DRC)

## 👤 Author

**Soumya Dev Nayak**
B.Tech ECE, Silicon University
GitHub: [@soumya-dev-nayak](https://github.com/soumya-dev-nayak)

## 📄 License

This project is open for educational and reference use. Feel free to explore, fork, and adapt the designs.
