const mysql=require('mysql');
exports.base=(sql,data,callback)=>{
	const c=mysql.createConnection({
		host: '118.31.10.49',
		port:'3306',
		user:'root',
		password:'123456',
		database:'luckcoffee'
	});
	c.connect();
	c.query(sql,data,(error,result,fields)=>{
		if(error) throw error;
		callback(result);
	});
	c.end();
}
