require("dotenv").config();
var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: process.env.MYSQL_password,
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    console.log("ALL ITEMS AVALIABLE FOR SALE:")
    console.log("-----------------------------------")
    queryAllProudcts();
  });
//Displays all products for sale when opening the app
function queryAllProudcts() {
    connection.query("SELECT * FROM products", function(err, res) {
      for (var i = 0; i < res.length; i++) {
        console.log(res[i].item_id + " | " + res[i].product_name + " | " + "$" + res[i].price);
      }
      console.log("-----------------------------------");
      inqueryOfProduct()
    });
};


//Prompt for customer
function inqueryOfProduct() {
    connection.query("SELECT * FROM products", function(err, res) {
        if (err) throw err;

    inquirer
        .prompt([
            //For ID
            {
                name: "ID",
                type: "rawlist",
                message: "What is the ID of the product you would like to purchase?",
                choices: function() {
                    var choiceArray = [];
                    for (var i = 0; i < res.length; i++) {
                      choiceArray.push(res[i].product_name);
                    }
                    return choiceArray;
                  },      
            },
            //For Quantity
            {
                name: "Quantity",
                type: "input",
                message: "What is the QUANTITY of the product you would like to purchase?",
                validate: function(value) {
                    if (isNaN(value) === false) {
                      return true;
                    }
                    return false;
                  }
            }            
        ])           
    })
}
