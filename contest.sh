#!bin/bash

for file1 in ~/yolact/polygon/1/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 eval.py --trained_model=weights/yolact_im700_54_800000.pth --score_threshold=0.15 --top_k=15 --images=$a:$file1"/"$b"_result"
    fi
  done
done

echo "        "

for file1 in ~/yolact/polygon/2/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 eval.py --trained_model=weights/yolact_im700_54_800000.pth --score_threshold=0.15 --top_k=15 --images=$a:$file1"/"$b"_result"
    fi
  done
done


