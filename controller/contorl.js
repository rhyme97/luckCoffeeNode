const db=require('../config/db.js');
let opt={
	getGoodsInfo(req,res){
		new Promise((resolve,reject)=>{
			db.base('select * from goodsinfo',null,result=>{
				resolve(result)
			})
		}).then(data=>{
			db.base('select DISTINCT type from goodsinfo',null,result=>{
				res.send({data:data,types:result})
			})
		})
	},
	getShopCar(req,res){
		let {userId}=req.body;
		let sql=`select * from shopcar LEFT JOIN goodsinfo on shopcar.goodsId=goodsinfo.id where userId=?`
		db.base(sql,userId,result=>{
			res.json({result})
		})
	},
	updateShopGoods(req,res){
		let {count,shopId,userId}=req.body;
		let sql=`update shopcar set goodsNum=goodsNum+? where shopId=? and userId=?`
		db.base(sql,[count,shopId,userId],result=>{
			if (result.affectedRows==1) {
				res.json({tips:"success"})
			}else{
				res.json({tips:"fail"})
			}
		})
	},
	updateShopCheck(req,res){
		let {userId,shopId,checked}=req.body;
		let sql=`update shopcar set checked=? where shopId=? and userId=?`
		db.base(sql,[checked,shopId,userId],result=>{
			if (result.affectedRows==1) {
				res.json({tips:"success"})
			}else{
				res.json({tips:"fail"})
			}
		})
	},
	getOrder(req,res){
		let {userId}=req.body;
		let arr=[];
		new Promise((resolve,reject)=>{
			let sql=`select * from myorder where userId=?`
			db.base(sql,userId,result=>{
				resolve(result)
			})
		}).then(data=>{
			data.forEach(dataItem=>{
				dataItem.orderGoods=dataItem.orderGoods.split(',');
				dataItem.orderGoods.forEach((item,index)=>{
					dataItem.orderGoods[index]=item.split('*');
					arr.push(dataItem.orderGoods[index][0])
				})
			})
			return data
		}).then(data=>{
			 let str=arr.toString()
			let sql=`select * from goodsinfo where find_in_set(id,?)`
			db.base(sql,str,result=>{
				data.forEach(dataItem=>{
					dataItem.orderGoods.forEach(orderItem=>{
						result.forEach(rItem=>{
							if (orderItem[0]==rItem.id) {
								orderItem[0]=rItem
							}
						})
					})
				})
				// console.log(data)
				res.json({data})
			})
		})
	},
	selectGoodsInfo(req,res){
		let {id}=req.body;
		let sql='select * from goodsinfo where id=?'
		db.base(sql,id,result=>{
			// console.log(result)
			res.json({result})
		})
	},
	getDiscount(req,res){
		let {userId}=req.body;
		let sql='select * from discount where userId=?'
		db.base(sql,userId,result=>{
			res.json({result})
		})
	},
	addDiscount(req,res){
		let {userId,dType}=req.body;
		new Promise((resolve,reject)=>{
			let sql='select * from discount where userId=? and dType=?'
			db.base(sql,[userId,dType],result=>{
				console.log(result)
				if (result.length) {
					res.json({tips:'以拥有该优惠券'})
				}else{
					resolve();
				}
			})
		}).then(()=>{
			let sql;
			var dateTime=new Date();
			dateTime=dateTime.setDate(dateTime.getDate()+15);
            dateTime=new Date(dateTime);
			if (dType=='5.0折') {
				sql='insert into discount values(?,"新人指定免费劵",?,null,"5.0折")'
			}
			if (dType=='满100优惠') {
				sql='insert into discount values(?,"食品通用卷",?,20.00,"满100优惠")'
			}
			if (dType=='满三十减') {
				sql='insert into discount values(?,"饮品劵",?,5.00,"满三十减")'
			}
			db.base(sql,[userId,dateTime],result=>{
				console.log(result)
				res.json({tips:'优惠券领取成功'})
			})
		})
	},
	getStore(req,res){
		let sql='select * from store'
		db.base(sql,null,result=>{
			res.json({result})
		})
	},
	getAddress(req,res){
		let {userId}=req.body;
		let sql='select * from address where userId=?'
		db.base(sql,userId,result=>{
			res.json({result})
		})
	},
	addAddress(req,res){
		let info=req.body;
		let data = {};
	    for(let key in info){
	        data[key] = info[key];
	    }
	    new Promise((resolve,reject)=>{
	    	let sql = 'insert into address set ?';
			db.base(sql,data,(result)=>{
		    	if (result.affectedRows==1) {
		    		resolve({id:result.insertId})
		    	}else {
		    		res.json({tips:"fail"});
		    	}
		    })
	    })
	    .then(resData=>{
	    	if (data.defaultSite=='是') {
	    		let sql="update address set defaultSite='否' where siteId!=? and userId=?"
				db.base(sql,[resData.id,data.userId],result=>{
					console.log(result)
					res.json({tips:"success"})
				})
	    	}
	    })
	},
	editAddress(req,res){
		let {contact,sex,houseNum,label,site,siteId,tel,defaultSite,userId}=req.body;
	    new Promise((resolve,reject)=>{
	    	let sql = "update address set contact=?,sex=?,houseNum=?,label=?,site=?,tel=?,defaultSite=? where siteId=?";
			db.base(sql,[contact,sex,houseNum,label,site,tel,defaultSite,siteId],(result)=>{
		    	if (result.affectedRows==1) {
		    		resolve({id:siteId})
		    	}else {
		    		res.json({tips:"fail"});
		    	}
		    })
	    })
	    .then(resData=>{
	    	if (defaultSite=='是') {
	    		let sql="update address set defaultSite='否' where siteId!=? and userId=?"
				db.base(sql,[resData.id,userId],result=>{
					console.log(result)
					res.json({tips:"success"})
				})
	    	}else{
	    		res.json({tips:"success"})
	    	}
	    })
	},
	delAddress(req,res){
		let {siteId}=req.body;
		let sql='delete  from address where siteId=?'
		db.base(sql,siteId,result=>{
			if (result.affectedRows==1) {
		    		res.json({tips:"success"});
		    	}else {
		    		res.json({tips:"fail"});
		    	}
		})
	},
	delShopCar(req,res){
		let {userId,shopId}=req.body;
		let sql='delete  from shopcar where shopId=? and userId=?'
		db.base(sql,[shopId,userId],result=>{
			if (result.affectedRows==1) {
		    		res.json({tips:"success"});
		    	}else {
		    		res.json({tips:"fail"});
		    	}
		})
	},
	addShopData(req,resp){
		let {standard,goodsNum,goodsId,checked,userId} = req.body
		console.log(req.body)
		new Promise((resolve,reject)=>{
			db.base('update shopcar set goodsNum = goodsNum+? where standard = ? and goodsId = ? and userId = ? and checked = ?',[goodsNum,standard,goodsId,userId,checked],result=>{
				resolve(result.affectedRows)
			})
		}).then(res=>{
			console.log(res)
			if(res==1){
				db.base('select shopId from shopcar where userId = ? and goodsId = ? and checked =? and standard=?',[userId,goodsId,checked,standard],result=>{
					if(result[0].shopId){
						resp.send({
							code:200,
							shopId:result[0].shopId
						})
					}
				})
				return Promise.reject('打断')
			}else{
				return new Promise((resolve,reject)=>{
					db.base('insert into shopcar values(?,?,null,?,?,?)',[userId,goodsId,goodsNum,checked,standard],result=>{
						if(result.affectedRows){
							resolve(2)
						}
					})
				})
			}
		}).then(res=>{
			console.log(res+'1111')
			if(res==2){
				db.base('select MAX(shopId) as shopId from shopcar where userId = ?',[userId],result=>{
					if(result[0].shopId){
						resp.send({
							code:200,
							shopId:result[0].shopId
						})
					}
				})
			}else{
				resp.send({
					code:400
				})
			}
		})
	},
	addUser(req,resp){
		let{username,tel,sex} = req.body
		new Promise((resolve,reject)=>{
			db.base('select userId from user where tel = ?',[tel],result=>{
				if(result.length>0){
					resp.send({
						code:200,
						userId:result[0].userId
					})
				}else{
					resolve(1)
				}
			})
		}).then(res=>{
			return new Promise((resolve,reject)=>{
				db.base('insert into user values(null,?,?,?)',[username,tel,sex],result=>{
					resolve(result.affectedRows)
				})
			})	
		}).then(res=>{
			if(res==1){
				new Promise((resolve,reject)=>{
					db.base('select userId from user where tel = ?',[tel],result=>{
						if(result[0].userId){
							resolve(result[0].userId)
						}
					})
				}).then(res=>{
					console.log(res+'userId')
					var dateTime=new Date();
			        dateTime=dateTime.setDate(dateTime.getDate()+15);
                    dateTime=new Date(dateTime);
					db.base('insert into discount values(?,"新人指定免费劵",?,null,"5.0折"),(?,"饮品劵",?,5.00,"满三十减"),(?,"食品通用卷",?,20.00,"满100优惠")',[res,dateTime,res,dateTime,res,dateTime],result=>{
						// console.log(result)
						if(result.affectedRows==3){
							resp.send({
								code:200,
								userId:res
							})
						}else{
							resp.send({
								code:400
							})
						}
					})
				})
			}else{
				resp.send({
					code:400
				})
			}
		})
	},
	addOrder(req,res){
		let info= req.body;
		let data = {};
	    for(let key in info){
	        data[key] = info[key];
	    }
		new Promise((resolve,reject)=>{
			let sql = 'insert into myorder set ?';
			db.base(sql,data,(result)=>{
				console.log(result)
		    	if (result.affectedRows==1) {
		    		resolve()
		    	}else {
		    		res.json({tips:"fail"});
		    	}
		    })
		})
		.then(()=>{
			let price=data.discountPrice;
			if (price=='50%') {
				db.base('delete from discount where dPrice is null and userId=?',data.userId,(result)=>{
					console.log(result)
			    	res.json({tips:"success"});
			    	
			    })
			}else {
				db.base('delete from discount where dPrice=? and userId=?',[data.discountPrice,data.userId],(result)=>{
					console.log(result)
			    	res.json({tips:"success"});
			    	
			    })
			}	
		})
	}
}
module.exports=opt;

