programa {
  funcao inicio() {
//Declaraçao de variaveis 
real saldo = 0 , saque , deposito 
inteiro menu 
cadeia controle 
cadeia extrato = ""
cadeia senha = "Pizza123"
cadeia pswd

enquanto(menu != 0){
 escreva("Digite sua senha: ")
 leia(pswd)
 se(pswd == senha){
 escreva(" |------- MENU -------| \n")
 escreva(" 1- SALDO R$ " , saldo , "       |\n")
 escreva(" 2 - SAQUE                       |\n")
 escreva(" 3 - DEPOSITO                    |\n")
 escreva(" 4 - EXTRATO                     |\n")
 escreva(" 0 - SAIR                        |\n")
 escreva(" |-------------------------------|\n")
 escreva(" ESCOLHA: ")
 leia(menu)
 limpa()
}
senao {
escreva("Senha inválida. Tente novamente.")
}
escolha(menu) {
 
 caso 1: 
 escreva("Saldo = " , saldo , "\n")
 pare
 
 caso 2: 
 escreva("Digite sua senha: ")
 leia(pswd)
 se(pswd == senha ) {
 escreva("Digite o seu valor para sacar: ")
 leia(saque)

enquanto(saque < 0){
 escreva("Valor digitado inválido. Tente novamente: ")
 leia(saque)
 }

se(saldo >= saque) {
  saldo = saldo - saque 
  escreva(" Saque realizado com sucesso! \n")
  escreva("Aperte ENTER para continuar. \n")
  leia(controle)
  limpa()
  extrato = extrato + "Saque ------- R$" + saque + "\n"
}

senao {
  escreva("Saldo insuficiente. \n")
  escreva("Aperte ENTER para continuar. \n")
  leia(controle)
  limpa()
}
}
senao{
escreva("Senha inválida. Tente novamente. ")
}
pare

caso 3: 
  escreva("Digite sua senha: ")
  leia(pswd)
  se(pswd == senha) {
  escreva("Digite o valor para depositar: \n")
  leia(deposito)

enquanto(deposito < 0){
escreva("Valor digitado inválido. Tente novamente: ")
 leia(deposito)
}

saldo = saldo + deposito 
extrato = extrato + "DEPOSITO ---------- R$" + deposito + " \n "
escreva("Deposito realizado com sucesso! \n ")
escreva("Aperte ENTER para continuar.")
leia(controle)
limpa()
pare
}
senao {
escreva("Senha inválida. Tente novamente.")
}
caso 4:
escreva("Digite sua senha: ")
leia(pswd)
se(pswd == senha) {
escreva(extrato)
escreva("Aperte ENTER para continuar.")
leia(controle)
limpa()
}
senao {
escreva("Senha inválida. Tente novamente.")
}
pare
}
} 
}
}
