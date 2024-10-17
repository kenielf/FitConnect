# Estruturação e Modelagem do Banco de Dados
## Gráfico Entidade-Relação
![Esquema do Banco de Dados](/assets/database-schema.png)

## Inicialização
O banco é inicializado de forma automática a partir da pasta de scripts usada 
pelo postgres `/docker-entrypoint-initdb.d`, que executa de maneira sequencial.

Foi utilizado a numeração de 00 até 99, de maneira similar à serviços de 
sistemas operacionais e pastas de configurações `.d`, da seguinte maneira:
 - **00 - 09:** Inicialização
 - **10 - 19:** Dados Primitivos / Desacoplados
 - **20 - 49:** Dados Básicos
 - **50 - 59:** Dados de Sessão
 - **60 - 89:** Dados Principais / Pivôs
 - **90 - 99:** Observabilidade
