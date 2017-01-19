drop table if exists t_code_list;

/*==============================================================*/
/* Table: t_code_list                                           */
/*==============================================================*/
create table t_code_list
(
   uuid                 varchar(32) not null comment '����',
   code_type            varchar(32) comment '��������',
   code_name            varchar(32) comment '��������',
   code_key             varchar(32) comment '����',
   code_value           varchar(100) comment 'ֵ',
   isenable             varchar(2) comment '�Ƿ�����',
   primary key (uuid)
);

alter table t_code_list comment '��Ŀ���';
