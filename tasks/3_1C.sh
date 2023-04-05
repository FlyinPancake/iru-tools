#!/bin/env bash

lscpu | grep 'CPU MHz'| rev | cut -d " " -f 1 | rev