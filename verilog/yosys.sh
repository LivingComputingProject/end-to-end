filename=$(basename -- "$1")
filename="${filename%.*}"
echo "read_verilog $1; flatten; splitnets -ports; hierarchy -auto-top; proc; techmap; opt; abc -g NOR; opt; hierarchy -auto-top; opt_clean -purge; show -format png -prefix $filename-synthesis" | yosys
