# BristolCircuit

Welcome to the **BristolCircuit** repository — a practical reference for researchers and practitioners working in the field of **privacy-preserving cryptography**, especially those utilizing **Multi-Party Computation (MPC)**.

## Overview

In MPC, one of the foundational components is the circuit representation used for garbling and secure evaluation. These circuits are essential for securely computing functions over distributed inputs and include:

- **Arithmetic Operations**
    - Signed and unsigned addition, subtraction, etc.

- **Comparison Operators**
    - `<`, `<=`, `>`, `>=`, `==`, `!=` for integers and floating-point numbers.

- **Cryptographic Primitives**
    - Hash functions such as **SHA-2**,
    - Permutation functions like **Keccak-f** (building block for **SHA-3**),
    - Extendable Output Functions (XOFs) such as **SHAKE256/512**.

In the context of MPC, these circuits are typically represented in the **Bristol format**. While simple circuits can be written by hand, this approach does **not scale** to more complex cryptographic constructions.

## Recommended Workflow

To reliably generate and work with complex circuits, we follow a three-step process:

1. **Design the circuit** in a hardware description language (HDL) such as **Verilog** or **VHDL**.
2. **Synthesize the HDL** into a netlist using synthesis tools (e.g., [Yosys](https://www.yosyshq.com/)).
3. **Convert the netlist** into the **Bristol circuit format** using appropriate tools or custom scripts (e.g., [SCALE-MAMBA](https://github.com/KULeuven-COSIC/SCALE-MAMBA)).

## Motivation

During my Ph.D. research, I noticed a lack of consolidated resources explaining how to go from HDL all the way to usable Bristol circuits. While individual steps are documented in isolation, **no complete reference pipeline existed** that brought everything together. This repository aims to:

- Provide a comprehensive and reproducible pipeline for Bristol circuit generation.
- Offer a set of ready-to-use circuits for MPC research and applications.
- Help the community build and extend more complex cryptographic circuits with confidence.

## Goals

- ✅ Provide high-quality reference circuits in Bristol format
- ✅ Demonstrate HDL → Netlist → Bristol workflow
- ✅ Facilitate reproducibility and scalability in circuit construction
- ✅ Serve as an educational and practical tool for privacy-preserving cryptography

## Citations

The HEIR project can be cited in academic/industrial work through following entry:

```text
@misc{bristolcircuitlib2025,
  author       = {Kiarash Sedghighadikolaei},
  title        = {BristolCircuitLib: Practical Bristol Circuit Reference for Privacy-Preserving Cryptography},
  year         = {2025},
  howpublished = {\url{https://github.com/kiarashsedghigh/BristolCircuit}},
}
```
