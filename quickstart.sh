#!/bin/bash

git clone https://github.com/A-I-O-T/smart-wc.git

cd smart-wc
npm install

npm run dev --mock=true

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open http://localhost:3000
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open http://localhost:3000
elif [[ "$OSTYPE" == "cygwin" ]]; then
    cygstart http://localhost:3000
elif [[ "$OSTYPE" == "msys" ]]; then
    start http://localhost:3000
fi