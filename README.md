tropical_LT_tropical_LT_tropical-arc
====================================

Example setup for using tropical_LT_tropical_LT_tropical-arc with OpenFst binaries.

## Installation

    # Edit the top two lines of the Makefile to match your own setup.
    make
    # Add this path to LD_LIBRARY_PATH (DYLD_LIBRARY_PATH on OS X).
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD

## Example Run

    fstcompile --arc_type=tropical_LT_tropical_LT_tropical test.txt \
      | fstdraw --portrait --show_weight_one > test.dot
