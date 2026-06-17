#! /bin/sh
export task="spec-to-rtl"
export task=code-complete-iccad2023
export model=$OPENAI_API_MODEL
export shots=1
export samples=2
# conda deactivate
# conda activate codex
mkdir -p build
rm build/* -rf
cd build
../configure  --with-task=$task --with-model=$model --with-examples=$shots --with-samples=$samples 
#  --with-temperature=$temperature --with-top-p=$top_p
make -j
cd ..
# cp -r build dpsk_build_$(date +%Y%m%d_%H%M%S)

# conda deactivate