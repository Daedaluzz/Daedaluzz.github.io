Algoritmo "entrega pseudocódigo"
//Cadastro com nome, telefone e e-mail. Cadastro de destino.
//Consulta de qualquer um dos dados
Var//var principal
   vno,vcp,vnu,vem,voc,voe,vdc,vde:vetor[1..10] de caractere
   i:inteiro
   es:caractere

procedimento busca(pno, pnu:caractere)//procedimento busca
var
   esp,ip,ne:inteiro
   no,nu,des,cpf:caractere
inicio
   repita
      ip<-1
      se vno[1]<>"" entao
         escreval("===================== 2 - Buscar Cadastro ========================")
         escreval("Digite 1 - Procura por nome.")
         escreval("Digite 2 - Procura por CPF.")
         escreval("Digite 3 - Procura por telefone.")
         escreval("Digite 4 - Procura por destino.")
         escreval("Digite 0 - Para voltar ao início.")
         leia(esp)
         ne<-0
         ip<-1
         escolha esp
         caso 1
            limpatela
            escreval("Digite o nome para consulta:")
            leia(no)
            enquanto ip<i faca
               se vno[ip] = no entao
                  escreval("Nome: ",vno[ip]," | CPF: ",vcp[ip])
                  escreval("Telefone: ",vnu[ip]," | Email: ",vem[ip])
                  escreval("Saída: ", voc[ip],"/",voe[ip])
                  escreval("Chegada: ", vdc[ip],"/",vde[ip])
                  ne<-0
                  ip<-i
               senao
                  ip<-ip+1
                  ne<-1
               fimse
            fimenquanto
            se ne=1 entao
               escreval("Nome não encontrado no banco de dados")
            fimse
         caso 2
            limpatela
            escreval("Digite o cpf para consulta:")
            leia(cpf)
            enquanto ip<i faca
               se vcp[ip] = cpf entao
                  escreval("Nome: ",vno[ip]," | CPF: ",vcp[ip])
                  escreval("Telefone: ",vnu[ip]," | Email: ",vem[ip])
                  escreval("Saída: ", voc[ip],"/",voe[ip])
                  escreval("Chegada: ", vdc[ip],"/",vde[ip])
                  ne<-0
                  ip<-i
               senao
                  ip<-ip+1
                  ne<-1
               fimse
            fimenquanto
            se ne=1 entao
               escreval("CPF não encontrado no banco de dados")
            fimse
         caso 3
            limpatela
            escreva("Digite o telefone para consulta:")
            leia(nu)
            enquanto ip<i faca
               se vnu[ip] = nu entao
                  escreval("Nome: ",vno[ip]," | CPF: ",vcp[ip])
                  escreval("Telefone: ",vnu[ip]," | Email: ",vem[ip])
                  escreval("Saída: ", voc[ip],"/",voe[ip])
                  escreval("Chegada: ", vdc[ip],"/",vde[ip])
                  ne<-0
                  ip<-i
               senao
                  ip<-ip+1
                  ne<-1
               fimse
            fimenquanto
            se ne=1 entao
               escreval("Telefone não encontrado no banco de dados.")
            fimse
         caso 4
            limpatela
            escreva("Digite o destino para consulta:")
            leia(des)
            enquanto ip<i faca
               se vdc[ip] = des entao
                  escreval("Nome: ",vno[ip]," | CPF: ",vcp[ip])
                  escreval("Telefone: ",vnu[ip]," | Email: ",vem[ip])
                  escreval("Saída: ", voc[ip],"/",voe[ip])
                  escreval("Chegada: ", vdc[ip],"/",vde[ip])
                  ne<-0
                  ip<-i
               senao
                  ip<-ip+1
                  ne<-1
               fimse
            fimenquanto
            se ne=1 entao
               escreval("Destino não encontrado no banco de dados.")
            fimse
         caso 0
            limpatela
         outrocaso
            escreval("Opção inválida")
         fimescolha
      senao
         escreval("Banco de dados de cadastro vazio.")
      fimse
   ate esp=0
fimprocedimento//fim procedimento busca
procedimento cadastroD(pnd:caractere)//procedimento cadastro destino
var
   ip:inteiro
inicio
ip<-1
   se i>1 entao
      se (voe[10]="") entao
         enquanto ip<i faca
            se voe[ip]="" entao
               escreval("Digite a origem de ", vno[ip])
               escreva("Estado:")
               leia(voe[ip])
               escreva("Cidade:")
               leia(voc[ip])
               escreval("Digite o destino de ", vno[ip])
               escreva("Estado:")
               leia(vde[ip])
               escreva("Cidade:")
               leia(vdc[ip])
               escreval("Cadastro de destino efetuado com sucesso.")
               ip<-i
            senao
               ip<-ip+1
            fimse
            fimenquanto
         senao
            escreval("Número de cadastros excedido.")
         fimse
      senão
         escreval("Nenhum cadastro pessoal encontrado.")
      fimse
fimprocedimento//fim procedimento cadastro destino
procedimento cadastroN(pno:caractere)//procedimento cadastro
var
inicio
   se (vno[10]="") entao
      escreval("========================= Cadastro ===============================")
      escreval("Digite o nome que deseja cadastrar:")
      leia(vno[i])
      escreval("Digite o telefone de ",vno[i],":")
      leia(vnu[i])
      escreval("Digite o CPF de ",vno[i],":")
      leia(vcp[i])
      escreval("Digite o e-mail de ",vno[i],":")
      leia(vem[i])
      i<-i+1
      escreval("Cadastro realizado com sucesso")
      escreval("==================================================================")
   senao
      escreval("Número de cadastros excedido.")
   fimse
fimprocedimento//fim procedimento cadastro

Inicio//código principal
   i<-1
   escreval("==================================================================")
   escreval("======================= FAROL DESTINOS ===========================")
   repita
      escreval("====================== 1 - Novo Cadastro =========================")
      escreval("==================== 2 - Cadastrar Destino =======================")
      escreval("===================== 3 - Buscar Cadastro ========================")
      escreval("=========================== 0 - Sair =============================")
      leia(es)
      escolha es
      caso "1"
         limpatela
         cadastroN("")
      caso "2"
         limpatela
         cadastroD("")
      caso "3"
         limpatela
         busca("","")
      caso "0"
         limpatela
         escreval("================= Obrigado por viajar com a gente! ===============")
      outrocaso
         limpatela
         escreval("Escolha inválida")
      fimescolha
   ate es="0"
Fimalgoritmo