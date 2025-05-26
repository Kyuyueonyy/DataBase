/*
다음형태의문서20,000건을추가하세요.
○ database: test ○ collection: product
/*
다음형태의문서20,000건을추가하세요.
○ database: test ○ collection: product
○ 문서필드
 num: 순번(0부터시작)
 name: '스마트폰' + 순번
*/

for(let i = 0; i<20000; i++) {
    db.product.insertOne({
        num: i,
        name: '스마트폰 ' + i
    })
};

//product 컬렉션의 전체 문서수를 출력하세요.
db.product.countDocuments();

//product 컬렉션의문서를num의내림차순으로정렬하여출력하세요.
db.product.find().sort({num:-1});
//product 컬렉션의문서를num의내림차순으로정렬하여상위10건을출력하세요.
db.product.find().sort({num:-1}).limit(10);
//컬렉션의문서를num의내림차순으로정렬한상태에서다음을처리하세요.
// ○ 한페이지당10건씩출력
db.product.find().sort({num:-1}).skip(0).limit(10);
// ○ 6페이지에해당하는문서를출력하세요.
db.product.find().sort({num:-1}).skip(50).limit(10);

//product 컬렉션에서num이15미만이거나19995 초과인것을출력하세요.
db.product.find({
    $or: [
        {num: {$lt : 15}},
        {num: {$gt : 19995}}
    ]
});
//product 컬렉션에서name이'스마트폰10', '스마트폰100', '스마트폰 1000' 중에 하나이면출력하세요.
db.product.find({
    name: { $in:['스마트폰 10', '스마트폰 100', '스마트폰 1000']}
});

//product 컬렉션에서num이5보다작은문서를출력하는데, name만출력하세요. (_id 출력하면 안됨)
db.product.find(
    {num : {$lt : 5}},
    {_id : 0, name: 1}
)




