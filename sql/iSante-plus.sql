create table etl_execution (
  id bigint(20) not null auto_increment,
  date datetime not null,
  completed bit not null,
  primary key (id)
);
insert into etl_execution values (null, '1900-01-01', true);

create table etl_encounter_seqnum (
  encounter_id bigint(20) not null,
  seqnum bigint(20) not null,
  primary key (encounter_id)
);

create table etl_records_processed (
  id bigint(20) not null auto_increment,
  table_name varchar(120) not null,
  records_processed bigint(20) not null,
  primary key (id)
);
