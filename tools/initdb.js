const fs = require('fs');
const path = require('path');
const {mysql:config} = require('../config');

console.log('开始初始化数据库')

// 数据库文件
const INIT_DB_FILE = path.join(__dirname,'./testdata.sql');

const DB = require('knex')({
  client:'mysql',
  connection:{
    host: config.host,
    port: config.port,
    user: config.user,
    password: config.pass,
    database: config.db,
    charset: config.char,
    multipleStatements: true
  }
})
console.log(`准备读取SQL文件: ${INIT_DB_FILE}`);

const content = fs.readFileSync(INIT_DB_FILE,'utf8')

console.log('开始执行sql文件')

DB.raw(content).then(res=>{
  console.log('数据库初始化成功')
  process.exit(0)
},err=>{
  throw new Error(err)
})
