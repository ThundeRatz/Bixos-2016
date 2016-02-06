# C
------------------------------------------------------------------
Primeiramente, é importante que já saibam o básico de C, recomendo o seguinte:
* [Learn-C][learnc] - Um tutorial interativo de C, em inglês (Até a parte de Structures);
* [Material de MAC2166][mac2166] - Apostila de MAC2166 (Introdução à Computação de vocês) sobre C.
[//]: # (Adicionar mais coisas aqui?)

Além disso, existe o maravilhoso Google =P

Qualquer dúvida podem me perguntar!

---
### Edição e compilação
Provavelmente já te mandaram baixar o [Code::Blocks][codeblocks] na aula de MAC2166 para editar e compilar seus códigos em C. É melhor que usem um editor de texto separado e compilem pelo terminal, assim já treinam linha de comando. Recomendo o [Atom][atom], que é um editor de texto open-source do GitHub bem customizável, mas podem usr o Code::Blocks se preferirem.

Para essa aula:
```bash
# Na pasta que clonaram o seu fork do repositório dos bixos
~/Bixos-2016$ cd C
~/Bixos-2016/C$ mkdir ThunderC # Cria uma pasta com o nome do seu programa
                        	   # Onde ficarão os cabeçalhos e códigos-fonte
# Para compilar
~/Bixos-2016/C/ThunderC$ gcc -o nomeDoPrograma *.c #[-outras flags]
# Para executar
~/Bixos-2016/C/ThunderC$ ./nomeDoPrograma
```
[//]: # (Talvez tirar essa parte (depois do Para essa aula:) aqui de cima e colocar só depois de tudo)

---
## Organização de Código
Como já deve~~ria~~m saber, essa é a estrutura básica de um programa em C:
```c
#include <stdio.h>       // Isso é um header
// Outros includes
#define Constante 1
// Outras diretivas de compilador

// Declaração de funções (protótipos)
int func(int a);

int main() {
	// código
}

// Definição de funções
int func(int a) {
	// código
}
```
Mas e se o código for muito grande e/ou tiver muitas funções? Como organizá-lo e facilitar a manutenção e compreensão? Simples: dividimos o código em vários arquivos!
* Headers - Cabealhos, onde ficam as declarações de funções e definições de constantes;
* Sources - Fontes, onde ficam as definições das funções declaradas nos headers.

### Headers
Um header é um arquivo terminado em .h que contém a declaração de funções e, se necessário, definições de constantes, por exemplo:
```c
//func.h
#pragma once // Essa é uma diretiva que impede esse arquivo de ser processado pelo
			 // compilador mais de uma vez, caso mais de um arquivo o inclua.
// Também se pode incluir outros headers aqui, se forem necesários
#define CONST 10

int func(int a);

```
### Source Files
Um arquivo fonte é um arquivo terminado em .c que contém as definições de funções, por exemplo:
```c
//func.c
#include "func.h" // Temos que incluir

int func(int a) {
	int b = CONST * a; // Podemos usar CONST, que foi definido no header incluso
	return b;
}
```

[//]: # (Continuar aqui, exemplo na main e de compilação)
[//]: # (Pedir pra testarem e darem pull no fork deles pra treinarem git)

---

Se tiverem *qualquer* dúvida, não exitem em nos perguntar, seja pessoalmente ou pelo [fórum][forum], estamos aqui para ensinar!

[learnc]: http://www.learn-c.org/
[mac2166]: http://www.ime.usp.br/~hitoshi/introducao/
[codeblocks]: http://www.codeblocks.org/
[atom]: https://atom.io/
[forum]: http://forum.thunderatz.org/
