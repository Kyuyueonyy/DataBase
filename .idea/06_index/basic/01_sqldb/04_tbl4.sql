use sqldb;

create table tbl4 (
    -- mysql 의 innoDB의 경우 테이블에 pk가 없을 경우
    -- not null + unique 제약 조건이 있는 첫번째 컬럼을 클러스터형 인덱스로 삼는다.
    -- not null + nuique 제약조건의 칼럼이 없을 경우 내부적으로 숨겨진 시스템 행 id를 사용한다
    a int unique not null,
    b int unique, -- b유니크 키: uinque 인덱스 생성(중복 불가, null허용)
    c int unique, -- c유니크 키: uinque 인덱스 생성(중복 불가, null허용)
    d int
)