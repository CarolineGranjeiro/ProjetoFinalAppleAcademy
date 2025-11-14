import Foundation
print ("Seja Bem-Vindo ao jogo: PERDIDO NA MITOLOGIA 🧜🏽")
print("-------------------------------------------------------------")

print("Você se lembra vagamente do seu passado, porém, quem você realmente é? Você tem um sentimento confuso, pois, sabe que o local cujo está rodeado não pertence a você. Tem algo errado!! Mas qual será o problema??")
print("----------------------------------------------------------------")
 
print("O primeiro passo para você descobrir esse mistério é:  Se localizar!")

print ("Eiii, tem algo voando em cima da sua cabeça! Espere, é uma carta branca e dourada e no remetente está escrito….. Pergaminho Enviado Por HermesOMensageiro. Hermes? Que coincidência, até parece um livro do Rick Riordan 🤣. Você quer abrir a carta? ")



var carta: [String] = [
"Você gastou todas as suas vidas extras… Eu avisei para não fazer isso...",
"Vá até a escola!"
]

print("Digite 1 para abrir a carta, ou 2 para ignorar:")

if let respostaLida = readLine(), let resposta = Int(respostaLida) {

if resposta == 1 {
print(carta[0])
print("""
Você congela ao ver a carta...
""")

} else if resposta == 2 {
print("Mensagem ignorada com sucesso...")
print("""
Ao olhar ao redor você percebe um baralho de Delfos ao seu lado...
""")

} else {
print("Opção inválida.")
}

} else {
print("Entrada inválida. Tente novamente.")
}

print("Digite a quantidade de Cartas que você deseja ler - Recomendado 5 - Escolha de 1 a 5:")

if let quantidade = readLine(), let quant = Int(quantidade) {

if quant >= 1 && quant <= 5 {
print("Você escolheu \(quant) cartas.\n")

let CartasCura = ["Ambrosia", "Nectar "]
let CartasDist = ["Lança Espiritual", "Chicote Místico"]
let CartasArma = ["Arco de Apólo", "Tridente do Poseidon"]
let CartasEsp = ["Visão do Futuro", "Volta ao passado"]

var mochila = Dictionary<String, String>()
    
let cura_ale = CartasCura.randomElement()!
let dist_ale = CartasDist.randomElement()!
let arma_ale = CartasArma.randomElement()!
let esp_ale = CartasEsp.randomElement()!

    mochila ["Arma"] = arma_ale
    mochila ["Distracao"] = dist_ale
    mochila ["Cura"] = cura_ale
    mochila ["Especial"] = esp_ale
    
    
print ("Seu Destino já foi decidido pela C artas de Delfos ")
print("Sua carta de Cura é: \(cura_ale)")
print("Sua carta de Distracao é: \(dist_ale)")
print("Sua carta de Arma é: \(arma_ale)")
print("Sua carta Especial é: \(esp_ale)")

} else {
print("Valor inválido! Digite apenas números entre 1 e 5.")
}

} else {
print("Entrada inválida! Digite um número.")
}






print("---------------------------------------------------------------------------------")

print("Agora você está equipado. O momento está favorável para explorar essa cidade e refletir sobre todas essas informações. Afinal… acho que você é um deus ou algo do tipo...")

print("Você decide ir a algum lugar ver se arranja algo por poucos trocados, afinal, encontrou algumas moedas no bolso.")

print("1 - Posto de gasolina")
print("2 - Floresta")
print("3 - Hospital Abandonado")
print("Decida o local que você deseja ir:")

// Lê a escolha do jogador
if let entrada = readLine(), let local = Int(entrada) {

switch local {

case 1:
print("Antes de chegar ao posto de gasolina, você observa TRÊS QUIMERAS olhando diretamente para você!")
    print ("Você tem que tomar uma decisão! Escolha entre: fugir ou enfrentar")
    if let acao = readLine(){
        switch acao {
        case "fugir":
            print (fugir)
        case "enfrentar":
            print("Sua missão agora é: enfrentar as Quimeras como você enfretou o Minotauro, ou pelo menos como você acha que enfrentou...")
            print("Agora é a hora de você usar sua arma ou distracao, dadas pelas cartas.")
            print("Missão Concluída ✅! Porém você teve um dano de valor: -1 .... ")
            print("Seu total de vidas é: ")
            print(VidaDano(d:1, vida: 3))
            
        default:
            print("Você precisa tomar uma decisão!")
        }
    }
case 2:
        print("A floresta é densa e silenciosa, mas você sente uma presença antiga observando seus passos.")
        print ("Parece que algo esta se aproximando de você.... Ninfas..... O terror de qualquer mortal, ou não! Escolha entre: fugir ou enfrentar")
    if let acao = readLine(){
        switch acao {
        case "fugir":
            print (fugir)
        case "enfrentar":
            print("Sua missão agora é: enfrentar as Ninfas como você enfretou o Minotauro, ou pelo menos como você acha que enfrentou...")
            print("Agora é a hora de você usar sua arma ou distracao, dadas pelas cartas.")
            print("Missão Concluída ✅! Porém você teve um dano de valor: -2 .... ")
            print("Seu total de vidas é: ")
            print(VidaDano(d:2, vida: 3))
            
        default:
            print("Você precisa tomar uma decisão!")
        }
        
    }
    
    
    
case 3:
print("O Hospital é assustador e silencioso, mas você ouviu passos fortes e marcados.")
print ("Parece que algo esta se aproximando de você.... Pégasos..... O terror de qualquer pessoa que odeia animais! Escolha entre: fugir ou enfrentar")
if let acao = readLine(){
    switch acao {
    case "fugir":
        print (fugir)
    case "enfrentar":
        print("Sua missão agora é: enfrentar os Pégasos como você enfretou o Minotauro, ou pelo menos como você acha que enfrentou...")
        print("Agora é a hora de você usar sua arma ou distracao.")
        print("Missão Concluída ✅! Sem danos.... ")
        print("Seu total de vidas é: ")
        print(VidaDano(d:0, vida: 3))
        
    default:
        print("Você precisa tomar uma decisão!")
    }
    
}


default:
print("Opção inválida. Você fica parado sem saber para onde ir…")

}

}

 func fugir (acao: String)  {
    return print ("Você decidi sair correndo, até o local mais seguro.")
    
}

func VidaDano (d: Int, vida: Int) -> Int {
    return vida - d
}

let vida = 3



print("Foi por pouco!! Você sai correndo desesperado, pois não sabe como conseguiu passar por essa situacao!! ")

print("------------------------------------------------------------")

print("Cidade, finalmente! Posso não saber quem eu sou, porém sei onde não quero estar")
print("Agora a decisao está em suas mãos. Escolha: (1) Arranjar abrigo ou (2) Continuar na busca pela sua identidade.")

if let Dec = readLine(), let dec = Int(Dec){
    if dec == 1 {
        print("Você decidiu seguir pelo caminho seguro. E decidi se abrigar em um prédio abandonado, pois acredita que será sua melhor chance")
        print("Depois de se estabelecer no prédio, supostamente, seguro, você comeca a ouvir barulhos. Pois, ainda tem muitas opcoes, segundo as Cartas.")
        print("Infelizmente, você morreu 🥀!! Esse prédio era uma armadilha, o prédio estava lotado de Górgonas ")
        abort()
        
        
    } else {
        print("Você decidiu seguir pelo caminho arriscado. Você voltou para onde acordou pela primeira vez, algo lá te atrai.")
        print("Ao chegar no local em que você comecou sua jornada, você encontra 5 grifos que desejam te esquartejar! Você tem duas opcoes: (1) Escolher algo que as Cartas de Delfos te mostraram ou (2) Fugir")
        if let aca = readLine (), let acao = Int(aca){
            if acao == (1) {
                print ("Sua escolha foi muito boa, você as matou com os itens que as cartas forneceu. Missão Concluída! Sem Danos!✅")
            } else {
                print ("Missão Falha! Os grifos foram mais rápido que você!!")
                abort ()
            }
        }
    }
}
print ("Mais um desafio concluído! E parece que sua memória está voltando... O segredo é a escola!!")
 
print("Você foi até a escola, porém ainda não entende como voltar a ser quem era. Calma, uma luz do porão te atrai....☀️")


print("---------------------------------------------------------------------------------------------------------------")

print("Parabéns, você voltou ao MONTE OLIMPO! No momento está desacordado, pois a passagem pelo portal é brutal. Os deuses ficam feliz com seu retorno !")
