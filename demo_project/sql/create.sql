create table appointment_person
(
    id           int auto_increments
        primary key,
    name         varchar(5)                 null,
    phone_number varchar(11) charset latin1 not null,
    ticket_name  varchar(30) charset latin1 not null,
    ticket_time  datetime(6)                not null,
    ticket_money int                        not null
)
    comment '存储预约的用户信息表' charset = utf8;

create table appointment_tickets
(
    id       int auto_increment
        primary key,
    name     varchar(30) charset utf8 null,
    num      varchar(10)              not null,
    time     datetime(6)              not null,
    brief    longtext                 not null,
    seats    int                      not null,
    CPU      varchar(10)              not null,
    Disk     varchar(10)              not null,
    Graphics varchar(10)              not null,
    Memory   varchar(10)              not null,
    money    int                      not null
)
    comment '存储网吧现有待预约电脑信息';

create table auth_group
(
    id   int auto_increment
        primary key,
    name varchar(150) not null,
    constraint name
        unique (name)
);

create table auth_user
(
    id           int auto_increment
        primary key,
    password     varchar(128) not null,
    last_login   datetime(6)  null,
    is_superuser tinyint(1)   not null,
    username     varchar(150) not null,
    first_name   varchar(30)  not null,
    last_name    varchar(150) not null,
    email        varchar(254) not null,
    is_staff     tinyint(1)   not null,
    is_active    tinyint(1)   not null,
    date_joined  datetime(6)  not null,
    constraint username
        unique (username)
);

create table auth_user_groups
(
    id       int auto_increment
        primary key,
    user_id  int not null,
    group_id int not null,
    constraint auth_user_groups_user_id_group_id_94350c0c_uniq
        unique (user_id, group_id),
    constraint auth_user_groups_group_id_97559544_fk_auth_group_id
        foreign key (group_id) references auth_group (id),
    constraint auth_user_groups_user_id_6a12ed8b_fk_auth_user_id
        foreign key (user_id) references auth_user (id)
);

create table commentboard_comment_info
(
    id       int auto_increment
        primary key,
    nickname varchar(30)  null,
    info     varchar(300) null,
    date     date         not null
)
    comment '存储留言板信息' charset = utf8;

create table consume_consume_info
(
    id     int auto_increment
        primary key,
    name   varchar(20)              not null,
    detail varchar(50) charset utf8 null,
    money  int                      not null
)
    comment '存储用户消费信息';

create table django_content_type
(
    id        int auto_increment
        primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

create table auth_permission
(
    id              int auto_increment
        primary key,
    name            varchar(255) not null,
    content_type_id int          not null,
    codename        varchar(100) not null,
    constraint auth_permission_content_type_id_codename_01ab375a_uniq
        unique (content_type_id, codename),
    constraint auth_permission_content_type_id_2f476e4b_fk_django_co
        foreign key (content_type_id) references django_content_type (id)
);

create table auth_group_permissions
(
    id            int auto_increment
        primary key,
    group_id      int not null,
    permission_id int not null,
    constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
        unique (group_id, permission_id),
    constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
        foreign key (permission_id) references auth_permission (id),
    constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
        foreign key (group_id) references auth_group (id)
);

create table auth_user_user_permissions
(
    id            int auto_increment
        primary key,
    user_id       int not null,
    permission_id int not null,
    constraint auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
        unique (user_id, permission_id),
    constraint auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm
        foreign key (permission_id) references auth_permission (id),
    constraint auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id
        foreign key (user_id) references auth_user (id)
);

create table django_admin_log
(
    id              int auto_increment
        primary key,
    action_time     datetime(6)       not null,
    object_id       longtext          null,
    object_repr     varchar(200)      not null,
    action_flag     smallint unsigned not null,
    change_message  longtext          not null,
    content_type_id int               null,
    user_id         int               not null,
    constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
        foreign key (content_type_id) references django_content_type (id),
    constraint django_admin_log_user_id_c564eba6_fk_auth_user_id
        foreign key (user_id) references auth_user (id)
);

create table django_migrations
(
    id      int auto_increment
        primary key,
    app     varchar(255) not null,
    name    varchar(255) not null,
    applied datetime(6)  not null
);

create table django_session
(
    session_key  varchar(40) not null
        primary key,
    session_data longtext    not null,
    expire_date  datetime(6) not null
);

create index django_session_expire_date_a5c62663
    on django_session (expire_date);

create table notice_notice_info
(
    id   int auto_increment
        primary key,
    time date         not null,
    info varchar(500) null
)
    comment '存储网吧公告' charset = utf8;

create table personal_info_personal_info
(
    id       int auto_increment
        primary key,
    nickname varchar(30) charset latin1 not null,
    age      int                        not null,
    sex      varchar(10) charset latin1 not null,
    money    int                        null
)
    comment '存储个人资料' charset = utf8;

create table products_orderinfo
(
    id       int auto_increment
        primary key,
    name     varchar(100) charset utf8 null,
    price    double                    null,
    count    int                       not null,
    extra    varchar(300) charset utf8 null,
    phone    varchar(15)               not null,
    order_id varchar(100)              not null
)
    comment '存储购物车数据信息';

create table products_product
(
    id          int auto_increment
        primary key,
    name        varchar(100)  null,
    price       double        null,
    stock       int           not null,
    image_url   varchar(2083) null,
    goods_num   int           not null,
    total_money varchar(100)  not null
)
    comment '存储网吧全部商品信息' charset = utf8;

create table products_ordergoods
(
    id             int auto_increment
        primary key,
    goods_num      int not null,
    goods_info_id  int not null,
    goods_order_id int not null,
    constraint products_ordergoods_goods_info_id_4fa6c6e9_fk_products_
        foreign key (goods_info_id) references products_product (id),
    constraint products_ordergoods_goods_order_id_ba9bc81d_fk_products_
        foreign key (goods_order_id) references products_orderinfo (id)
)
    comment '存储购物车商品信息';

