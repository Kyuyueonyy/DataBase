/*
DML (Data Manipulation Language)
- 데이터 조작 언어, 테이블에 값을 삽입, 수정, 삭제하는 SQL
*/

/*
INSERT
- 새로운 행을 추가하는 구문
- NULL 허용 가능한 컬럼이나 auto increment가 있는 컬럼 제외하고
  insert 하고 싶은 데이터 컬럼을 지정해서 insert 가능

- primary key : 기본키, PK, 유일성과 최소성을 만족, 해당 행을 식별할 때 사용되는 값
*/

insert into employees values (1, 20250514, '규연', '김', 'M', 20250514);

/*컬럼을 명시하면 insert시 데이터의 순서 변경이 가능*/
insert into employees(emp_no, birth_date, last_name, first_name, gender, hire_date)
values (2, 20250514, '옥', '가연', 'F', 20250514);

-- 여러 컬럼을 한번에 insert
insert into
    employees
values
    (3, 20250514, '이', '승리', 'F', 20250514),
    (4, 20250514, '정', '다현', 'F', 20250514);

insert into
    employees
values
    (5, 19990501, '구', '석현', 'F', 20250514);

-- UPDATE
-- 테이블에 기록된 컬럼의 값을 수정하는 구문

select
    *
from
    employees
where last_name = '승리';

update employees -- employees 테이블 업데이트
set  -- 이렇게 바꿀것
    last_name = '이',
    first_name = '승리'
where -- 이 조건에 해당하는 데이터만
    last_name = '승리';

update employees -- employees 테이블 업데이트
set  -- 이렇게 바꿀것
     last_name = '정',
     first_name = '다현'
where -- 이 조건에 해당하는 데이터만
      last_name = '다현';

update employees -- employees 테이블 업데이트
set  -- 이렇게 바꿀것
     last_name = '구',
     first_name = '석현'
where -- 이 조건에 해당하는 데이터만
      last_name = '석현';

-- DELETE
-- 테이블의 행을 삭제하는 구문
delete
from employees
where last_name='이';

-- REPLACE
-- insert할 때 primary key 혹은 unique key가 충돌될 경우 해당 행에 덮어씌우기
replace into
    employees
values
    (4, 20250514, '다현', '정', 'F', 20030812);
