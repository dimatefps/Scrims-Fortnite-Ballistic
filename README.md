# **Scrims Fortnite Ballistic Database**  

Este repositório contém a base de dados utilizada para armazenar as estatísticas dos jogadores nas scrims que eu organizava de Fortnite Ballistic. Ele pode ser usado para análise de desempenho dos jogadores e armazenamento estruturado de informações das partidas.  

## 📌 **Objetivo do Projeto**  
Fornecer um banco de dados estruturado para armazenar e consultar estatísticas de scrims do Fortnite Ballistic, permitindo análises detalhadas do desempenho dos jogadores.  

## 🗄 **Estrutura da Base de Dados**  
A base de dados contém informações sobre as scrims, partidas e estatísticas dos jogadores.  

### **Tabelas e Colunas**  
- **`scrims`**  
  - `id_scrim` (int) - Identificador da scrim  
  - `data_scrim` (int) - Data em que a scrim ocorreu  
- **`partidas`**  
  - `id_partida` (int) - Identificador da partida entre todas as scrims  
  - `id_scrim` (int) - Chave que linka essa tabela a `scrims`  
  - `numero_partida` (int) - Número da partida na scrim  
- **`resumo_partida`**  
  - `id_resumo_partida` (int) - Identificador das estatísticas de um jogador em uma partida  
  - `id_partida` (int) - Chave que linka essa tabela a `partidas`  
  - `player_name` (varchar) - Nome do jogador  
  - `eliminations` (int) - Número de eliminações  
  - `deaths` (int) - Número de vezes que o jogador foi eliminado  
  - `assists` (int) - Número de assistências  
  - `damages` (int) - Total de dano causado a outros jogadores  
  - `ganhou` (tinyint(1)) - Indica se o jogador venceu a partida (1 = Sim, 0 = Não)  
  - `planted` (int) - Número de plantações de dispositivo  
  - `defused` (int) - Número de desarmamentos  

## 📂 **Arquivos no Repositório**  
- `scrims_dump.sql` → Dump da base de dados com os dados das scrims. Inclui a criação do schema.  



## 🏆 **Contribuições**  
Se quiser contribuir com o projeto, sinta-se à vontade para abrir issues ou enviar pull requests!
