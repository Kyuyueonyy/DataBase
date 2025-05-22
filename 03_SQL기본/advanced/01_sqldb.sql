select userID as '사용자 아이디', sum(amount) as '총 구매 개수'
from buytbl
group by userID;

select userID as '사용자 아이디', sum(price) as '총 구매액'
from buytbl
group by userID;

select avg(amount) as '평균 구매 개수'
from buytbl;

select userID, avg(amount) as '평균 구매 개수'
from buytbl
group by userID;




