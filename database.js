var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'dbmanager'
});

var connect = function(){
    connection.connect(function (err) {
        if(!err){
            console.log("Database is connected!!!");
        }else{
            console.log("Database connect error")
        }
    })
}

var closeDB = function(){
    connection.end(function(err){
        if(!err) console.log("closed db");
    });
}

exports.getAllUser = function(callbackQuery){
    connect();
    connection.query("select * from users", function(err, results, fields){
        if(!err){
            callbackQuery(results);
        }else{
            console.log(err);
        }
    })
}

exports.insertData = function(username, password, address, phone, email, birthday, callbackInsert){
    connect();
    connection.query("insert into users (username, password, address, phone, email, birthday)" + 
    "values ('"+username+"','"+password+"', '"+address+"', '"+phone+"', '"+email+"', '"+birthday+"')", function(err, results, fields){
        if(!err){
            callbackInsert(results);
        }else{
            console.log(err);
        }
    });
}

exports.deleteByID = function(username, callBackDel){
   connect();
   connection.query("delete from users where username = '"+username+"'", function(err, results, fields){
       if(!err){
           callBackDel(results);
       }else{
           console.log(err);
       }
   }) 
}

// exports.checkLogin = function(username, password, callBackLogin){
//     var rs = false;
//     connect();
//     connection.query("select * from users where username='"+username+"'", function(err, results, fields){
//         if(!err){
//             if(results.length>0){
//                 if(results[0].password == password){
//                     rs = true;
//                 //    callBackLogin(results); 
//                 }else{
//                     rs = false;
//                     // callBackLogin('not found');
//                 }
//             }else{
//                 rs = false;
//                 // callBackLogin('not found');
//             }
//             callBackLogin(rs); 
//         }else{
//             console.log(err);
//         }
//     });
// }

exports.checkLogin = function(username, password, callBackLogin){
    connect();
    connection.query("select * from users where username='"+username+"'", function(err, results, fields){
        if(!err){
            if(results.length>0){
                if(results[0].password == password){
                   callBackLogin(results); 
                }else{
                    callBackLogin('not found');
                }
            }else{
                callBackLogin('not found');
            }
        }else{
            console.log(err);
        }
    });
}

//phim

exports.getAllPhim = function(callbackQuery){
    connect();
    connection.query("select * from listphim", function(err, results, fields){
        if(!err){
            callbackQuery(results);
        }else{
            console.log(err);
        }
    })
}

//tintuc

exports.getAllTinTuc = function(callbackQuery){
    connect();
    connection.query("select * from tintuc", function(err, results, fields){
        if(!err){
            callbackQuery(results);
        }else{
            console.log(err);
        }
    })
}

//uudaiphim

exports.getAllUuDaiPhim = function(callbackQuery){
    connect();
    connection.query("select * from uudai where category='phim'", function(err, results, fields){
        if(!err){
            callbackQuery(results);
        }else{
            console.log(err);
        }
    })
}

//uudaidichvu

exports.getAllUuDaiDichVu = function(callbackQuery){
    connect();
    connection.query("select * from uudai where category='dichvu'", function(err, results, fields){
        if(!err){
            callbackQuery(results);
        }else{
            console.log(err);
        }
    })
}