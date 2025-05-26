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




