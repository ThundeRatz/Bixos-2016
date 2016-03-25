#!/bin/bash
# Flávia.sh, mostra apenas o que está na terceira coluna de saída das informações sobre os processos listados pelo comando ps aux.

ps aux | cut -b 17-19
