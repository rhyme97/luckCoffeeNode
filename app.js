const express=require('express');

const logger=require('morgan');
const path=require('path');
const bodyParser=require('body-parser');
const router=require('./router/router.js')
let app=express();
app.use(logger('dev'));
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());
app.use(express.static(`${__dirname}/src`))
app.use(router);
app.listen(3000,()=>{
	console.log('running......');
})
