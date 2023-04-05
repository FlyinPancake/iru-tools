#!/bin/env bash

lscpu | grep 'Vendor ID'| rev | cut -d " " -f 1 | rev