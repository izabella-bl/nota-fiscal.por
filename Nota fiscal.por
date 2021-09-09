programa
{
	//autor:Izabella Barros Lopes
	funcao inicio()
	{
          cadeia  vetNomeCliente[3],Produto[3][4] ,ModoDePagamento
          real TabelaCliente1[4][4], TabelaCliente2[4][4],TabelaCliente3[4][4] ,soma1 = 0.0 ,soma2= 0.0,soma3=0.0
          real desconto ,acrescimo , valorTotal ,valorDesconto , valorAcrescimo,valor
          
          
          

	     
		escreva("Olá, bem vindo !\n")
		escreva(" -------------------- Tabela de produto disponivel ------------- \n")
		escreva("Item  Descrição           Preço(R$)   % desconto  % acréscimo \n")
		escreva("35877 Microondas30l       458,00      5%           3%  \n")
		escreva("35878 Forno Elétrico      680,00      3%           6% \n")
		escreva("35879 Ferro Passar Roupa  120,00      5%           4% \n")
		escreva("35888 Secador de Cabelos  80,00       5%           3% \n")
		escreva("48885 Geladeira Biplex    1.200,00    2,5%         10% \n")
		escreva("48886 Freezer Vertical    980,00      2,5%         10%\n")
		escreva("48887 Fogão 6 Bocas       850,00      2,5%         10% \n")
		escreva("48888 Freezer Horizontal  1.540,00    2,5%         10% \n")
		escreva("52475 Bicicleta Masculina 800,00      3%           6% \n")
		escreva("52476 Bicicleta Feminina  800,00      3%           6%\n")
		escreva("52477 Bicicleta Infantil  650,00      5%           8% \n")
		escreva("52478 Triciclo Infantil   420,00      5%           8% \n")

       para(inteiro i=0; i < 3; i++){
       	escreva("\n")
       	escreva("------------------------- cliente",i,"--------------------\n")
       	escreva("Informe o nome do cliente: \n")
                leia( vetNomeCliente [i])
           
                para(inteiro linha=0; linha < 4; linha++){
                    escreva("Digite o nome do produto de acordo com a tabela acima:\n")
                	leia(Produto[i][linha])
                	
                	para(inteiro coluna=0; coluna < 4; coluna++){
                        se(coluna == 0 e i==0){
                	      escreva("Digite o codigo desse produto:\n")
                	      leia(TabelaCliente1[linha][0])}
                	      
                	     senao se(coluna == 1 e i==0){
                	     	escreva("Digite a quantidade de venda do produto:\n")
                	     	leia(TabelaCliente1[linha][1])}
                	     	
                	     senao se(coluna==2 e i==0){
                	     	escreva("Digite o valor do produto:\n")
                	     	leia(TabelaCliente1[linha][2])}
                	     	
                	     senao se(coluna==3 e i==0){
                	     	 valor = TabelaCliente1[linha][1] * TabelaCliente1[linha][2]
                	     	 escreva("Digite V para a vista ou P para a prazo: \n")
                	     	 leia(ModoDePagamento) 

                	     	 se(ModoDePagamento == "V" ){
                	     	 	escreva("Digite em porcetangem do desconto: \n")
                	     	 	leia(desconto)

                	     	 	valorDesconto = valor * (desconto/100.0)
                	     	 	valorTotal = valor - valorDesconto
                	     	 	TabelaCliente1[linha][3] = valorTotal
                	     	 	soma1 += valorTotal
                               }
                              senao se(ModoDePagamento == "P" ){
                	     	 	escreva("Digite em porcetangem do acrescimo: \n")
                	     	 	leia(desconto)

                	     	 	valorDesconto = valor * (desconto/100.0)
                	     	 	valorTotal = valor + valorDesconto
                	     	 	TabelaCliente1[linha][3] = valorTotal
                	     	 	soma1 += valorTotal
                               }
		
		                  }

		                   senao se (coluna == 0 e i==1){
		                	      escreva("Digite o codigo desse produto:\n")
		                	      leia(TabelaCliente2[linha][0])}
		                	      
		                	     senao se(coluna == 1 e i==1){
		                	     	escreva("Digite a quantidade de venda do produto\n")
		                	     	leia(TabelaCliente2[linha][1])}
		                	     	
		                	     senao se(coluna==2 e i==1){
		                	     	escreva("Digite o valor do produto:\n")
		                	     	leia(TabelaCliente2[linha][2])
		                	     	}
		                	     	
		                	     senao se(coluna==3 e i==1){
		                	     	 valor = TabelaCliente2[linha][1] * TabelaCliente2[linha][2]
		                	     	 escreva("Digite V para a vista ou P para a prazo: \n")
		                	     	 leia(ModoDePagamento) 
		
		                	     	 se(ModoDePagamento == "V" ){
		                	     	 	escreva("Digite em porcetangem o desconto \n")
		                	     	 	leia(desconto)
		
		                	     	 	valorDesconto = valor * (desconto/100.0)
		                	     	 	valorTotal = valor - valorDesconto
		                	     	 	TabelaCliente2[linha][3] = valorTotal
		                	     	 	soma2 += valorTotal
		                               }
		                              senao se(ModoDePagamento == "P" ){
		                	     	 	escreva("Digite em porcetangem do acrescimo\n")
		                	     	 	leia(desconto)
		
		                	     	 	valorDesconto = valor * (desconto/100.0)
		                	     	 	valorTotal = valor + valorDesconto
		                	     	 	TabelaCliente2[linha][3] = valorTotal
		                	     	 	soma2 += valorTotal
		                               }

		                	     }
                	

					             senao se(coluna == 0 e i==2){
			                	      escreva("Digite o codigo desse produto\n")
			                	      leia(TabelaCliente3[linha][0])}
			                	      
			                	     senao se(coluna == 1 e i==2){
			                	     	escreva("Digite a quantidade de venda do produto\n")
			                	     	leia(TabelaCliente3[linha][1])}
			                	     	
			                	     senao se(coluna==2 e i==2){
			                	     	escreva("Digite o valor do produto:\n")
			                	     	leia(TabelaCliente3[linha][2])}
			                	     	
			                	     senao se(coluna==3 e i==2){
			                	     	 valor = TabelaCliente3[linha][1] * TabelaCliente3[linha][2]
			                	     	 escreva("Digite V para a vista ou P para a prazo: \n")
			                	     	 leia(ModoDePagamento) 
			
			                	     	 se(ModoDePagamento == "V" ){
			                	     	 	escreva("Digite em porcetangem do desconto: \n")
			                	     	 	leia(desconto)
			
			                	     	 	valorDesconto = valor * (desconto/100.0)
			                	     	 	valorTotal = valor - valorDesconto
			                	     	 	TabelaCliente3[linha][3] = valorTotal
			                	     	 	soma3 += valorTotal
			                               }
			                              senao se(ModoDePagamento == "P" ){
			                	     	 	escreva("Digite em porcetangem do acrescimo: \n")
			                	     	 	leia(desconto)
			
			                	     	 	valorDesconto = valor * (desconto/100.0)
			                	     	 	valorTotal = valor + valorDesconto
			                	     	 	TabelaCliente3[linha][3] = valorTotal
			                	     	 	soma3 += valorTotal
			                               }
			                	    }

                                   }

                	  
                                }
                               escreva("---------------------------- Nota Fiscal cliente",i,"-------------------------\n")
                               escreva("Nome do Cliente:",vetNomeCliente [i],"\n")
                             
                               		escreva("Código\t Qtd \tProduto\tValor \tValor Total \n")
                               		se( i == 0){
                               		escreva(TabelaCliente1[0][0],"\t ",TabelaCliente1[0][1],"\t ",Produto[0][0],"\t ",TabelaCliente1[0][2],"\t ",TabelaCliente1[0][3],"\n")
                               		escreva(TabelaCliente1[1][0],"\t ",TabelaCliente1[1][1],"\t ",Produto[0][1],"\t ", TabelaCliente1[1][2],"\t ",TabelaCliente1[1][3],"\n")
                               		escreva(TabelaCliente1[2][0],"\t ",TabelaCliente1[2][1],"\t ",Produto[0][2],"\t ", TabelaCliente1[2][2],"\t ", TabelaCliente1[2][3],"\n")
                               		escreva(TabelaCliente1[3][0],"\t ",TabelaCliente1[3][1],"\t ",Produto[0][3],"\t ", TabelaCliente1[3][2], "\t ", TabelaCliente1[3][3],"\n")
                               		escreva("Valor total da compra :",soma1,"\n")
                               		}
                               		senao se( i == 1){
                               		escreva(TabelaCliente2[0][0],"\t ",TabelaCliente2[0][1],"\t ",Produto[1][0],"\t ", TabelaCliente2[0][2],"\t ",TabelaCliente2[0][3],"\n")
                               		escreva(TabelaCliente2[1][0],"\t ",TabelaCliente2[1][1],"\t ",Produto[1][1],"\t ", TabelaCliente2[1][2],"\t ",TabelaCliente2[1][3],"\n")
                               		escreva(TabelaCliente2[2][0],"\t ",TabelaCliente2[2][1],"\t ",Produto[1][2],"\t ", TabelaCliente2[2][2],"\t ",TabelaCliente2[2][3],"\n")
                               		escreva(TabelaCliente2[3][0],"\t ",TabelaCliente2[3][1],"\t ",Produto[1][3],"\t ", TabelaCliente2[3][2],"\t ", TabelaCliente2[3][3],"\n")
                               		escreva("Valor total da compra :",soma2,"\n")
                               		}
                               		senao se(i == 2){
                               		escreva(TabelaCliente3[0][0],"\t ",TabelaCliente3[0][1],"\t ",Produto[2][0],"\t ", TabelaCliente3[0][2],"\t ",TabelaCliente3[0][3],"\n")
                               		escreva(TabelaCliente3[1][0],"\t ",TabelaCliente3[1][1],"\t ",Produto[2][1],"\t ", TabelaCliente3[1][2],"\t ",TabelaCliente3[1][3],"\n")
                               		escreva(TabelaCliente3[2][0],"\t ",TabelaCliente3[2][1],"\t ",Produto[2][2],"\t ", TabelaCliente3[2][2],"\t ",TabelaCliente3[2][3],"\n")
                               		escreva(TabelaCliente3[3][0],"\t ",TabelaCliente3[3][1],"\t ",Produto[2][3],"\t ", TabelaCliente3[3][2],"\t ",TabelaCliente3[3][3],"\n")
                               		escreva("Valor total da compra :",soma3,"\n")
                               		}
                               	


                	
                            }
                            

                              
                               	
                               

		                  
                     
           }

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7815; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetNomeCliente, 6, 18, 14}-{Produto, 6, 36, 7}-{TabelaCliente1, 7, 15, 14}-{TabelaCliente2, 7, 37, 14}-{TabelaCliente3, 7, 58, 14}-{soma1, 7, 80, 5}-{soma2, 7, 93, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */