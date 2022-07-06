#!/bin/bash

sort -m outdata.txt.00 outdata.txt.01 outdata.txt.02 outdata.txt.03 outdata.txt.04 >final
uniq -c final > countsOfWords
