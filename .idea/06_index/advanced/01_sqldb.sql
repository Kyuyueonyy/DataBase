-- usertbl의 내용 확인
select * from usertbl;

-- usertbl의 인덱스 목록확인
show index from usertbl;

-- usertbl의 데이터 크기와 인덱스의 크기 확인
show table status like 'usertbl';

-- usertbl의addr 컬럼에 대해idx_usertbl_addr이름으로 인덱스를 만들고,인덱스목록을확인하세요.
create index idx_usertbl_addr on usertbl(addr);

show index from usertbl;

-- usertbl의상태를출력하여인덱스의내용이만들어졌는지확인하고,내용이없다면실제적용되도록한후, 인덱스의크기를확인하세요.
show table status like 'usertbl';

-- birthYear 컬럼에 대해 idx_usertbl_birthYear 이름의 인덱스를 만드세요.
-- 에러가 난다면 그 이유를 설명하세요.
create index idx_usertbl_birthYear on usertbl(birthYear);

-- name 컬럼에대해idx_usertbl_name 이름의 인덱스를 만드세요
create index idx_usertbl_name on usertbl(name);

-- 생성된 인덱스의 목록을 확인하세요.
show index from usertbl;

-- name 컬럼에 대한 보조 인덱스를 삭제하세요.
drop index idx_usertbl_name on usertbl;

-- name과birthYear 컬럼 조합으로 idx_usertbl_name_birthYear 이름의 인덱스를 생성하세요.
create index idx_usertbl_name_birthYear on usertbl(name, birthYear);

-- 인덱스의 목록을 확인하세요.
show index from usertbl;

-- usertbl 에서 앞에서 만든 인덱스를 삭제하세요.
drop index idx_usertbl_name_birthYear on usertbl;
