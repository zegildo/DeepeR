# Problema da Contagem de Intersecções

Dada uma tabela com duas colunas **letra** e **número** aonde **letra** é uma letra do alfabeto [A..Z] randomincamente selecionada e **número** é um número entre [0,10] também randomicamente selecionado o objetivo é produzir como saída uma nova tabela contendo três colunas: letra inicial (letra_i), letra final (letra_f) e peso, de modo que o peso seja o valor correspondente a quantidade de vezes que o mesmo número ocorre simultaneamente entre _letra_i_ e _letra_f_.

**Exemplo 1:**

_input_:

| letra | numero |
|-------|-------|
| A     | 5     |
| B     | 3     |
| C     | 5     |
| D     | 3     |
| E     | 3     |
| G     | 1     |


_output_:

| letra_i | letra_f | peso |
|---------|---------|------|
| A       | B       | 0    |
| A       | C       | 1    |
| A       | D       | 0    |
| A       | E       | 0    |
| A       | G       | 0    |
| B       | C       | 0    |
| B       | D       | 1    |
| B       | E       | 1    |
| B       | G       | 0    |
| C       | D       | 0    |
| C       | E       | 0    |
| C       | G       | 0    |
| D       | E       | 1    |
| D       | G       | 0    |

**Exemplo 2**


_input_:

| letra | numero |
|-------|-------|
| A     | 5     |
| B     | 3     |
| C     | 5     |
| A     | 3     |
| B     | 1     |
| C     | 1     |

_output_:

| letra_i | letra_f | peso |
|---------|---------|------|
| A       | B       | 1    |
| A       | C       | 1    |
| B       | C       | 1    |
