import os
var_path = 'C:/Users/luizf/AppData/Local/Packages/PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0/LocalCache/local-packages/Python312/site-packages/clidriver'
os.add_dll_directory(var_path + '/bin') 

import ibm_db
import ibm_db

# ========== CONFIGURAÇÕES DE CONEXÃO ==========
dsn_hostname = "b70af05b-76e4-4bca-a1f5-23dbb4c6a74e.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud"
dsn_uid = "wbr64236"
dsn_pwd = "kHwQNU8Tw4ctrmKT#"
dsn_port = "32716"
dsn_database = "Db2-rl"
dsn_protocol = "TCPIP"
dsn_ssl = "SSL"
dsn_certificate = "1cbbb1b6-3a1a-4d49-9262-3102a8f7a7c8"
# ========== STRING DE CONEXÃO ==========
dsn = (
    f"DATABASE={dsn_database};"
    f"HOSTNAME={dsn_hostname};"
    f"PORT={dsn_port};"
    f"PROTOCOL={dsn_protocol};"
    f"UID={dsn_uid};"
    f"PWD={dsn_pwd};"
    f"SECURITY={dsn_ssl};"
    f"SSLSererCertificate={dsn_certificate}"
)
ibm_db.conn_error 
# ========== CONEXÃO ==========

conn = ibm_db.connect(dsn, "", "")

    

# ========== CRIAÇÃO DE TABELA DE TESTE ==========
create_table_sql = """
CREATE TABLE IF NOT EXISTS test_table (
    id INT,
    nome VARCHAR(100),
    data_cadastro TIMESTAMP
)
"""

try:
    ibm_db.exec_immediate(conn, create_table_sql)
    print("✅ Tabela de teste criada com sucesso.")
except Exception as e:
    print(f"❌ Erro ao criar tabela: {e}")

# ========== FECHAR CONEXÃO ==========
ibm_db.close(conn)
