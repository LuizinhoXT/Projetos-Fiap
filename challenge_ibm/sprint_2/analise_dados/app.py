import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy.stats import ttest_ind

# Carregar os dados
customers = pd.read_csv("olist_customers_dataset.csv")
orders = pd.read_csv("olist_orders_dataset.csv")
order_items = pd.read_csv("olist_order_items_dataset.csv")
order_payments = pd.read_csv("olist_order_payments_dataset.csv")

# Merge dos datasets principais
orders_customers = pd.merge(orders, customers, on='customer_id')
orders_payments = pd.merge(orders_customers, order_payments, on='order_id')
orders_items = pd.merge(orders_payments, order_items, on='order_id')

# Conversão de datas e cálculo de tempo de entrega
orders_items['order_purchase_timestamp'] = pd.to_datetime(orders_items['order_purchase_timestamp'])
orders_items['order_delivered_customer_date'] = pd.to_datetime(orders_items['order_delivered_customer_date'])
orders_items['delivery_time'] = (orders_items['order_delivered_customer_date'] - orders_items['order_purchase_timestamp']).dt.days

# Agregação por pedido
aggregated = orders_items.groupby('order_id').agg({
    'payment_value': 'sum',
    'payment_type': 'first',
    'price': 'sum',
    'freight_value': 'sum',
    'order_item_id': 'count',
    'delivery_time': 'mean',
    'customer_state': 'first'
}).rename(columns={'order_item_id': 'item_count'})

# --- Análise 1: Correlação entre tipo de pagamento e valor pago ---
payment_analysis = aggregated.groupby("payment_type")["payment_value"].mean().sort_values(ascending=False)
plt.figure(figsize=(8, 5))
sns.barplot(x=payment_analysis.index, y=payment_analysis.values)
plt.title("Média de Valor Pago por Tipo de Pagamento")
plt.xlabel("Tipo de Pagamento")
plt.ylabel("Valor Médio Pago (R$)")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# --- Análise 2: Distribuição de pedidos por estado ---
state_distribution = aggregated['customer_state'].value_counts().sort_values(ascending=False)
plt.figure(figsize=(10, 5))
sns.barplot(x=state_distribution.index, y=state_distribution.values)
plt.title("Distribuição de Pedidos por Estado")
plt.xlabel("Estado (UF)")
plt.ylabel("Quantidade de Pedidos")
plt.tight_layout()
plt.show()

# --- Análise 3: Matriz de Correlação ---
correlation_data = aggregated[['price', 'freight_value', 'item_count', 'delivery_time']]
correlation_matrix = correlation_data.corr()
plt.figure(figsize=(8, 6))
sns.heatmap(correlation_matrix, annot=True, cmap="coolwarm", fmt=".2f")
plt.title("Matriz de Correlação entre Variáveis")
plt.tight_layout()
plt.show()

# --- Análise 4: Teste de Hipótese ---
sudeste = ['SP', 'RJ', 'MG', 'ES']
pagamentos_sudeste = aggregated[aggregated['customer_state'].isin(sudeste)]['payment_value']
pagamentos_outras = aggregated[~aggregated['customer_state'].isin(sudeste)]['payment_value']
t_stat, p_value = ttest_ind(pagamentos_sudeste, pagamentos_outras, equal_var=False)

print("Média - Sudeste: R$", round(pagamentos_sudeste.mean(), 2))
print("Média - Outras Regiões: R$", round(pagamentos_outras.mean(), 2))
print("Valor-p do teste t:", p_value)

if p_value < 0.05:
    print("\nResultado: Rejeitamos a hipótese. Clientes do Sudeste não gastam mais.")
else:
    print("\nResultado: Não rejeitamos a hipótese. Não há diferença significativa.")