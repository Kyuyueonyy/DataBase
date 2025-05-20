use sqldb;

create table tbl1
(
    a int primary key,
    b int,
    c int
);

/*
Table: 인덱스를 가진 테이블 이름 (tbl1)
Non_unique: 0이면 고유 인덱스 (중복 불가), 1이면 중복 허용 인덱스 ( 기본 인덱스 )
Key_name: 인덱스 이름 (PRIMARY는 기본키 인덱스)
Seq_in_index: 인덱스 내에서 컬럼의 순서 (복합키일 경우 순서를 나타냄)
Column_name: 인덱스가 걸린 컬럼 (a)
Index_type: 보통은 BTREE, 인덱스를 저장하는 자료구조

-- 참고
Comment	시스템용 자동 코멘트 (보통 비어 있음)
Index_comment	인덱스를 만들 때 사용자가 쓴 주석
Visible	인덱스를 옵티마이저에서 숨길 수 있는지 여부
Expression	표현식 기반 인덱스일 경우의 식
*/

-- tbl1이 가지고 있는 인덱스 조회
show index from tbl1;

create table tbl2
(
    a int primary key, -- a 기본키 : 자동으로 클러스터형(PK) 인덱스 생성(중복불가, null불가)
    b int unique,      -- b 유니크 키 : unique 인덱스 생성(중복불가, null 허용)
    c int unique,      -- c 유니크 키 : unique 인덱스 생성(중복불가, null 허용)
    d int
);

show index from tbl2;


