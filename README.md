# **Scrims Fortnite Ballistic Database**  

Este repositório contém a base de dados utilizada para armazenar as estatísticas dos jogadores nas scrims organizadas para o Fortnite Ballistic. Ele pode ser utilizado para análise de desempenho dos jogadores e para o armazenamento estruturado de informações sobre as partidas.

## 📌 **Objetivo do Projeto**  
Fornecer um banco de dados estruturado para armazenar e consultar as estatísticas das scrims do Fortnite Ballistic, possibilitando análises detalhadas sobre o desempenho dos jogadores.

## 🗄 **Estrutura da Base de Dados**  
A base de dados contém informações sobre as scrims, partidas e estatísticas dos jogadores.

### **Tabelas e Colunas**  
- **`scrims`**  
  - `id_scrim` (int) - Identificador da scrim  
  - `data_scrim` (int) - Data em que a scrim ocorreu  
- **`partidas`**  
  - `id_partida` (int) - Identificador da partida dentro de uma scrim  
  - `id_scrim` (int) - Chave estrangeira vinculando a scrim  
  - `numero_partida` (int) - Número da partida dentro da scrim  
- **`resumo_partida`**  
  - `id_resumo_partida` (int) - Identificador das estatísticas de um jogador em uma partida  
  - `id_partida` (int) - Chave estrangeira vinculando a partida  
  - `player_name` (varchar) - Nome do jogador  
  - `eliminations` (int) - Número de eliminações  
  - `deaths` (int) - Número de vezes que o jogador foi eliminado  
  - `assists` (int) - Número de assistências  
  - `damages` (int) - Total de dano causado a outros jogadores  
  - `ganhou` (tinyint(1)) - Indica se o jogador venceu a partida (1 = Sim, 0 = Não)  
  - `planted` (int) - Número de dispositivos plantados  
  - `defused` (int) - Número de desarmamentos realizados  

## 📂 **Arquivos no Repositório**  
- `scrims_dump.sql` → Dump da base de dados com os dados das scrims, incluindo a criação do schema.  
- `processamento_dados.py` → Script Python para processar as estatísticas dos jogadores e calcular médias de eliminações, mortes, dano, vitórias, entre outros. O script gera um arquivo CSV.  
- `salvar_estatistica_jogadores.py` → Script Python para salvar as estatísticas totais dos jogadores em um arquivo CSV.  
- `medias_estatisticas.csv` → Arquivo CSV contendo a média de todas as estatísticas para todos os jogadores.  
- `jogadores_estatisticas.csv` → Arquivo CSV com as estatísticas totais de todos os jogadores.  

## 📊 **Processamento e Análise de Dados**  
O script `processamento_dados.py` é responsável por calcular as **médias** de cada jogador nas seguintes estatísticas:  
- Eliminações  
- Mortes  
- Assistências  
- Dano  
- Vitórias  

## 🏆 **Contribuições**  
Sinta-se à vontade para abrir issues ou enviar pull requests se quiser contribuir para o projeto!