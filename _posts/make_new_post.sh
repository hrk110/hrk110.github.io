#!/bin/bash

set -euC

set +u
if [[ -z $1 ]]; then
  echo "usage: ./make_new_post.sh TITLE" >&2
  exit 1
fi
set -u

readonly title="${1}"
date_str="$(date "+%F")"
readonly date_str
readonly filename="${date_str}-${title}.md"

cat << EOF > "${filename}"
---
layout: post
title: ${title}
date: ${date_str} 00:00:00 +0900 # date here
categories: "" # category here
published: true
---

## section

<!-- content here -->
EOF
