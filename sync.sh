#!/bin/sh
mkdir -p gh-pages
cd gh-pages
helm package ../charts/wordpress
helm --url https://tony-by.github.io/wordpress-ci/ --merge index.yaml .