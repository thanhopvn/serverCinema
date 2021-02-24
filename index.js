var express = require('express');
var database = require("./database");
var app = express();

app.get("/listUser", function(req,res){
    database.getAllUser(function(resultQuery){
        res.json(resultQuery)
    });
});

app.get("/insert", function(req,res){
    var username = req.query.username;
    var password = req.query.password;
    var address = req.query.address;
    var phone = req.query.phone;
    var email = req.query.email;
    var birthday = req.query.birthday;
    database.insertData(username,password,address,phone,email,birthday,function(resultQuery){
        res.json(resultQuery);
    });
});

app.get("/del", function(req,res){
    var username = req.query.username;
    database.deleteByID(username,function(resultQuery){
        res.json(resultQuery);
    });
});

app.get("/checkLogin", function(req,res){
    var username = req.query.username;
    var password = req.query.password;
    database.checkLogin(username,password,function(resultQuery){
        res.json(resultQuery);
    });
});

//phim

app.get("/listPhim", function(req,res){
    database.getAllPhim(function(resultQuery){
        res.json(resultQuery)
    });
});

//tintuc

app.get("/tinTuc", function(req,res){
    database.getAllTinTuc(function(resultQuery){
        res.json(resultQuery)
    });
});

//uudaiphim

app.get("/uuDaiPhim", function(req,res){
    database.getAllUuDaiPhim(function(resultQuery){
        res.json(resultQuery)
    });
});

//uudaidichvu

app.get("/uuDaiDichVu", function(req,res){
    database.getAllUuDaiDichVu(function(resultQuery){
        res.json(resultQuery)
    });
});

app.listen(3000);