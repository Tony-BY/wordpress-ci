#!/bin/sh
if ! [ -d /gh-pages ]; then
mkdir -p gh-pages
fi
cd gh-pages
helm package ../charts/wordpress
helm repo index --url https://tony-by.github.io/wordpress-ci/ --merge index.yaml .