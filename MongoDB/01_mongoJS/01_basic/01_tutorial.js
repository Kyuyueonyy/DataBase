//데이터베이스를users tutorial로 선정하세요.
use tutorial;

/*
* insertOne()
* - 하나의 문서를 컬렉션에 추가하는 명령어
* - 형식 : db.컬렉션명.insertOne({키 : 값, ... })
* insertMany()
* - 여러 문서를 컬렉션에 추가하는 명령어
* - 형식 : db.컬렉션명.insertOne([{키 : 값, ... }, {키 : 값, ... }, {키 : 값, ... }, ...)]*/

// 컬렉션에username이smith인 문서를저장하세요.
db.users.insertOne({username : "smith"});
// users 앞에서앞에서컬렉션에username이jones인문서를저장하세요.
db.users.insertOne({username : "jones"});

//여러 개의 도큐먼트를 한번에 추가
db.users.insertMany([{username: "bear"}, {username: "tiger"}]);

/* 출력 : find
* find / findOne
* - 컬렉션에서 문서를 조회하는 명령어
* 형식.컬렉션명.find({조건}, {프로젝션})*/

// 저장한모든문서를출력하세요
db.users.find();
db.users.find({},{_id : 0});
// 저장한문서중하나만출력하세요
db.users.findOne();

//users users 컬렉션에서username이"jones"인 문서를 찾아서출력하세요.
db.users.find({username:"jones"});

//컬렉션에서username이"jones" 또는 "smith"인 문서를 찾아서 출력하세요.
db.users.find({$or: [
        {username:"jones"},
        {username:"smith"}
    ]});
/* 수정 : update
* updateOne
* - 조건에 맞는 첫번째 문서를 수정
* - 형식 : db.컬렉션명.updateOne({조건}, {$set : {수정할 필드}})
*
* updateMany
* - 조건에 맞는 모든 문서를 수정
* - 형식 : db.컬렉션명.updateMany({조건}, {$set : {수정할 필드}})*/

//users 앞의컬렉션에서username이smith인문서에country 키가Canada 가 되도록수정하세요.
db.users.updateOne({username:"smith"}, {$set: {country : "Canada"}})

//문서가올바르게수정되었는지확인하세요.
db.users.find({country:"Canada"});

/* replaceOne
* - 조건에 맞는 문서를 새문서로 교체
* - 기존 문서의 모든 필드가 삭제되고, 새 필드로 대체됨(주의!)*/

//users users 컬렉션에서username이smith인문서를 {country: "Canada"}로 대체하고 확인하세요.
db.users.replaceOne({username:"smith"}, {country:"Canada"});
db.users.find();

//컬렉션에서country가Canada인문서를 {username: "smith", country: "Canada"}로대체하고확인하세요.
db.users.replaceOne({country:"Canada"}, {username:"smith", country:"Canada"});
db.users.find();

//users 컬렉션에서username이smith인문서에서country 키를 삭제하고, 삭제여부를확인하세요.
db.users.updateOne({username: "smith"}, {$unset: {country: ""}})

db.users.find();

//데이터베이스현재전체목록을출력하세요.
show dbs;
//사용중인데이터베이스의컬렉션목록을출력하세요.
show collections;
/*
* 상태 출력 : stats
*
* stats
* - 데이터베이스 또는 컬렉션의 상태 정보 확인
* - 문서 수, 크기, 저장 공간 등을 확인 가능하다.*/
//현재사용중인데이터베이스와users 컬렉션의상태를출력하세요
db.stats();
db.users.stats();

/* 삭제 : delete
* deleteOne / deleteMany
* - 조건에 맞는 첫번째 문서를 삭제
* - deleteMany를 사용할때는 조건 없으면 전체가 삭제되므로 주의 필요!
* - 형식 db.컬렉션명.deleteOne({조건})
* */

//users users users 컬렉션에서username이smith인문서를삭제하고, 삭제여부를확인하세요.
db.users.find(username:"smith");
db.users.deleteOne({username:"smith"}); //???
db.users.find(username:"smith");
//컬렉션의모든문서를삭제하고, 삭제여부를확인하세요.
db.users.deleteMany({});

db.users.find();

/* 컬렉션 삭제 : drop
*
* drop
* - 컬렉션 자체를 삭제
* - 형식 : db.컬렉션명.drop()
* */
//컬렉션을삭제하세요.
db.users.drop();