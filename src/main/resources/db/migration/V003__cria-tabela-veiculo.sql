CREATE TABLE veiculo(
                        id bigint not null generated always as identity,
                        proprietario_id bigint not null,
                        marca varchar(20) not null,
                        modelo varchar(20) not null,
                        placa varchar(7) not null,
                        status varchar(20) not null,
                        data_cadastro timestamp not null,
                        data_apreensao timestamp,

                        primary key (id)
);

alter table veiculo add constraint fk_veiculo_proprietario
    foreign key (proprietario_id) references proprietario (id);

alter table veiculo add constraint uk_veiculo unique (placa);