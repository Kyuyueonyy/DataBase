create table tbl2
(
    a int primary key, -- a 기본키 : 자동으로 클러스터형(PK) 인덱스 생성(중복불가, null불가)
    b int unique,      -- b 유니크 키 : unique 인덱스 생성(중복불가, null 허용)
    c int unique,      -- c 유니크 키 : unique 인덱스 생성(중복불가, null 허용)
    d int
);

show index from tbl2;