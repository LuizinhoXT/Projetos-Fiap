
-- inserindo 3 departaentos na tabela departamento conforme sugest�o

insert into mc_depto (cd_depto, nm_depto, st_depto) values (001, 'Comercial', 'A'); -- Output: 1 linha inserido.
    
insert into mc_depto (cd_depto, nm_depto, st_depto) values (002, 'Financeiro', 'A'); -- Output: 1 linha inserido.
    
insert into mc_depto (cd_depto, nm_depto, st_depto) values (003, 'SAC', 'A'); -- Output: 1 linha inserido.

-- Inserinto 3 funcion�rios em 2 departamentos. 3 para SAC e 3 para Comercial

-- Inserindo funcionarios do comercial
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        1, --pk de mc_funcionario
        1, --fk em mc_depto
        null,
        'Rebeca Sousa',
        TO_DATE('05-04-2003', 'DD-MM-YYYY'),
        'F',
        'Mulher Cisgenero',
        'Gerente Expert I de Vendas',
        18978.0,
        'reb.sou@mc.com.br',
        'A',
        TO_DATE('17-04-2021', 'DD-MM-YYYY'),
        null        
    );
    
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        2, --pk de mc_funcionario
        1, --fk em mc_depto
        1, -- fk de mc_funcionario
        'Gustavo Rodrigues da Silva',
        TO_DATE('25-12-2002', 'DD-MM-YYYY'),
        'M', 
        'Homem Cisg�nero N�o Bin�rio',
        'Analista S�nior de Vendas e Opera��es ',
        9897.0,
        'gus.rod@mc.com.br',
        'A',
        TO_DATE('29-09-2021', 'DD-MM-YYYY'),
        null        
    );
    
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        3, --pk de mc_funcionario
        1, --fk em mc_depto
        1, -- fk de mc_funcionario
        'Sara Gon�alves Oliveira',
        TO_DATE('01-07-2003', 'DD-MM-YYYY'),
        'F',
        'Mulher Cisg�nero',
        'Analista Pleno de Vendas e Opera��es ',
        7435.0,
        'sar.gon@mc.com.br',
        'A',
        TO_DATE('25-01-2022', 'DD-MM-YYYY'),
        null        
    );
    
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        4, --pk de mc_funcionario
        1, --fk em mc_depto
        1, -- fk de mc_funcionario
        'Geovanna Zink Bizarria',
        TO_DATE('09-08-1998', 'DD-MM-YYYY'),
        'F',
        'Mulher Cisg�nero',
        'Analista S�nior de Vendas e Opera��es ',
        9897.0,
        'lua.zin@mc.com.br',
        'A',
        TO_DATE('17-09-2024', 'DD-MM-YYYY'),
        null        
    );

insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        5, --pk de mc_funcionario
        1, --fk em mc_depto
        1, -- fk de mc_funcionario
        'Alice Cristina Souza',
        TO_DATE('01-06-2001', 'DD-MM-YYYY'),
        'F',
        'Mulher Cisg�nero',
        'Analista Junior de Vendas e Opera��es ',
        4960.0,
        'ali.cri@mc.com.br',
        'A',
        TO_DATE('25-03-2024', 'DD-MM-YYYY'),
        null        
    );
    
-- Inserindo funcionarios do financeiro

insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        6, --pk de mc_funcionario
        2, --fk em mc_depto
        null, -- fk de mc_funcionario
        'Rafael Madjer',
        TO_DATE('20-03-2000', 'DD-MM-YYYY'),
        'M',
        'Homem Cisg�nero',
        'Gerente Expert de Finan�as',
        17560.0,
        'raf.mad@mc.com.br',
        'A',
        TO_DATE('10-12-2021', 'DD-MM-YYYY'),
        null        
    );
    
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        7, --pk de mc_funcionario
        2, --fk em mc_depto
        6, -- fk de mc_funcionario
        'Guilherme Bessi',
        TO_DATE('15-02-2000', 'DD-MM-YYYY'),
        'M',
        'Homem Cisg�nero',
        'Analista S�nior de Finan�as',
        9890.0,
        'gui.bes@mc.com.br',
        'A',
        TO_DATE('30-3-2024', 'DD-MM-YYYY'),
        null        
    );    
    
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )
    values (
        8, --pk de mc_funcionario
        2, --fk em mc_depto
        6, -- fk de mc_funcionario
        'Geovanna Andreata Cruz',
        TO_DATE('08-08-1999', 'DD-MM-YYYY'),
        'M',
        'Mulher Trans',
        'Analista Pleno de Finan�as',
        8023.0,
        'geo.and@mc.com.br',
        'A',
        TO_DATE('11-06-2024', 'DD-MM-YYYY'),
        null        
    ); 
    
insert
    into mc_funcionario (
        cd_funcionario,
        cd_depto,
        cd_gerente,
        nm_funcionario,
        dt_nascimento,
        fl_sexo_biologico,
        ds_genero,
        ds_cargo,
        vl_salario,
        ds_email,
        st_func,
        dt_cadastramento,
        dt_desligamento
    )   
    
    values (
    
        9, --pk de mc_funcionario
        2, --fk em mc_depto
        6, -- fk de mc_funcionario
        'Lucas Santos Silva',
        TO_DATE('30-12-1999', 'DD-MM-YYYY'),
        'F',
        null,
        'Analista junior de Finan�as',
        5032.0,
        'luc.san@mc.com.br',
        'A',
        TO_DATE('28-01-2024', 'DD-MM-YYYY'),
        null        
    ); 

-- reinserir a partir daqui Luiz

-- Inserindo estados
insert into mc_estado (sg_estado, nm_estado) values ('SP', 'S�o Paulo');

insert into mc_estado (sg_estado, nm_estado) values ('MG', 'Minas Gerais');    

insert into mc_estado (sg_estado, nm_estado) values ('SC', 'Santa Catarina');


-- Inserindo duas cidades para cada estado

insert into mc_cidade (cd_cidade, sg_estado, nm_cidade, cd_ibge, nr_ddd) values (1, 'SP', 'S�o Paulo', 3550308, 11);   
insert into mc_cidade (cd_cidade, sg_estado, nm_cidade, cd_ibge, nr_ddd) values (2, 'SP', 'Francisco Morato', 3516309, 11);   

insert into mc_cidade (cd_cidade, sg_estado, nm_cidade, cd_ibge, nr_ddd) values (3, 'MG', 'Belo Horizonte', 3106200, 31);   
insert into mc_cidade (cd_cidade, sg_estado, nm_cidade, cd_ibge, nr_ddd) values (4, 'MG', 'Divin�polis', 3122306, 31);   

insert into mc_cidade (cd_cidade, sg_estado, nm_cidade, cd_ibge, nr_ddd) values (5, 'SC', 'Palho�a', 4211900, 48);   
insert into mc_cidade (cd_cidade, sg_estado, nm_cidade, cd_ibge, nr_ddd) values (6, 'SC', 'Florian�polis', 4205407, 48);   

-- inseriondo 1 bairro para cada cidade


insert into mc_bairro (cd_bairro, cd_cidade, nm_bairro, nm_zona_bairro) values (101, 1, 'Pinheiros', 'ZONA SUL');
insert into mc_bairro (cd_bairro, cd_cidade, nm_bairro, nm_zona_bairro) values (102, 2, 'Recanto Regina', 'ZONA NNORTE');

insert into mc_bairro (cd_bairro, cd_cidade, nm_bairro, nm_zona_bairro) values (103, 3, 'Serra Verde', 'ZONA NORTE');
insert into mc_bairro (cd_bairro, cd_cidade, nm_bairro, nm_zona_bairro) values (104, 4, 'Francisco Machado Filho', null);

insert into mc_bairro (cd_bairro, cd_cidade, nm_bairro, nm_zona_bairro) values (105, 5, 'Centro', null);
insert into mc_bairro (cd_bairro, cd_cidade, nm_bairro, nm_zona_bairro) values (106, 6, 'Capoeiras', null);


-- inserinto 2 logradouros para cada bairro

insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101001,101, 'Rua dos Pinheiros - de 515 a 953 - lado �mpar', 05422011);
insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101002,101, 'Avenida Rebou�as - at� 1278 - lado par', 05402000);

insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101013,102, 'Avenida Santa F� ', 07957020);
insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101014,102, 'Rua San Diego', 07957060);

insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101015,103, 'Alameda Industrial', 31630640);
insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101016,103, 'Avenida Leontino Francisco Alves', 31630000);

insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101027,104, 'Rua Minas Gerais - at� 1717/1718', 35500007);
insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101028,104, 'Rua Francisco Machado Filho', 35501047);

insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101029,105, 'Avenida Bar�o do Rio Branco - lado �mpar', 88130101);
insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101041,105, 'Avenida Prefeito Nelson Martins', 88131300);

insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101078,106, 'Avenida Almirante Tamandar�, 480', 88080900);
insert into mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro, nr_cep) values (101079,106, 'Avenida Governador Ivo Silveira - de 801/802 a 1959/1960', 88085000);


-- inserindo enderecos para 2 funcionarios
insert
    into mc_end_func (
        cd_funcionario,
        cd_logradouro,
        nr_end,
        ds_complemento_end,
        dt_inicio,
        dt_termino,
        st_end
    )
    values (
        1,
        101013,
        575,
        'casa 2',
        TO_DATE('09-01-2016', 'DD-MM-YYYY'),
        null,
        'A'
    
    );
    
insert
    into mc_end_func (
        cd_funcionario,
        cd_logradouro,
        nr_end,
        ds_complemento_end,
        dt_inicio,
        dt_termino,
        st_end
    )
    values (
        1,
        101001,
        702,
        'apt_a23',
        TO_DATE('09-01-2012', 'DD-MM-YYYY'),
        TO_DATE('24-12-2015', 'DD-MM-YYYY'),
        'I'    
    );

insert
    into mc_end_func (
        cd_funcionario,
        cd_logradouro,
        nr_end,
        ds_complemento_end,
        dt_inicio,
        dt_termino,
        st_end
    )
    values (
        5,
        101027,
        1500,
        'pr�ximo a igreja',
        TO_DATE('09-01-2022', 'DD-MM-YYYY'),
        null,
        'A'    
    );

insert
    into mc_end_func (
        cd_funcionario,
        cd_logradouro,
        nr_end,
        ds_complemento_end,
        dt_inicio,
        dt_termino,
        st_end
    )
    values (
        6,
        101029,
        45,
        null,
        TO_DATE('15-01-2024', 'DD-MM-YYYY'),
        null,
        'A'    
    );
    
insert
    into mc_end_func (
        cd_funcionario,
        cd_logradouro,
        nr_end,
        ds_complemento_end,
        dt_inicio,
        dt_termino,
        st_end
    )
    values (
        6,
        101002,
        1100,
        'h� dois quarteir�es do MC Donalds',
        TO_DATE('02-07-2022', 'DD-MM-YYYY'),
        TO_DATE('14-01-2024', 'DD-MM-YYYY'),
        'I'    
    );

insert
    into mc_end_func (
        cd_funcionario,
        cd_logradouro,
        nr_end,
        ds_complemento_end,
        dt_inicio,
        dt_termino,
        st_end
    )
    values (
        9,
        101078,
        890,
        'pr�xio a pra�a do bairro',
        TO_DATE('02-07-2022', 'DD-MM-YYYY'),
        null,
        'A'    
    );


-- inserindo 2 clientes pessoas fisicas e cliente pessoa juridica

-- Clientes
insert 
    into mc_cliente (
        nr_cliente,
        nm_cliente,
        qt_estrelas,
        vl_medio_compra,
        st_cliente,
        ds_email,
        nr_telefone,
        nm_login,
        ds_senha
    ) 
    values (
        2101,
        'Luiz Henrique Ribeiro Dos Santos Farias',
        9,
        1200.0,
        'A',
        'luizfariashot@outlook.com',
        '11-91234-5678',
        'luizisxt092',
        'senha123'
    );

insert 
    into mc_cliente (
        nr_cliente,
        nm_cliente,
        qt_estrelas,
        vl_medio_compra,
        st_cliente,
        ds_email,
        nr_telefone,
        nm_login,
        ds_senha
    ) 
    values (
        2102,
        'Victor Macedo',
        4,
        19000.23,
        'I',
        'victor_maceds@gmail.com',
        '11-94321-5678',
        'victosmad12',
        '123senha'
    );

insert 
    into mc_cliente (
        nr_cliente,
        nm_cliente,
        qt_estrelas,
        vl_medio_compra,
        st_cliente,
        ds_email,
        nr_telefone,
        nm_login,
        ds_senha
    ) 
    values (
        2103,
        'Gabriel Kruguer',
        0,
        null,
        'I',
        'gabs.krug@outlook.com',
        '11-92145-9978',
        'kruger219038',
        'sen123ha'
    );

-- Cliente pessoa fisica

insert 
    into mc_cli_fisica (
       nr_cliente, 
       dt_nascimento, 
       fl_sexo_biologico, 
       ds_genero, 
       nr_cpf
    )
    values (
        2101,
        TO_DATE('03-03-2003', 'DD-MM-YYYY'),
        'M',
        null,
        12312345627       
    );
 
insert 
    into mc_cli_fisica (
       nr_cliente, 
       dt_nascimento, 
       fl_sexo_biologico, 
       ds_genero, 
       nr_cpf
    )
    values (
        2103,
        TO_DATE('06-06-2005', 'DD-MM-YYYY'),
        'M',
        'Homem Cisg�nero',
        56789012345       
    );

-- Cliente pessoa jur�dica

insert 
    into mc_cli_juridica (
       nr_cliente, 
       dt_fundacao, 
       nr_cnpj, 
       nr_inscr_est
    )
    values (
        2102,
        TO_DATE('13-12-2016', 'DD-MM-YYYY'),
        01410663000147,
        null 
    );   
    
-- f) Cadastre um novo cliente que ja tenha um mesmo loguin j� criado. Foi poss�vel incluir esse novo cliente? Explique:
insert 
    into mc_cliente (
        nr_cliente,
        nm_cliente,
        qt_estrelas,
        vl_medio_compra,
        st_cliente,
        ds_email,
        nr_telefone,
        nm_login,
        ds_senha
    ) 
    values (
        2107,
        'Victor SantosMacedo',
        4,
        19000.23,
        'A',
        'victor_maceds@gmail.com',
        '11-90807-2345',
        'victosmad12',
        '12345678'
    );
-- Output: ORA-00001: restri��o exclusiva (RM559962.UK_MC_CLIENTE_MM_LOGIN) violada
-- R: O banco de dados n�o permite pois h� uma restri��o exclusiva do campo de login, no qual cada login deve ser �nico no sistema.


-- g) Inserindo categorias de produto: Eletr�nicos (2101), Esporte e Lazer (2102), Pet Shop (2103)
insert
    into mc_categoria_prod (
        cd_categoria,
        tp_categoria,
        ds_categoria,
        dt_inicio,
        dt_termino,
        st_categoria
    )
    values (
        2101,
        'P',
        'Eletr�nicos',
        TO_DATE('01-01-2010', 'DD-MM-YYYY'),
        null,
        'A'
    );

insert
    into mc_categoria_prod (
        cd_categoria,
        tp_categoria,
        ds_categoria,
        dt_inicio,
        dt_termino,
        st_categoria
    )
    values (
        2102,
        'P',
        'Esporte e Lazer',
        TO_DATE('01-01-2010', 'DD-MM-YYYY'),
        null,
        'A'
    );

insert
    into mc_categoria_prod (
        cd_categoria,
        tp_categoria,
        ds_categoria,
        dt_inicio,
        dt_termino,
        st_categoria
    )
    values (
        2103,
        'P',
        'Pet Shop',
        null,
        null,
        'A'
    );

-- h) Inserindo 5 produtos e associe as categorias adequadas ao produto

INSERT INTO mc_produto (
    cd_produto,
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    1,
    2101,
    7891234567890,
    'Fone de Ouvido Bluetooth',
    199.90,
    'Caixa',
    'A',
    0.4,
    'Fone de ouvido Bluetooth com cancelamento de ru�do e controle de toque'
);

INSERT INTO mc_produto (
    cd_produto,
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    2,
    2101,
    7891234567891,
    'Smartwatch Fitness',
    399.90,
    'Caixa',
    'A',
    0.5,
    'Smartwatch com monitoramento de frequ�ncia card�aca e GPS integrado.'
);

INSERT INTO mc_produto (
    cd_produto,
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    3,
    2102,
    7891234567892,
    'Bicicleta Mountain Bike',
    1299.90,
    'Montada',
    'A',
    0.35,
    'Bicicleta com quadro em alum�nio, suspens�o dianteira e 21 marchas.'
);

INSERT INTO mc_produto (
    cd_produto,
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    4,
    2102,
    7891234567893,
    'Bola de Futebol',
    79.90,
    'Saco pl�stico',
    'A',
    0.25,
    'Bola oficial, feita de material resistente com costura � m�o.'
);

INSERT INTO mc_produto (
    cd_produto,
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    5,
    2103,
    7891234567894,
    'Ra��o Premium para C�es',
    249.90,
    'Saco de 15kg',
    'A',
    0.3,
    'Ra��o enriquecida com vitaminas e minerais essenciais para c�es.'
);

INSERT INTO mc_produto (
    cd_produto,
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    6,
    2103,
    7891234567895,
    'Brinquedo Interativo para C�es',
    89.90,
    'Caixa',
    'A',
    0.3,
    'Brinquedo interativo que estimula a mente do seu c�o e o mant�m ativo.'
);

-- i) Cadastre pelo menos 2 categorias para os v�deos: Instala�ao do Produto (2104), Uso no Cotidiano (2105), Review do produto (2106), Publicidade de Produto (2107)
INSERT INTO mc_categoria_prod (
    cd_categoria,
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    2104,
    'V',
    'Instala��o do Produto',
    TO_DATE('01-01-2024', 'DD-MM-YYYY'),
    NULL,
    'A'
);

INSERT INTO mc_categoria_prod (
    cd_categoria,
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    2105,
    'V',
    'Uso no Cotidiano',
    TO_DATE('01-01-2024', 'DD-MM-YYYY'),
    NULL,
    'A'
);

INSERT INTO mc_categoria_prod (
    cd_categoria,
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    2106,
    'V',
    'Review do Produto',
    TO_DATE('01-01-2024', 'DD-MM-YYYY'),
    NULL,
    'A'
);

INSERT INTO mc_categoria_prod (
    cd_categoria,
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    2107,
    'V',
    'Publicidade de Produto',
    TO_DATE('01-01-2024', 'DD-MM-YYYY'),
    NULL,
    'A'
);


COMMIT    




