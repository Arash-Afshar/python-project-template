#!/bin/bash

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$ROOT"

APP_NAME=${1:my_app_name}

sed -i '' "s/module_name_str/$APP_NAME/g" tests/module_name_str/test_app.py
sed -i '' "s/module_name_str/$APP_NAME/g" tests/context.py

mv src/module_name_str "src/$APP_NAME"
mv tests/module_name_str "tests/$APP_NAME"
