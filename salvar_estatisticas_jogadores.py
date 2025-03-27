import pymysql
import csv

# Conectar ao banco de dados
connection = pymysql.connect(
    host='localhost',         # Endereço do seu servidor MySQL (localhost se estiver na mesma máquina)
    user='root',       # Seu usuário do MySQL
    password='',     # Sua senha do MySQL
    database='scrim_db', # O nome do banco de dados que contém suas tabelas
)

# Criar ou abrir um arquivo CSV para salvar os dados
with open('jogadores_estatisticas.csv', 'w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    
    # Cabeçalhos do arquivo CSV
    writer.writerow(['Jogador', 'Eliminações', 'Mortes', 'Assistências', 'Dano Total', 'Plantações', 'Desarmamentos', 'Vitórias', 'Total de Partidas', 'Dano Médio'])

    try:
        # Criar um cursor para interagir com o banco de dados
        with connection.cursor() as cursor:
            # Consulta SQL para pegar as estatísticas
            query = """
            SELECT 
                r.player_name,
                SUM(r.eliminations) AS total_eliminations,
                SUM(r.deaths) AS total_deaths, 
                SUM(r.assists) AS total_assists, 
                SUM(r.damages) AS total_damages, 
                SUM(r.planted) AS total_planted, 
                SUM(r.defused) AS total_defused, 
                SUM(r.ganhou) AS total_wins,
                COUNT(r.id_resumo_partida) AS total_partidas,
                SUM(r.damages) / COUNT(r.id_resumo_partida) AS average_damages
            FROM resumo_partida r
            GROUP BY r.player_name
            ORDER BY total_damages DESC;
            """
            
            # Executar a consulta
            cursor.execute(query)
            
            # Pegar todos os resultados da consulta
            results = cursor.fetchall()
            
            # Para cada jogador, escrever suas estatísticas no CSV
            for row in results:
                player_name = row[0]
                total_eliminations = row[1]
                total_deaths = row[2]
                total_assists = row[3]
                total_damages = row[4]
                total_planted = row[5]
                total_defused = row[6]
                total_wins = row[7]
                total_partidas = row[8]
                average_damages = row[9]

                # Escrever os dados no CSV
                writer.writerow([
                    player_name, 
                    total_eliminations, 
                    total_deaths, 
                    total_assists, 
                    total_damages, 
                    total_planted, 
                    total_defused, 
                    total_wins, 
                    total_partidas, 
                    average_damages
                ])

    finally:
        # Fechar a conexão com o banco de dados
        connection.close()

print("Dados salvos com sucesso em 'jogadores_estatisticas.csv'.")
