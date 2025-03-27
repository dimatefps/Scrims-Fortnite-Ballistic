import csv

# Função para armazenar as médias no arquivo CSV
def armazenar_medias_em_csv():
    with open('medias_estatisticas.csv', 'w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerow(['Jogador', 'Média de Eliminações', 'Média de Mortes', 'Média de Assistências', 'Média de Dano', 
                         'Média de Plantações', 'Média de Desarmamentos', 'Média de Vitórias', 'Total de Partidas'])

        with open('jogadores_estatisticas.csv', 'r', encoding='utf-8') as input_file:
            reader = csv.DictReader(input_file)
            
            for row in reader:
                player_name = row['Jogador']
                total_eliminations = int(row['Eliminações'])
                total_deaths = int(row['Mortes'])
                total_assists = int(row['Assistências'])
                total_damages = int(row['Dano Total'])
                total_planted = int(row['Plantações'])
                total_defused = int(row['Desarmamentos'])
                total_wins = int(row['Vitórias'])
                total_partidas = int(row['Total de Partidas'])

                # Calcular médias
                media_eliminacoes = total_eliminations / total_partidas
                media_mortes = total_deaths / total_partidas
                media_assistencias = total_assists / total_partidas
                media_dano = total_damages / total_partidas
                media_plantacoes = total_planted / total_partidas
                media_desarmamentos = total_defused / total_partidas
                media_vitorias = total_wins / total_partidas

                # Escrever as médias no CSV
                writer.writerow([
                    player_name, 
                    media_eliminacoes, 
                    media_mortes, 
                    media_assistencias, 
                    media_dano, 
                    media_plantacoes, 
                    media_desarmamentos, 
                    media_vitorias, 
                    total_partidas
                ])
    
    print("Médias armazenadas com sucesso em 'medias_estatisticas.csv'.")

# Chama a função para gerar o arquivo com as médias
armazenar_medias_em_csv()