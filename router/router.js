const express=require('express');
const router=express.Router();
const ctl=require('../controller/contorl.js');
const path=require('path');


//http://rhymin.cn:3000/
router.get('/getGoodsInfo',ctl.getGoodsInfo)//获取商品列表
router.post('/selectGoodsInfo',ctl.selectGoodsInfo)//查询商品 {id}

router.post('/getShopCar',ctl.getShopCar)//获取购物车列表  {userId}
router.post('/updateShopGoods',ctl.updateShopGoods)//修改购物车商品的数量  {count,shopId,userId}
router.post('/updateShopCheck',ctl.updateShopCheck)//修改购物商品选中状态checked(2选中1不选中){userId,shopId,checked}
router.post('/delShopCar',ctl.delShopCar)//删除购物车商品{userId,shopId}
router.post('/addShopCar',ctl.addShopData)//添加购物车返还一个shopId
router.post('/addOrder',ctl.addOrder)//增加订单（删除优惠券）

router.post('/getOrder',ctl.getOrder)//获取订单列表  {userId}


router.post('/getDiscount',ctl.getDiscount)//获取优惠券列表  {userId}
router.post('/addDiscount',ctl.addDiscount)//添加优惠券{userId code}

router.get('/getStore',ctl.getStore)//获取门店列表

router.post('/addUserData',ctl.addUser)//{username,tel,sex} //增加用户（默认增加三条优惠券）返还userId

router.post('/getAddress',ctl.getAddress)//获取收货地址列表{userId}
router.post('/addAddress',ctl.addAddress)//添加收货地址
router.post('/editAddress',ctl.editAddress)//修改收货地址
router.post('/delAddress',ctl.delAddress)//删除收货地址

module.exports=router;

