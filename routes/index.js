const router = require('koa-router')()
let query = require('../common/connect');
var request = require('request');



router.get('/login',async (ctx, next)=> {
    let rows = await query('select * from users where openid =\''+ctx.query.openid+'\'').then((res)=>{
      console.log(res)
      ctx.body = {
        code:1,
        retObj:{
          userInfo:res[0]
        }
      }
    },(error)=>{

      ctx.body = {
        code:-1
      }
    });
})
// 注册
router.post('/register',async(ctx,next)=>{
  await query('INSERT INTO users (openid,username) VALUES (\''+ctx.request.body.openid+'\',\''+ctx.request.body.username+'\')').then((res)=>{
    ctx.body = {
      code:1,
      retObj:'注册成功'
    }
  },(err)=>{
    ctx.body = {
      code:-1,
      retObj:err
    }
  })
})
// 获取店铺列表
router.get('/storeList',async (ctx, next)=> {
    await query('select * from store').then((res)=>{
      ctx.body = {
        code:1,
        retObj:res
      }
    },(err)=>{
      ctx.body = {
        code:-1,
        retObj:err
      }
    })
})

// 条件查询店铺
router.get('/storeListBy',async(ctx,next)=>{
  let sort = '';
  if(ctx.query.condition == 'sold'){
    sort = 'DESC'
  } else {
    sort = 'ASC'
  }

  await query('select * from store ORDER BY '+ctx.query.condition+' '+sort).then((res)=>{
    ctx.body = {
      code:1,
      retObj:res
    }
    console.log(res);
  },(err)=>{
    ctx.body = {
      code:-1,
      retObj:err
    }
  })
})
// 获取店铺商品
router.get('/productList',async(ctx,next)=>{
  await query('select * from product where sid =\''+ctx.query.sid+'\'').then((res)=>{
    ctx.body = {
      code:1,
      retObj:res
    }


  },(err)=>{
    ctx.body = {
      code:-1,
      retObj:err
    }
  })
})
// 获取地址列表
router.get('/addressList',async(ctx,next)=>{
  await query('select * from address where uid =\''+ctx.query.uid+'\'').then((res)=>{
    ctx.body = {
      code:1,
      retObj:res
    }
  },(err)=>{
    ctx.body={
      code:-1,
      retObj:'获取数据错误'+ e
    }
  })
})
// 添加地址
router.post('/addAddr',async(ctx,next)=>{
  await query('INSERT INTO address VALUES (UUID(),\''+ctx.request.body.addr+'\',\''+ctx.request.body.name+'\',\''+ctx.request.body.phone+'\',\''+ctx.request.body.gender+'\',\''+ctx.request.body.uid+'\')').then((res)=>{
    console.log(ctx.request.body);
    ctx.body = {
      code:1,
      retObj:'添加地址成功'
    }
  },(err)=>{
    ctx.body = {
      code:-1,
      retObj:err
    }
  })
})
// 修改地址
router.post('/updateAddr',async(ctx,next)=>{
  await query('UPDATE address SET addr = \''+ctx.request.body.addr+'\',name=\''+ctx.request.body.name+'\',phone=\''+ctx.request.body.phone+'\',gender=\''+ctx.request.body.gender+'\' WHERE aid =\''+ctx.request.body.id+'\'').then((res)=>{
    console.log(ctx.request.body);
    ctx.body = {
      code:1,
      retObj:'修改地址成功'
    }
  },(err)=>{
    ctx.body = {
      code:-1,
      retObj:err
    }
  })
})
// 提交订单
router.post('/addOrder',async(ctx,next)=>{
  let param = ctx.request.body;
  let sid = ctx.query.sid,
      sname = ctx.query.sname,
      slogo = ctx.query.slogo,
      uid = ctx.query.uid,
      uname = ctx.query.uname,
      phone = ctx.query.phone,
      address = ctx.query.address,
      amount = ctx.query.price;
      listing = ctx.query.listing;
  await query('INSERT INTO orderList VALUES (UUID(),\''+sid+'\',\''+sname+'\',\''+slogo+'\',\''+uid+'\',\''+uname+'\',\''+phone+'\',\''+address+'\',\''+amount+'\')').then((res)=>{

    // listing.forEach((item,index)=>{
    //   await query('INSERT INTO orderprod VALUES(UUID(),\''+item.info.id+'\',\''+item.pname+'\',\''+item.info.num+'\',\''+item.info.price+'\',\''+item._price+'\')')
    // })
    ctx.body = {
      code:1,
      retObj:'提交订单成功'
    }
  },(err)=>{
    ctx.body = {
      code:-1,
      retObj:err
    }
  })
})
module.exports = router
