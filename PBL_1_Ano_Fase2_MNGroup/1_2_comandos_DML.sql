-- A) Cadastre no m�nimo 1 CLIENTE PESSOA JURIDICA e 1 CLIENTE PESSOA FISICA (...)

-- Clientes
insert 
    into mc_cliente (
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
        1,
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
        2,
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
        3,
        TO_DATE('13-12-2016', 'DD-MM-YYYY'),
        01410663000147,
        null 
    );  
 
-- A) (...) A partir dos dados cadastrados nas tabelas estado, cidade e bairro, cadastre no m�nimo 1 endere�o para cada cliente.

insert into mc_end_cli (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) values (
    1,
    2,
    575,
    'Pr�ximo � igreja e da loja de conv�niencia do paulo',
    to_date('09-01-2016', 'DD-MM-YYYY'),
    null,
    'A'
);

insert into mc_end_cli (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) values (
    3,
    7,
    23,
    'Condom�nio Videiras Bloco 42, Apt_a23',
    to_date('09-01-2012', 'DD-MM-YYYY'),
    to_date('24-12-2015', 'DD-MM-YYYY'),
    'A'
);

insert into mc_end_cli (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) values (
    3,
    8,
    1100,
    'h� dois quarteir�es do MC Donalds',
    to_date('02-07-2022', 'DD-MM-YYYY'),
    to_date('14-01-2024', 'DD-MM-YYYY'),
    'I'
);


-- B) Cadastre um novo cliente que ja tenha um mesmo loguin j� criado. Foi poss�vel incluir esse novo cliente? Explique:
insert into mc_cliente (
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
) VALUES (
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


Commit;
 