#!/bin/bash

# clears the screen and put the cursos black (on black background) until enter key is press

clear
setterm -cursor off
read text
setterm -cursor on