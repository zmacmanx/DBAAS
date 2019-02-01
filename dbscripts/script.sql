create table script (
  id bigint not null auto_increment,
  ver bigint not null default 0,
  timestamp datetime not null default current_timestamp,
  name varchar(128) not null,
  description varchar(255),
  repo bigint not null,
  repo_ref binary(16) not null,
  primary key (id)
) engine = innodb;

create table script_history (
  script_id bigint not null,
  ver bigint not null,
  timestamp datetime not null,
  name varchar(128) not null,
  description varchar(255),
  repo bigint not null,
  repo_ref binary(16) not null,
  primary key (script_id, ver)
) engine = innodb;

create table repo (
  id bigint not null auto_increment,
  timestamp datetime not null,
  repo_type_id bigint not null,
  name varchar(128) not null,
  description varchar(255),
  details text not null,
  primary key (id)
) engine = innodb;

create table repo_history (
  repo_id bigint not null,
  timestamp datetime not null,
  repo_type_id bigint not null,
  name varchar(128) not null,
  description varchar(255),
  details text not null,
  primary key (repo_id, timestamp)
) engine = innodb;

create table repo_type (
  id bigint not null auto_increment,
  name varchar(128) not null,
  description varchar(255),
  details text,
  primary key (id)
) engine = innodb;

create table script_type (
  id bigint not null auto_increment,
  name varchar(32) not null,
  details text,
  primary key (id)
) engine = innodb;





