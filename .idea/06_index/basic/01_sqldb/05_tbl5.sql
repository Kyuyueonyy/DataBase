use sqldb;

create table tbl5(
                     a int unique not null,
                     b int unique, -- b유니크 키: uinque 인덱스 생성(중복 불가, null허용)
                     c int unique, -- c유니크 키: uinque 인덱스 생성(중복 불가, null허용)
                     d int primary key -- > primary 클러스터형 인덱스 설정
);

-- tbl5가 가지고 있는 인덱스 조회
show index from tbl5;