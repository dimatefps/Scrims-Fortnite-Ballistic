import pymysql
import csv
# Função para armazenar as médias no banco de dados
def armazenar_medias_no_banco():
    connection = pymysql.connect(
        host='localhost',         # Endereço do seu servidor MySQL (localhost se estiver na mesma máquina)
        user='root',       # Seu usuário do MySQL
        password='',     # Sua senha do MySQL
        database='scrim_db', # O nome do banco de dados que contém suas tabelas
    )
    
    try:
        with connection.cursor() as cursor:
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

                    # Calcular as médias
                    media_eliminacoes = total_eliminations / total_partidas
                    media_mortes = total_deaths / total_partidas
                    media_assistencias = total_assists / total_partidas
                    media_dano = total_damages / total_partidas
                    media_plantacoes = total_planted / total_partidas
                    media_desarmamentos = total_defused / total_partidas
                    media_vitorias = total_wins / total_partidas

                    # Inserir as médias no banco de dados
                    query = """
                        INSERT INTO medias_jogadores (player_name, media_eliminacoes, media_mortes, media_assistencias, media_dano, 
                                                      media_plantacoes, media_desarmamentos, media_vitorias, total_partidas)
                        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
                    """
                    cursor.execute(query, (player_name, media_eliminacoes, media_mortes, media_assistencias, media_dano,
                                           media_plantacoes, media_desarmamentos, media_vitorias, total_partidas))

            # Commit das alterações
            connection.commit()
            print("Médias armazenadas com sucesso no banco de dados.")
    
    finally:
        # Fechar a conexão
        connection.close()

# Chama a função para armazenar as médias no banco de dados
armazenar_medias_no_banco()
