#!/bin/bash

src_ext="xls"
out_ext="csv"
src_dir="xls"
out_dir="csv"

for src_file in ${src_dir}/*.${src_ext}; do
	file=`echo $src_file | sed -e "s/^${src_dir}\///" -e "s/.${src_ext}$//"`
	echo "converting ${file}.${src_dir} to ${file}.${out_ext}";
	libreoffice --headless --convert-to ${out_ext} --outdir ${out_dir} ${src_dir}/${file}.${src_ext} 
done
