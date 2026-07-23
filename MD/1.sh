#!/bin/bash
echo 5 |gmx pdb2gmx -ignh -f ala.pdb -p ala.top -o ala.gro -water tip4p
gmx editconf -f ala.gro -o box.gro -bt cubic -d 1.0 -c
gmx solvate -cp box.gro -cs tip4p.gro -o bw.gro -p ala.top
gmx grompp -f ion.mdp -c bw.gro -p ala.top -o ion.tpr -maxwarn 2
echo 13 |gmx genion -s ion.tpr -neutral -p ala.top -o ion.gro
gmx grompp -f em.mdp -c ion.gro -p ala.top -o em.tpr -maxwarn 20
gmx mdrun -deffnm em
gmx grompp -f nvt.mdp -r em.gro -c em.gro -p ala.top -o nvt.tpr -maxwarn 20
gmx mdrun -deffnm nvt
gmx grompp -f npt.mdp -r nvt.gro -c nvt.gro -p ala.top -o npt.tpr -maxwarn 20
gmx mdrun -deffnm npt
gmx grompp -f md.mdp -r npt.gro -c npt.gro -p ala.top -o md.tpr -maxwarn 20
gmx mdrun -deffnm md
