
create table Jucator (
id_jucator int primary key,
nume varchar(50),
prenume varchar(50),
elo int
);

create table Turneu (
id_turneu int primary key,
nume varchar(50),
data_incepere date,
data_final date,
loc_desfasurare varchar(50)
);

create table Turneu_Jucator (
id_turneu int,
id_jucator int,
foreign key(id_turneu) references Turneu(id_turneu),
foreign key(id_jucator) references Jucator(id_jucator),
primary key(id_turneu, id_jucator)
);

create table Partida (
id_partida int primary key,
rezultat int,
id_turneu,
id_jucator_alb int,
id_jucator_negru int,
foreign key(id_turneu) references Turneu(id_turneu),
foreign key(id_jucator_alb) references Jucator(id_jucator),
foreign key(id_jucator_negru) references Jucator(id_jucator)
);

create table Mutare (
id_mutare int primary key,
valoare varchar(50)
);

create table Mutare_Partida (
id_mutare int,
id_partida int,
numar int,
foreign key (id_mutare) references Mutare (id_mutare),
foreign key (id_partida) references Partida (id_partida),
primary key(id_mutare, id_partida)
);

create sequence sgv_turneu
    start with 1
    increment by 1
    nocache
    nocycle;

create sequence sgv_jucator
    start with 1
    increment by 1
    nocache
    nocycle;

create sequence sgv_partida
    start with 1
    increment by 1
    nocache
    nocycle;

create sequence sgv_mutare
    start with 1
    increment by 1
    nocache
    nocycle;

--inserare turneu:

insert into Turneu (id_turneu, nume, data_incepere, data_final, loc_desfasurare)
values (sgv_turneu.nextval, 'GCT Chess Classic Romania', to_date('2023-05-04', 'YYYY-MM-DD'), to_date('2023-05-15', 'YYYY-MM-DD'), 'Bucuresti');

--inserare jucatori:

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Caruana' AND prenume = 'Fabiano';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Caruana', 'Fabiano', 2764);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Caruana' AND prenume = 'Fabiano';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Liren' AND prenume = 'Ding';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Liren', 'Ding', 2789);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Liren' AND prenume = 'Ding';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Nepomniachtchi' AND prenume = 'Ian';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Nepomniachtchi', 'Ian', 2794);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Nepomniachtchi' AND prenume = 'Ian';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Firouzja' AND prenume = 'Alireza';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Firouzja', 'Alireza', 2785);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Firouzja' AND prenume = 'Alireza';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Giri' AND prenume = 'Anish';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Giri', 'Anish', 2768);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Giri' AND prenume = 'Anish';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'So' AND prenume = 'Wesley';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'So', 'Wesley', 2760);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'So' AND prenume = 'Wesley';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Vachier-Lagrave' AND prenume = 'Maxime';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Vachier-Lagrave', 'Maxime', 2742);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Vachier-Lagrave' AND prenume = 'Maxime';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Duda' AND prenume = 'Jan-Krzysztof';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Duda', 'Jan-Krzysztof', 2724);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Duda' AND prenume = 'Jan-Krzysztof';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Rapport' AND prenume = 'Richard';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Rapport', 'Richard', 2745);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Rapport' AND prenume = 'Richard';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Deac' AND prenume = 'Bogdan-Daniel';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Deac', 'Bogdan-Daniel', 2700);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Deac' AND prenume = 'Bogdan-Daniel';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;

--inserare partida:

declare
    jucator_alb int;
    jucator_negru int;
begin
    select id_jucator into jucator_alb
    from jucator
    where nume = 'Liren' AND prenume = 'Ding';

    select id_jucator into jucator_negru
    from jucator
    where nume = 'Vachier-Lagrave' AND prenume = 'Maxime';

    insert into Partida(id_partida, rezultat, id_turneu, id_jucator_alb, id_jucator_negru)
    values (sgv_partida.nextval, 0, sgv_turneu.currval, jucator_alb, jucator_negru);
end;
--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'd4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'd4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 1);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'd4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 1);
    end if;
end;
---------------------------------------------------------
declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'd5';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'd5');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 2);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'd5';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 2);
    end if;
end;
---------------------------------------------------------
declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'c4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'c4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 3);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'c4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 3);
    end if;
end;
---------------------------------------------------------
declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'dxc4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'dxc4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 4);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'dxc4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 4);
    end if;
end;
---------------------------------------------------------
declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'Nf3';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'Nf3');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 5);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'Nf3';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 5);
    end if;
end;

--inserare turneu:

insert into Turneu (id_turneu, nume, data_incepere, data_final, loc_desfasurare)
values (sgv_turneu.nextval, 'World Chess Championship 2023', to_date('2023-04-09', 'YYYY-MM-DD'), to_date('2023-05-30', 'YYYY-MM-DD'), 'Astana');

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Liren' AND prenume = 'Ding';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Liren', 'Ding', 2789);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Liren' AND prenume = 'Ding';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--------------------------------------------------------------
declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Nepomniachtchi' AND prenume = 'Ian';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Nepomniachtchi', 'Ian', 2794);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Nepomniachtchi' AND prenume = 'Ian';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;
--inserare partida:

declare
    jucator_alb int;
    jucator_negru int;
begin
    select id_jucator into jucator_alb
    from jucator
    where nume = 'Nepomniachtchi' AND prenume = 'Ian';

    select id_jucator into jucator_negru
    from jucator
    where nume = 'Liren' AND prenume = 'Ding';

    insert into Partida(id_partida, rezultat, id_turneu, id_jucator_alb, id_jucator_negru)
    values (sgv_partida.nextval, 0, sgv_turneu.currval, jucator_alb, jucator_negru);
end;
--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'e4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'e4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 1);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'e4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 1);
    end if;
end;
--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'e5';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'e5');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 2);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'e5';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 2);
    end if;
end;


--inserare turneu:

insert into Turneu (id_turneu, nume, data_incepere, data_final, loc_desfasurare)
values (sgv_turneu.nextval, 'World Chess Championship 2021', to_date('2021-11-24', 'YYYY-MM-DD'), to_date('2021-12-21', 'YYYY-MM-DD'), 'Dubai');


--inserare jucatori:

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Carlsen' AND prenume = 'Magnus';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Carlsen', 'Magnus', 2853);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Carlsen' AND prenume = 'Magnus';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Nepomniachtchi' AND prenume = 'Ian';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Nepomniachtchi', 'Ian', 2794);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Nepomniachtchi' AND prenume = 'Ian';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;

--inserare partida:

declare
    jucator_alb int;
    jucator_negru int;
begin
    select id_jucator into jucator_alb
    from jucator
    where nume = 'Nepomniachtchi' AND prenume = 'Ian';

    select id_jucator into jucator_negru
    from jucator
    where nume = 'Carlsen' AND prenume = 'Magnus';

    insert into Partida(id_partida, rezultat, id_turneu, id_jucator_alb, id_jucator_negru)
    values (sgv_partida.nextval, 0, sgv_turneu.currval, jucator_alb, jucator_negru);
end;

--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'e4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'e4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 1);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'e4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 1);
    end if;
end;
--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'e5';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'e5');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 2);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'e5';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 2);
    end if;
end;

--inserare turneu:

insert into Turneu (id_turneu, nume, data_incepere, data_final, loc_desfasurare)
values (sgv_turneu.nextval, 'World Chess Championship 2018', to_date('2018-11-09', 'YYYY-MM-DD'), to_date('2018-11-28', 'YYYY-MM-DD'), 'Londra');

--inserare jucatori:

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Carlsen' AND prenume = 'Magnus';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Carlsen', 'Magnus', 2853);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Carlsen' AND prenume = 'Magnus';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;

--inserare jucatori:

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Caruana' AND prenume = 'Fabiano';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Caruana', 'Fabiano', 2764);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Caruana' AND prenume = 'Fabiano';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;

--inserare partida:

declare
    jucator_alb int;
    jucator_negru int;
begin
    select id_jucator into jucator_alb
    from jucator
    where nume = 'Caruana' AND prenume = 'Fabiano';

    select id_jucator into jucator_negru
    from jucator
    where nume = 'Carlsen' AND prenume = 'Magnus';

    insert into Partida(id_partida, rezultat, id_turneu, id_jucator_alb, id_jucator_negru)
    values (sgv_partida.nextval, 0, sgv_turneu.currval, jucator_alb, jucator_negru);
end;


--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'e4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'e4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 1);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'e4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 1);
    end if;
end;
--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'c5';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'c5');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 2);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'c5';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 2);
    end if;
end;


insert into Turneu (id_turneu, nume, data_incepere, data_final, loc_desfasurare)
values (sgv_turneu.nextval, 'World Chess Championship 2016', to_date('2016-11-10', 'YYYY-MM-DD'), to_date('2016-11-30', 'YYYY-MM-DD'), 'New York');

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Carlsen' AND prenume = 'Magnus';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Carlsen', 'Magnus', 2853);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Carlsen' AND prenume = 'Magnus';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;

--inserare jucatori:

declare
  jucator_count integer;
  jucator_id integer;
begin
  select count(*) into jucator_count
  from Jucator
  where nume = 'Karjakin' AND prenume = 'Sergey';

  if jucator_count = 0 then
    insert into Jucator(id_jucator, nume, prenume, elo)
    values (sgv_jucator.nextval, 'Karjakin', 'Sergey', 2747);
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, sgv_jucator.currval);
  else
    select id_jucator into jucator_id
    from jucator
    where nume = 'Karjakin' AND prenume = 'Sergey';
    insert into Turneu_Jucator(id_turneu, id_jucator)
    values (sgv_turneu.currval, jucator_id);
  end if;
end;


--inserare partida:

declare
    jucator_alb int;
    jucator_negru int;
begin
    select id_jucator into jucator_alb
    from jucator
    where nume = 'Carlsen' AND prenume = 'Magnus';

    select id_jucator into jucator_negru
    from jucator
    where nume = 'Karjakin' AND prenume = 'Sergey';

    insert into Partida(id_partida, rezultat, id_turneu, id_jucator_alb, id_jucator_negru)
    values (sgv_partida.nextval, 0, sgv_turneu.currval, jucator_alb, jucator_negru);
end;


--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'd4';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'd4');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 1);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'd4';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 1);
    end if;
end;
--inserare mutari:

declare
    mutare_count int;
    mutare_id int;
begin
    select count(*) into mutare_count
    from mutare
    where valoare = 'Nf6';

    if mutare_count = 0 then
        insert into Mutare (id_mutare, valoare)
        values (sgv_mutare.nextval, 'Nf6');
        insert into Mutare_Partida (id_mutare, id_partida, numar)
        values (sgv_mutare.currval, sgv_partida.currval, 2);
    else
        select id_mutare into mutare_id
        from mutare
        where valoare = 'Nf6';
        insert into Mutare_partida (id_mutare, id_partida, numar)
        values (mutare_id, sgv_partida.currval, 2);
    end if;
end;
