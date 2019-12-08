#!/bin/bash

function dotenv {
  export "$(grep -E -v '^#' .env | xargs)"
}
