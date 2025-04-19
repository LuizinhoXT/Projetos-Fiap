# Análise de Dados: Clientes do E-commerce Brasileiro

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Carregar os dados
df = pd.read_csv("olist_customers_dataset.csv")

# ---------------------------
# Visão Geral
# ---------------------------
print("Total de registros:", df.shape[0])
print("Colunas:", df.columns.tolist())
print("Tipos de dados:\n", df.dtypes)
print("Valores ausentes:\n", df.isna().sum())

# ---------------------------
# Gráfico 1: Clientes por Estado
# ---------------------------
clientes_estado = df['customer_state'].value_counts().sort_values(ascending=False)

plt.figure(figsize=(12, 6))
sns.barplot(x=clientes_estado.index, y=clientes_estado.values, palette='Blues_d')
plt.title('Distribuição de Clientes por Estado', fontsize=16, fontweight='bold')
plt.xlabel('Estado', fontsize=12)
plt.ylabel('Quantidade de Clientes', fontsize=12)
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# ---------------------------
# Gráfico 2: Top 10 Cidades com Mais Clientes
# ---------------------------
clientes_cidade = df['customer_city'].value_counts().head(10)

plt.figure(figsize=(10, 6))
sns.barplot(x=clientes_cidade.values, y=clientes_cidade.index, palette='Greens_d')
plt.title('Top 10 Cidades com Mais Clientes', fontsize=16, fontweight='bold')
plt.xlabel('Quantidade de Clientes', fontsize=12)
plt.ylabel('Cidade', fontsize=12)
plt.grid(axis='x', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# ---------------------------
# Análise por Prefixo de CEP (Top 10)
# ---------------------------
clientes_cep = df['customer_zip_code_prefix'].value_counts().head(10)

plt.figure(figsize=(10, 6))
sns.barplot(x=clientes_cep.index.astype(str), y=clientes_cep.values, palette='Purples')
plt.title('Top 10 Prefixos de CEP com Mais Clientes', fontsize=16, fontweight='bold')
plt.xlabel('Prefixo de CEP', fontsize=12)
plt.ylabel('Quantidade de Clientes', fontsize=12)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# ---------------------------
# Tabela Resumo por Estado
# ---------------------------
tabela_estado = df.groupby('customer_state')['customer_id'].nunique().sort_values(ascending=False).reset_index()
tabela_estado.columns = ['Estado', 'Clientes Únicos']
print("\nClientes Únicos por Estado:\n")
print(tabela_estado)
