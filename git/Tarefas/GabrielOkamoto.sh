#!/bin/bash
# Tarefa 10, mostra o numero de caracteres da saida do comando
# que mostra todos os arquivos e pastas com profundidade ate 2
find -maxdepth 2 | wc -m
