#!/bin/bash
wget https://pages.stat.wisc.edu/~jgillett/479/CHTC/wordCounting/shakespeare.tar
tar xvf- shakespeare.tar

cat shakespeare/comedies/* shakespeare/histories/* shakespeare/poetry/* shakespeare/tragedies/* > data.txt

nProcessors=5
data="data.txt"
nDataLines=$(wc -l <$data)
nLinesPerSplitFile=$(($nDataLines / $nProcessors))

remainder=$(($nDataLines % $nProcessors))
if [[ $remainder > 0 ]]; then
  nLinesPerSplitFile=$(($nLinesPerSplitFile + 1))
fi
split -d -l $nLinesPerSplitFile $data "$data."
