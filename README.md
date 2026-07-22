# Computer-aided Multi-Shell Electrostatic Remodeling of BhS7Xyl for Enhanced Activity and Thermostability

## Description
This repository contains all raw computational files and source data for the manuscript *"Computer-aided Multi-Shell Electrostatic Remodeling of BhS7Xyl for Enhanced Activity and Thermostability"* (Manuscript ID: IJBIOMAC-D-26-12384), submitted to *International Journal of Biological Macromolecules*.

All data provided here support full reproducibility of the computational workflow described in the paper, including constant-pH molecular dynamics, stability prediction, deep learning-based fitness scoring, molecular docking, and thermal pulse analysis.

## Repository Structure
| Directory               | Content description                                                                 | Corresponding section in manuscript |
|-------------------------|-------------------------------------------------------------------------------------|-------------------------------------|
| `foldx_files/`          | FoldX repair output PDBs, configuration files, and raw ΔΔG energy term tables for all single-point mutants | Section 2.1 / Section 3.1           |
| `rosetta_files/`        | Rosetta Cartesian_ddG XML protocol files, command line scripts, and output score files | Section 2.1 / Section 3.1           |
| `ecnet_files/`          | ECNet model weights, configuration files, input sequences, and normalized fitness prediction tables | Section 2.1 / Section 3.1           |
| `md_files/`             | All molecular dynamics files: topology (.top), parameter (.mdp), initial coordinates, and analysis scripts for constant-pH MD, equilibrium MD, and thermal pulse simulations | Section 2.1 / Section 3.5           |
| `docking_files/`        | Input structures, output PDB coordinates of WT and mutant xylohexaose complexes, and docking parameter records | Section 2.12 / Section 3.4          |

## Software Versions
- GROMACS 5.0.3
- FoldX v5.0
- Rosetta 3.13
- ECNet v1.0
- AutoDock Vina 1.2.0
- AutoDockTools 1.5.7

## Notes
- All simulations were performed on the mature BhS7Xyl sequence (residues 1–350) with the C-terminal His-tag removed.
- Full per-residue pLDDT scores of the AlphaFold2 model and individual ΔΔG prediction tables are available in the Supporting Information of the manuscript.

## Citation
If you use the data or scripts from this repository in your work, please cite our paper:
> Tan C, et al. Computer-aided Multi-Shell Electrostatic Remodeling of BhS7Xyl for Enhanced Activity and Thermostability. International Journal of Biological Macromolecules, 2026.

## Contact
Prof. Dr. Mengfei Long  
College of Pharmaceutical Sciences, Southwest University  
Email: mengfeilong@swu.edu.cn
