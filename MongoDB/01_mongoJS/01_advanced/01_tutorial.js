//users 위의컬렉션에{username: “jones"} 문서를 추가하세요.
db.users.insertOne({username : "jones"});

//위 문서 수정
db.users.updateOne({username:"jones"}, {$set: { "favorites.movies" : ["Casablaca", "Rocky"]}});

//users 컬렉션의"Casablanca" 영화를 좋아하는 사용자들을출력하세요.
db.users.find({
    "favorites.movies" : "Casablaca"
})

//컬렉션의"Casablanca" 영화를 좋아하는 사용자들에대해서좋아하는영화목록에"The M altese Falcon"을 중복 없이 추가하세요. 단, 해당 항목이 없는 경우는 무시하고, 여러 사람이일치한다면모두업데이트하세요.
db.users.updateMany(
    {"favorites.movies" : "Casablaca"},
    {$addToSet: {"favorites.movies" : "The Maltese Falcon"}}
);

db.users.find();