//numbers 컬렉션에20,000개의문서를생성하세요. ○ 문서의형태: { num: i }
for(let i = 0; i<20000; i++) {
    db.numbers.insertOne({num: i})
};
//numbers 컬렉션의문서개수를출력하세요.
db.numbers.countDocuments();

//numbers 컬렉션에서num의값이20이상25이하인문서를출력하세요.
db.numbers.find(
    {num : {$gte : 20, $lte : 25}}
);
//위쿼리의실행통계를출력하세요.
db.numbers.find({ num: { $gte: 20, $lte: 25 } }).explain("executionStats");

//numbers 컬렉션의 num키에 대해서 인덱스를 생성하세요.
db.numbers.createIndex({ num: 1 });

//위에서 생성한 인덱스 정보를 출력하세요.
db.numbers.getIndexes();

// 앞에서작성한범위연산쿼리의실행통계를출력하고, 인덱스가없을때와비교해보세요.
db.numbers.find({ num: { $gte: 20, $lte: 25 } }).explain("executionStats");
