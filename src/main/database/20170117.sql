drop table if exists p_menu;

drop table if exists p_resource;

drop table if exists p_resource_role;

drop table if exists p_role;

drop table if exists s_code_list;

drop table if exists s_model;

drop table if exists s_object;

drop table if exists s_object_users;

drop table if exists s_users;

drop table if exists s_verison;

drop table if exists t_development;

drop table if exists t_modification;

drop table if exists t_testing;

/*==============================================================*/
/* Table: p_menu                                                */
/*==============================================================*/
create table p_menu;

alter table p_menu comment '�˵���';

/*==============================================================*/
/* Table: p_resource                                            */
/*==============================================================*/
create table p_resource;

alter table p_resource comment '��Դ��';

/*==============================================================*/
/* Table: p_resource_role                                       */
/*==============================================================*/
create table p_resource_role;

alter table p_resource_role comment '��Դ��ɫ��';

/*==============================================================*/
/* Table: p_role                                                */
/*==============================================================*/
create table p_role;

alter table p_role comment '��ɫ��';

/*==============================================================*/
/* Table: s_code_list                                           */
/*==============================================================*/
create table s_code_list
(
   uuid                 varchar(32) not null comment '����',
   code_type            varchar(32) comment '��������',
   code_name            varchar(32) comment '��������',
   code_key             varchar(32) comment '����',
   code_value           varchar(100) comment 'ֵ',
   isenable             varchar(2) comment '�Ƿ�����',
   primary key (uuid)
);

alter table s_code_list comment '���';

/*==============================================================*/
/* Table: s_model                                               */
/*==============================================================*/
create table s_model
(
   uuid                 varchar(32) not null comment '����',
   model_code           varchar(32) comment 'ģ�����',
   model_name           varchar(100) comment 'ģ������',
   object_code          varchar(32) comment '��Ŀ����',
   isenable             varchar(2) comment '�Ƿ�����',
   primary key (uuid)
);

alter table s_model comment 'ģ��';

/*==============================================================*/
/* Table: s_object                                              */
/*==============================================================*/
create table s_object
(
   uuid                 varchar(32) not null comment '����',
   object_code          varchar(32) comment '��Ŀ���',
   object_name          varchar(100) comment '��Ŀ����',
   isenable             varchar(2) comment '�Ƿ�����',
   create_time          date comment '����ʱ��',
   primary key (uuid)
);

alter table s_object comment '��Ŀ';

/*==============================================================*/
/* Table: s_object_users                                        */
/*==============================================================*/
create table s_object_users
(
   uuid                 varchar(32) not null comment '����',
   object_code          varchar(32) comment '��Ŀ���',
   username             varchar(50) comment '��¼�˺�',
   role_code            varchar(2) comment '��ɫ���',
   create_time          date comment '����ʱ��',
   primary key (uuid)
);

alter table s_object_users comment '��Ŀ��Ա��ϵ��';

/*==============================================================*/
/* Table: s_users                                               */
/*==============================================================*/
create table s_users
(
   uuid                 varchar(32) not null comment '����',
   username             varchar(50) comment '��¼�˺�',
   password             varchar(50) comment '����',
   nickname             varchar(50) comment '�ǳ�',
   isenable             varchar(2) comment '����״̬',
   create_time          date comment '����ʱ��',
   primary key (uuid)
);

alter table s_users comment '�û�';

/*==============================================================*/
/* Table: s_verison                                             */
/*==============================================================*/
create table s_verison
(
   uuid                 varchar(32) not null comment '����',
   version_code         varchar(32) comment '�汾��',
   publish_date         date comment '����ʱ��',
   primary key (uuid)
);

alter table s_verison comment '�汾';

/*==============================================================*/
/* Table: t_development                                         */
/*==============================================================*/
create table t_development
(
   uuid                 varchar(32) not null comment '����',
   development_code     varchar(32) comment '����������',
   title                varchar(300) comment '����',
   description          varchar(4000) comment '������������',
   develop_user         varchar(100) comment '������Ա',
   test_user            varchar(100) comment '������Ա',
   create_user          varchar(100) comment '������Ա',
   create_date          date comment '����ʱ��',
   finish_time          date comment 'Ԥ�ƿ������ʱ��',
   version_code         varchar(32) comment '�汾��',
   state                varchar(2) comment '״̬',
   model_code           varchar(32) comment 'ģ�����',
   "read"               varchar(2) comment '�Ƿ��Ѳ鿴',
   primary key (uuid)
);

alter table t_development comment '��������';

/*==============================================================*/
/* Table: t_modification                                        */
/*==============================================================*/
create table t_modification
(
   uuid                 varchar(32) not null comment '����',
   modification_code    varchar(32) comment '�޸ı���',
   title                varchar(300) comment '����',
   description          varchar(4000) comment '����',
   modification_user    varchar(100) comment '�޸���Ա',
   create_user          varchar(100) comment '������Ա',
   create_time          date comment '����ʱ��',
   testing_code         varchar(32) comment '�����������',
   finish_time          date comment 'Ԥ�����ʱ��',
   version_code         varchar(32) comment '�汾��',
   state                varchar(2) comment '״̬',
   model_code           varchar(32) comment 'ģ�����',
   "read"               varchar(2) comment '�Ƿ��Ѳ鿴',
   primary key (uuid)
);

alter table t_modification comment '�޸�����';

/*==============================================================*/
/* Table: t_testing                                             */
/*==============================================================*/
create table t_testing
(
   uuid                 varchar(32) not null comment '����',
   test_code            varchar(32) comment '���Ա���',
   title                varchar(300) comment '����',
   description          varchar(4000) comment '����',
   test_user            varchar(100) comment '������Ա',
   create_user          varchar(100) comment '������Ա',
   create_time          date comment '����ʱ��',
   development_code     varchar(32) comment '�����������',
   state                varchar(2) comment '״̬',
   model_code           varchar(32) comment 'ģ�����',
   "read"               varchar(2) comment '�Ƿ��Ѳ鿴',
   primary key (uuid)
);

alter table t_testing comment '��������';
