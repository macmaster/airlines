#!/bin/bash

for xfile in xls/*.xls; do
	xlsx2csv "$xfile" "${xfile%.xls}.csv";
done

