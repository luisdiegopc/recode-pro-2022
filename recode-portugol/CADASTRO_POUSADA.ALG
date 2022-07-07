Algoritmo "Cadastro_Hospedagem"
// Disciplina   : [Lógica de Programação]
// Professor   : André
// Descrição   : Cadastra usuários e destinos e consulta por usuários.
// Autor(a)    : Luís Diego Pereira Cavalcante
// Data atual  : 24/06/2022
Var
// Seção de Declarações das variáveis
 nomes: vetor [0..4] de caractere
 valorPassa: vetor [0..4] de real
 destino: vetor [0..4]  de caractere
 op, nome: caractere
 i,j,s: inteiro

Procedimento inicializa()

Inicio
 Enquanto op <> "j" Faca
   Escreval ("¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬")
   Escreval ("         MENU         ")
   Escreval ("______________________")
   Escreval ("(1) CADASTRAR HOSPEDE  ======")
   Escreval ("(2) BUSCAR HOSPEDE  =========")
   Escreval ("(3) SAIR -> ")
   Escreva ("OPÇÃO:  ")
   Leia (op)
   //<<------------------------------------>>
   Se op ="1" Entao
      Limpatela
      Se s=10 entao
         Escreval ("ESGOTOU O LIMITE DE CADASTROS! ")
      Senao
         cadastraHospede()
      Fimse
   Fimse
   Se op = "2" Entao
      Limpatela
         buscarHospede()
   Fimse
   Se op = "3" Entao
     Escreval (" ")
     Escreval (" ")
     Escreval ("**** OBG VOLTE SEMPRE! ****")
     Escreval ("___________________________")
     Escreval (" ")
     Escreval (" ")
     Escreval (" ")
     Pausa
     Limpatela
   Fimse
 Fimenquanto
Fimprocedimento


Procedimento cadastraHospede()

Inicio
  Para i de 0 ate 4 Faca
    Se (nomes[i] = "") Entao
      Escreval ("NOME: ")
      Leia (nomes[i])
      Escreval ("VALOR HOSPEDAGEM R$: ")
      Leia (valorPassa[i])
      Escreval ("DESTINO:  ")
      Leia (destino[i])
      voltarMenu()
      s <- s+1
      Limpatela
    Fimse
  Fimpara
  Escreval ("ESGOTOU O LIMITE DE CADASTROS")
Fimprocedimento

Procedimento voltarMenu()
Inicio
  Escreval ("VOLTAR PARA O MENU ( S/N )?")
  Leia (op)
  Se (op = "S") ou (op = "s")  Entao
    i <- i+1
    Limpatela
    inicializa()
  Senao
    Limpatela
    cadastraHospede()
  Fimse
Fimprocedimento

Procedimento buscarHospede()
Inicio
  j <- 0
  Escreval ("DIGITE O NOME DO HOSPEDE: ")
  Leia (nome)
  Para i de 0 ate 4 Faca
    Se nome = nomes[i] Entao
      Escreval ("NOME:-> ", nomes[i])
      Escreval ("VALOR HOSPEDAGEM R$:-> ", valorPassa[i])
      Escreval ("DESTINO:->  ", destino[i])
      Escreval ("_________________________")
      j <- j+1
    Fimse
  Fimpara
  Se j = 0 Entao
    Escreval ("HOSPEDE INEXISTENTE")
  Fimse
  voltarMenuTwo()
    Limpatela
Fimprocedimento

Procedimento voltarMenuTwo()
Inicio

  Escreval ("VOLTAR PARA O MENU ( S/N ): ?")
  Leia (op)
  Se (op = "S") ou (op = "s")  Entao
    Limpatela
    inicializa()
  Senao
    Limpatela
    buscarHospede()
  Fimse
Fimprocedimento

Inicio
 inicializa()

Fimalgoritmo