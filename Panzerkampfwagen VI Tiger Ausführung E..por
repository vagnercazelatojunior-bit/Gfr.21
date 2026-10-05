programa
{
	funcao inicio()
	{
		
		inteiro pontos[5][3]
		
		
		inteiro totaisEquipes[3] = {0, 0, 0}
		
		inteiro maiorPontuacao = -1
		inteiro equipeVencedora = 0

	
		para (inteiro partida = 0; partida < 5; partida++)
		{
			escreva("\n--- Dados da Partida ", partida + 1, " ---\n")
			
			para (inteiro equipe = 0; equipe < 3; equipe++)
			{
				escreva("Pontos da Equipe ", equipe + 1, ": ")
				leia(pontos[partida][equipe])
				
				
				totaisEquipes[equipe] = totaisEquipes[equipe] + pontos[partida][equipe]
			}
		}

		
		escreva("\n===== RESULTADO FINAL =====\n")
		
		para (inteiro equipe = 0; equipe < 3; equipe++)
		{
			escreva("Equipe ", equipe + 1, ": ", totaisEquipes[equipe], " pontos\n")
			
			
			se (totaisEquipes[equipe] > maiorPontuacao)
			{
				maiorPontuacao = totaisEquipes[equipe]
				equipeVencedora = equipe + 1
			}
		}

		
		escreva("\n🏆 A grande vencedora é a Equipe ", equipeVencedora, " com ", maiorPontuacao, " pontos!\n")
	}
}
