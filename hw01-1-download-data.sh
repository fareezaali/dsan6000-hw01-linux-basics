#!/bin/bash
aws s3 ls s3://dsan6000-wikipedia/hourly/
mkdir -p data
aws s3 cp s3://dsan6000-wikipedia/hourly/ data/ --recursive
ls data/*.csv
